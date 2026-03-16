# AI 기반 보팅 라이프 플랫폼 전체 시스템 설계도

## 1) 설계 목표
- **모바일 중심 올인원 경험**: 탐색(지도) → 추천 → 기록(항해 로그) → 예약/결제 → 사후 관리까지 단일 앱에서 연결.
- **데이터 기반 개인화**: 사용자 행동/항해 로그/위치/공공데이터를 통합해 추천 정확도 개선.
- **운영 확장성 확보**: 이벤트/커머스/커뮤니티를 모듈형 서비스로 확장 가능한 백엔드 구조.
- **안전성과 신뢰성**: 위치·결제·개인정보를 분리 저장하고 최소 권한 원칙 및 감사 로깅 적용.

## 2) 시스템 컨텍스트
플랫폼은 Flutter 앱(iOS/Android)을 프론트 채널로 사용하고, API Gateway를 통해 인증/사용자/추천/지도/로그/예약/결제/알림 서비스를 호출합니다. 데이터는 운영 DB, 로그/분석 스토리지, 캐시, 데이터 레이크로 분리하며, 배치/스트리밍 파이프라인이 추천 모델 피드백 루프를 구성합니다.

## 3) 논리 아키텍처 레이어

### A. Client Layer (Flutter Mobile)
- 온보딩/인증, 홈 추천, 지도 탐색, 항해 트래커, 이벤트 예약, 마이페이지.
- 오프라인 대비: 최근 지도 타일/POI/로그 임시 저장 + 재연결 시 동기화.
- 디바이스 센서: GPS/시간/속도 추정값 수집.

### B. Edge & Access Layer
- **API Gateway/BFF**: 라우팅, 인증 토큰 검증, 레이트리밋, 버전 관리.
- **Auth Service**: OAuth/Social Login, JWT 발급·갱신, 권한 스코프 관리.

### C. Domain Services Layer
- **User/Profile Service**: 계정/선호도/언어/알림 설정.
- **Recommendation Service**: 하이브리드 추천(규칙 + 행동 기반 모델).
- **Map & POI Service**: POI 검색/필터/지도 핀 클러스터/상세 정보.
- **Sailing Log Service**: 세션 시작·종료, 경로 저장, 요약 통계.
- **Events & Reservation Service**: 상품/좌석/시간대 재고 관리 및 예약 상태 전이.
- **Payment Service**: PG 연동, 결제 승인/취소, 영수증/정산 이벤트 발행.
- **Notification Service**: 푸시/인앱 알림, 예약 리마인더, 이상 상태 알림.

### D. Data & Intelligence Layer
- **OLTP DB**: 사용자/예약/결제/POI 메타데이터.
- **Time-series/Geo Store**: 항해 경로, 위치 샘플, 속도 시계열.
- **Cache (Redis)**: 인기 POI, 추천 결과, 세션 캐싱.
- **Data Lake/Warehouse**: 행동로그/집계 지표/모델 학습 데이터.
- **ML Pipeline**: 특징량 생성, 모델 학습/배포, 온라인 추론 API.

### E. External Integrations
- 지도 API(Google Maps/Mapbox), 해양 공공데이터(기상/해양환경), 결제 게이트웨이(PG), 푸시(FCM/APNs).

## 4) 핵심 데이터 흐름
1. **추천 흐름**: 앱 홈 진입 → API Gateway → Recommendation Service → 캐시 조회/실시간 피처 결합 → 추천 카드 반환.
2. **지도 탐색 흐름**: 지도 이동/필터 적용 → Map Service → POI + 실시간 가용성(이벤트/예약) 결합 반환.
3. **항해 기록 흐름**: 트래킹 시작 → 위치 샘플 수집 → Log Service 저장 → 세션 종료 시 통계 계산.
4. **예약 결제 흐름**: 이벤트 선택 → 좌석 잠금(홀드) → PG 결제 승인 → 예약 확정/알림 발송.
5. **학습 피드백 루프**: 클릭/예약/완료/리텐션 이벤트 적재 → 배치 학습 → 모델 재배포.

## 5) 비기능 요구사항(NFR) 설계
- **성능**: 홈 추천 API P95 400ms 이하, 지도 검색 P95 500ms 이하.
- **가용성**: 핵심 API 99.9% 목표, 장애 시 캐시/읽기전용 모드 전환.
- **보안**: 개인정보/결제정보 암호화(전송·저장), 토큰 만료/재발급 정책, 감사 로그.
- **확장성**: 서비스별 오토스케일, 읽기 부하 캐시 오프로딩, 비동기 이벤트 기반 연동.
- **관측성**: 중앙 로그, 분산 트레이싱, SLO 대시보드, 알람 룰.

## 6) MVP → 확장 로드맵 아키텍처
- **MVP**: Auth, Home Recommendation(룰+기초모델), Map/POI, Sailing Log, Event Reservation, Payment, Notification.
- **P1**: 커뮤니티 피드, 장비 예약, 커머스, 고도화 추천(컨텍스트/시계열 기반).
- **P2**: 안전 가이드 AI 코파일럿, 지역 사업자 운영 콘솔, 동적 가격/수요 예측.

## 7) 산출물
- 시스템 설계 문서: `docs/system_architecture_design.md`
- 시스템 설계 이미지: `docs/system_architecture.svg`

