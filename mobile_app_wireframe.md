# AI 기반 Boating Life Platform 모바일 앱 Wireframe 설계 (Product-Ready)

## 1) PRD 핵심 분석

### 서비스 목적
- 바다 중심 여가/관광/스포츠/문화/소비를 하나의 앱에서 연결하는 **Coastal Lifestyle 올인원 경험** 제공.
- 단발성 사용이 아니라 탐색 → 예약 → 이용(항해) → 기록/재방문까지 이어지는 선순환을 제품 핵심 가치로 정의.
- 항해 로그 + 공공 해양 데이터 + 행동 로그를 결합해 개인화 추천과 운영 효율을 동시에 향상.

### 핵심 사용자
- **입문자 레저 사용자**: 무엇을 해야 할지 빠르게 추천 받고 예약까지 완료하고 싶음.
- **숙련 사용자**: 정확한 항해 기록과 리포트/비교 분석을 원함.
- **여행자(외국인 포함)**: 지도에서 즉시 탐색하고 다국어로 예약하길 원함.
- **파트너 운영사**: 실시간 좌석/스케줄 운영 자동화 필요.

### 핵심 기능 (MVP 중심)
- 다국어 온보딩(한/영), 로그인/회원가입.
- 지도 기반 탐색(추천/항해 포인트/활동 장소 + 필터/클러스터링).
- AI 맞춤 추천(상황형/취향형/트렌드형).
- 항해 자동 기록(GPS 기반 경로/거리/속도/시간/출발·도착).
- 유람선 이벤트 실시간 예약 + 결제 + 확정 알림.

### 사용자 흐름 핵심
- 앱 실행 → 언어 선택 → 인증 → 홈 추천 확인 → 지도 탐색 → 이벤트 예약/결제 → 항해 시작/종료 자동 기록 → 로그 조회/공유.

### 기능 요구사항 해석 (UX 설계 관점)
- FR-1~3: **진입 장벽 최소화 + 언어 전환 즉시성**이 핵심.
- FR-4~6: 항해 기록은 “자동성/신뢰성/가시성” 3요소 필요.
- FR-7~9: 지도는 단순 표시가 아니라 추천 결정의 중심 인터랙션.
- FR-10~13: 예약 플로우는 좌석 재고 정합성 + 결제 안정성을 사용자에게 명확히 피드백해야 함.

---

## 2) UX 분석

### 서비스 핵심 구조
- 지도/위치 기반 탐색을 중심으로 활동/포인트 발견을 유도.
- 탐색 결과를 상세 정보와 액션(저장/공유/예약)으로 연결하는 구조.

### 주요 UX 패턴
- **Map-first UI**: 화면 전환보다 지도 위 오브젝트 탐색을 우선.
- **Bottom Sheet 중심 상세 정보**: 지도 컨텍스트를 유지한 채 상세 정보 확인.
- **짧은 액션 체인**: 탐색 → 상세 → 예약/저장의 클릭 수 최소화.
- **카테고리 필터/태그**로 의사결정 속도 향상.

### 네비게이션 구조
- 하단 탭 기반으로 주요 목적(탐색/기록/예약/프로필)을 분리.
- 핵심 행동(예약/기록 시작)은 탭 내에서 1~2단계로 도달 가능하도록 설계.

### 지도 중심 인터페이스 적용 포인트
- 지도 오브젝트 유형을 색/아이콘으로 명확히 구분(추천/이벤트/항해 포인트).
- 클러스터 해제 → 핀 선택 → 바텀시트 확장 → 예약 진입의 계층 구조.
- 지도 화면에서 필터, 현재 위치, 재탐색(이 영역에서 검색) 제공.

---

## 3) 사용자 흐름 (User Flow)

### 기본 플로우
1. **앱 실행 (Splash)**
   - 사용자 행동: 앱 로딩 대기, 자동 로그인 여부 확인.
2. **언어 선택**
   - 사용자 행동: 한국어/영어 선택, 즉시 미리보기 문구 확인.
3. **로그인 / 회원가입**
   - 사용자 행동: 이메일/소셜 로그인, 약관/위치 권한 동의.
4. **홈 화면 진입**
   - 사용자 행동: 오늘의 추천 카드, 날씨/파고 요약 확인.
5. **지도 탐색**
   - 사용자 행동: 카테고리 필터 적용, 핀 선택, 상세 바텀시트 열기.
6. **항해 기록 시작**
   - 사용자 행동: “항해 시작” 탭, 트래킹 상태/시간/속도 확인, 종료 후 저장.
7. **이벤트 예약**
   - 사용자 행동: 이벤트 상세 확인, 좌석/시간 선택, 결제, 확정 화면 확인.
8. **마이페이지 관리**
   - 사용자 행동: 프로필 수정, 언어 변경, 결제수단/알림/예약 내역 관리.

### 예외/보조 플로우
- 위치 권한 거부 시: 제한 모드 안내 + 설정 이동 CTA.
- 네트워크 불안정 시: 오프라인 캐시 지도/기록 임시 저장 + 재동기화 배지.
- 좌석 마감 시: 대체 시간 추천/유사 이벤트 제안.

---

## 4) 앱 정보 구조 (Information Architecture)

## Bottom Navigation (5 Tabs)
1. **Home**
   - 역할: 개인화 추천, 오늘의 해양 컨디션, 빠른 진입 허브.
2. **Map**
   - 역할: 지도 기반 탐색의 메인 허브(필터/바텀시트/예약 진입).
3. **Sailing Log**
   - 역할: 항해 시작/종료, 로그 목록/상세 통계, 리포트.
4. **Events**
   - 역할: 유람선/체험 이벤트 탐색, 상세, 예약, 결제.
5. **My Page**
   - 역할: 계정/설정/다국어/결제수단/알림/예약·로그 관리.

### IA 트리 (요약)
- Onboarding
  - Splash
  - Language Selection
  - Login/Signup
  - Permissions (Location/Notification)
- Main Tabs
  - Home
    - Recommendation Detail
    - Weather/Sea Condition Detail
  - Map
    - POI Detail Bottom Sheet
    - Full Detail Page
    - Reservation Entry
  - Sailing Log
    - Live Tracking
    - Log History
    - Log Detail (Route/Stats)
  - Events
    - Event List
    - Event Detail
    - Reservation
    - Payment
    - Reservation Complete (QR/Voucher)
  - My Page
    - Profile
    - Reservation History
    - Payment Methods
    - Language Settings
    - Notification Settings
    - Privacy & Consent

---

## 5) 화면 목록 정의 (PRD 기반)

### 온보딩/인증
1. Splash Screen
2. Language Selection
3. Login
4. Signup
5. Permission Consent (Location/Notification)

### 메인
6. Home
7. Recommendation Detail
8. Map Explore
9. Map Place Detail (Bottom Sheet + Full)
10. Sailing Tracker (Live)
11. Sailing Log List
12. Sailing Log Detail
13. Events List
14. Event Detail
15. Reservation (Seat/Time)
16. Payment
17. Reservation Complete (QR/Voucher)

### 마이/설정
18. My Page
19. Profile Edit
20. Reservation History
21. Payment Methods
22. Settings
23. Language Settings
24. Notification Settings
25. Privacy & Consent History

### 확장(P1 대응)
26. Equipment Reservation List/Detail
27. Commerce Product List/Detail/Checkout
28. Community Feed/Write Detail

---

## 6) 화면별 와이어프레임 설계

> 표기 규칙: 상단(Header), 본문(Body), 고정액션(Fixed CTA), 하단탭(Bottom Nav)

### 6.1 Splash Screen
- **Purpose**: 앱 브랜딩 + 세션 확인.
- **Key UI Components**: 로고, 로딩 인디케이터, 버전 정보.
- **User Interaction**: 자동 이동(언어 선택/홈).
- **Wireframe Layout**
  - Header: 없음
  - Body: [로고 중앙]
  - Footer: [Loading...]

### 6.2 Language Selection
- **Purpose**: 최초 언어 설정.
- **Key UI Components**: Korean/English 카드, Continue 버튼.
- **User Interaction**: 언어 탭 → 미리보기 텍스트 확인 → Continue.
- **Wireframe Layout**
  - Header: “Choose language”
  - Body: [한국어 카드] [English Card]
  - Fixed CTA: [Continue]

### 6.3 Login / Signup
- **Purpose**: 빠른 인증 진입.
- **Key UI Components**: 이메일 입력, 비밀번호, 소셜 로그인, 약관 체크.
- **User Interaction**: 로그인/회원가입 전환, 인증 완료 후 홈 이동.
- **Wireframe Layout**
  - Header: [로고 + 언어변경]
  - Body: [Email] [Password] [Login]
  - Body2: [Google] [Apple] [Signup Link]

### 6.4 Home
- **Purpose**: 오늘의 추천과 핵심 액션 허브.
- **Key UI Components**: 날씨/파고 요약, AI 추천 카드, 빠른 액션(지도/기록 시작/이벤트).
- **User Interaction**: 카드 탭으로 상세 이동, 퀵 액션 탭으로 주요 기능 진입.
- **Wireframe Layout**
  - Header: [현재 지역] [알림]
  - Body Top: [Weather & Sea Card]
  - Body Mid: [AI Recommendation Carousel]
  - Body Bottom: [Quick Actions 3개]
  - Bottom Nav: Home/Map/Log/Events/My

### 6.5 Map Explore
- **Purpose**: 지도 중심 탐색 및 예약 진입.
- **Key UI Components**: 지도, 카테고리 필터 칩, 현재 위치 버튼, 검색, 핀/클러스터.
- **User Interaction**: 지도 이동 → 필터 적용 → 핀 선택 → 바텀시트 열기.
- **Wireframe Layout**
  - Header Overlay: [Search] [Filter Chips]
  - Body: [Full Map Area + Pins]
  - Floating: [My Location] [Re-search in this area]
  - Bottom Sheet(collapsed): [선택 POI 요약]
  - Bottom Nav

### 6.6 Map Place Detail (Bottom Sheet / Full)
- **Purpose**: 지도 컨텍스트 유지한 상세 정보 제공.
- **Key UI Components**: 장소명, 거리, 예상 소요시간, 리뷰, 예약 가능 상태, CTA.
- **User Interaction**: 바텀시트 스와이프 확장, 찜/공유/예약.
- **Wireframe Layout**
  - Top: [핸들]
  - Content: [Title][Distance][Tags][Description]
  - Actions: [Save] [Share] [Reserve]

### 6.7 Sailing Tracker (Live)
- **Purpose**: 항해 세션 실시간 기록.
- **Key UI Components**: 실시간 지도 경로, 속도/거리/시간 패널, 시작/일시정지/종료 버튼.
- **User Interaction**: 시작→주행→종료→저장.
- **Wireframe Layout**
  - Header: [Tracking Status]
  - Body: [Map with Polyline]
  - Stats Panel: [Time][Distance][Avg/Max Speed]
  - Fixed CTA: [Pause] [End & Save]

### 6.8 Sailing Log List
- **Purpose**: 누적 항해 기록 조회.
- **Key UI Components**: 월간 요약, 로그 카드 리스트, 필터(기간/거리).
- **User Interaction**: 로그 탭으로 상세 리포트 진입.
- **Wireframe Layout**
  - Header: [Sailing Logs]
  - Body Top: [Monthly Summary Charts]
  - Body: [Log Cards List]
  - Bottom Nav

### 6.9 Sailing Log Detail
- **Purpose**: 항해 리포트 및 공유.
- **Key UI Components**: 경로 맵, 속도 그래프, 핵심 지표, 메모/사진, 공유 버튼.
- **User Interaction**: 리포트 스크롤 확인, 커뮤니티 공유.
- **Wireframe Layout**
  - Header: [Date/Route]
  - Body: [Route Map]
  - Body2: [Stats Grid] [Speed Graph]
  - Footer CTA: [Share]

### 6.10 Events List
- **Purpose**: 예약 가능한 이벤트 탐색.
- **Key UI Components**: 날짜 필터, 카테고리, 이벤트 카드(좌석/가격/시간).
- **User Interaction**: 필터링 후 카드 탭.
- **Wireframe Layout**
  - Header: [Events]
  - Body Top: [Date Picker][Category Chips]
  - Body: [Event Cards]
  - Bottom Nav

### 6.11 Event Detail
- **Purpose**: 예약 의사결정 정보 제공.
- **Key UI Components**: 이미지, 프로그램 설명, 스케줄, 좌석 상태, 위치 지도, 후기.
- **User Interaction**: 시간/좌석 확인 후 예약 진입.
- **Wireframe Layout**
  - Header: [Back][Favorite]
  - Body: [Hero Image]
  - Body2: [Description][Schedule][Seat Status]
  - Fixed CTA: [Reserve Now]

### 6.12 Reservation (Seat/Time)
- **Purpose**: 좌석·시간 선택.
- **Key UI Components**: 시간 슬롯, 좌석 맵/수량 선택, 가격 요약.
- **User Interaction**: 옵션 선택 → 결제 화면 이동.
- **Wireframe Layout**
  - Header: [Reservation]
  - Body: [Time Slots]
  - Body2: [Seat Selector]
  - Footer: [Total Price]
  - Fixed CTA: [Proceed to Payment]

### 6.13 Payment
- **Purpose**: 결제 완료.
- **Key UI Components**: 결제수단, 주문 요약, 약관 동의, 결제 버튼.
- **User Interaction**: 결제수단 선택/등록 → 결제 실행.
- **Wireframe Layout**
  - Header: [Payment]
  - Body: [Order Summary]
  - Body2: [Payment Method]
  - Fixed CTA: [Pay]

### 6.14 Reservation Complete (QR/Voucher)
- **Purpose**: 예약 확정 정보 전달.
- **Key UI Components**: 성공 메시지, QR/바우처, 일정 추가, 길찾기.
- **User Interaction**: 캘린더 저장, 공유, 홈 복귀.
- **Wireframe Layout**
  - Header: [Completed]
  - Body: [Success Icon][QR Code]
  - Body2: [Booking Info]
  - Actions: [Add to Calendar][Share]

### 6.15 My Page
- **Purpose**: 개인 정보/활동 관리 허브.
- **Key UI Components**: 프로필 요약, 내 예약/내 로그/결제수단/설정 메뉴.
- **User Interaction**: 각 관리 화면으로 진입.
- **Wireframe Layout**
  - Header: [My Page]
  - Body Top: [Profile Card]
  - Body: [Menu List]
  - Bottom Nav

### 6.16 Settings / Language
- **Purpose**: 앱 환경 설정(다국어 즉시 변경 포함).
- **Key UI Components**: 언어 토글, 알림 토글, 개인정보/동의 이력, 로그아웃.
- **User Interaction**: 언어 선택 즉시 UI 반영.
- **Wireframe Layout**
  - Header: [Settings]
  - Body: [Language][Notifications][Privacy]
  - Footer: [Logout]

---

## 7) UX 설계 기준 반영 체크

- **지도 중심 UX**: Map 탭 + 바텀시트 + 지도 내 재탐색 구조로 구현.
- **직관적 모바일 인터페이스**: 하단 탭 5개 + 카드/칩 기반 인지 용이성.
- **최소 클릭 구조**: 홈 퀵 액션, 이벤트 상세의 고정 CTA, 지도→예약 단축.
- **예약 흐름 단순화**: 상세→좌석/시간→결제→완료 4단계 표준화.
- **데이터 시각화**: 항해 로그 상세의 경로/속도 그래프/월간 요약 제공.

## 8) 구현 우선순위 제안

- **MVP (P0)**: 온보딩/인증, 홈 추천, 지도 탐색, 항해 트래커/로그, 이벤트 예약/결제, 마이페이지/언어 설정.
- **Phase 2 (P1)**: 장비 예약, 커머스, 커뮤니티 공유, 추천 사유 노출 강화.
- **Phase 3 (P2)**: 위험도 예측, 군집 코스 자동 생성, 다국어 추가.
