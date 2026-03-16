# AI 기반 Product-Ready 보팅 라이프 플랫폼

> **데이터 기반 해양 라이프스타일 올인원 서비스**  
> 항해 데이터, 위치 정보, 공공데이터, AI 추천을 결합해 사용자의 보팅 라이프를 더 스마트하고 안전하게 만드는 모바일 플랫폼입니다.

---

## 1) 프로젝트 개요
**AI-Powered Boating Life Platform**은 Flutter 기반 모바일 앱을 중심으로, 탐색·추천·예약·항해 기록을 하나의 흐름으로 제공하는 Product-Ready 서비스입니다.

### 해결하려는 문제
- 항해 기록이 앱/서비스별로 분산되어 장기 활용이 어려움
- 추천 정보가 사용자 맥락(위치, 선호, 이력)을 충분히 반영하지 못함
- 지도 탐색, 이벤트 예약, 기록 관리가 분리되어 사용자 여정이 단절됨

### 핵심 가치
- **AI 개인화 추천**: 사용자 성향·행동 기반 액티비티/코스 추천
- **지도 중심 탐색**: 주변 POI/추천 코스/시설을 즉시 탐색
- **자동 항해 로그 관리**: 경로·시간·주요 지표를 구조화해 저장
- **예약/결제 통합 경험**: 이벤트 조회부터 결제, 알림까지 앱 내 처리

---

## 2) 핵심 기능
- AI 기반 해양 라이프스타일 추천
- 항해 기록 자동 저장 및 히스토리 조회
- 지도 기반 POI/코스 탐색
- 유람선/해양 이벤트 실시간 예약
- 다국어 지원(한국어/영어)

---

## 3) 기술 스택
| 구분 | 기술 |
|---|---|
| Mobile | Flutter (Dart) |
| Backend | API Gateway + Domain Services |
| Data | GPS 데이터, 해양 공공데이터, 사용자 행동 로그 |
| Map | Google Maps API 또는 Mapbox |
| AI | 규칙 + 행동 기반 하이브리드 추천 |

---

## 4) 문서 구성
| 문서 | 설명 |
|---|---|
| `PRD.md` | 제품 요구사항 정의(비전, KPI, 사용자 여정, 기능 범위) |
| `mobile_app_wireframe.md` | 모바일 화면 흐름 및 와이어프레임 |
| `docs/system_architecture_design.md` | 전체 시스템 아키텍처 설계서 |
| `docs/system_architecture.mmd` | Mermaid 아키텍처 원본 |
| `docs/system_architecture.svg` | 한국어 시스템 아키텍처 다이어그램 |

---

## 5) 프로젝트 구조
```bash
project-root
 ┣ lib
 ┃ ┣ models
 ┃ ┣ screens
 ┃ ┣ services
 ┃ ┗ widgets
 ┣ assets
 ┣ docs
 ┣ test
 ┣ PRD.md
 ┣ mobile_app_wireframe.md
 ┗ README.md
```

---

## 6) 로드맵
- [ ] 추천 정확도 고도화(컨텍스트·시계열 반영)
- [ ] 커뮤니티 및 사용자 생성 콘텐츠 기능
- [ ] 사업자 운영 콘솔(재고/예약/정산)
- [ ] 해양 안전 정보 연계 및 가이드 강화

---

## 7) 플랫폼 지원
- Android
- iOS

Flutter 단일 코드베이스를 통해 멀티 플랫폼 운영을 목표로 합니다.
