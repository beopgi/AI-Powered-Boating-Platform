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
lib/
├── main.dart                  # 앱 실행 시작점 (Entry Point)
├── app.dart                   # MaterialApp 설정 (라우팅, 테마 적용)
│
├── core/                      # 앱 전역에서 사용하는 설정/공통 로직
│   └── theme/
│       └── app_theme.dart     # 앱 전체 테마 (색상, 스타일)
│
├── widgets/                   # 공통 UI 컴포넌트
│   └── main_bottom_nav.dart   # 하단 네비게이션 바
│
└── screens/                   # 기능(페이지) 단위 구성
    ├── main_shell/
    │   └── main_shell.dart    # 전체 탭 구조 관리 (페이지 전환 담당)
    │
    ├── home/
    │   ├── home_page.dart         # 홈 화면 UI (추천, 메인 화면)
    │   └── home_controller.dart   # 홈 화면 데이터/로직 처리
    │
    ├── map/
    │   ├── map_page.dart          # 지도 탐색 UI
    │   └── map_controller.dart    # 지도 관련 로직 (위치, 마커 등)
    │
    ├── booking/
    │   ├── booking_page.dart      # 예약 화면 UI
    │   └── booking_controller.dart# 예약 관련 로직 (일정, 결제 등)
    │
    ├── log/
    │   ├── log_page.dart          # 항해 기록 UI
    │   └── log_controller.dart    # 기록 데이터 처리
    │
    └── my/
        ├── my_page.dart           # 마이페이지 UI (설정, 사용자 정보)
        └── my_controller.dart     # 사용자 정보 및 설정 로직
```
## 6) Documentation & Collaboration

프로젝트 협업과 운영을 위한 주요 문서 링크입니다.

- **Team Members**  
  → [팀원 소개](https://github.com/beopgi/Pado-pado)

- **Meeting Notes**  
  → [회의록](https://github.com/beopgi/Pado-pado/tree/main/%ED%9A%8C%EC%9D%98%EB%A1%9D)
  
---
---

## 7) 플랫폼 지원
- Android
- iOS

Flutter 단일 코드베이스를 통해 멀티 플랫폼 운영을 목표로 합니다.
