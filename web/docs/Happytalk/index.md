---
hide:
  - footer
---

# 해피톡 API 소개 및 사용법
---

## Introduce
!!! question ""
    해피톡 API는 

## API HOST
| Division | HOST URL                           |
|----------|------------------------------------|
| 개발      | https://patch-biz-api.happytalk.io |
| 운영      | https://biz-api.happytalk.io       |

## Auth Key Description
!!! info "인증키 발급 방법"
    Biz API는 인증 방식으로 Header에 `HT-Client-Id, HT-Client-Secret` 값을 통하여 인증을 하고 있습니다.  
    Header에 들어가는 인증 키 (`HT-Client-Id, HT-Client-Secret`)는 고객센터를 통해 `외부 메신저 API`에서  
    `key (HT-Client-Id)`와 `Token (HT-Client-Secret)`를 발급 받으실 수 있습니다.

## API List
 - 상담
     - [상담방 생성](/Biz-API/counsel/create_counseling/)
     - [상담 종료](/Biz-API/counsel/end_counseling/)
     - [메시지 발신](/Biz-API/counsel/send_message/)
     - [이전 상담사 연결 가능 여부](/Biz-API/counsel/check_previous_counselor/)


## Change History
!!! tip "History"
    ??? quote "2022.08.20"
        ```text
        최초 작성
        ```