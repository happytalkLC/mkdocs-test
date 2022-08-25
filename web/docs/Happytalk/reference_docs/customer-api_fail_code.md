---
hide:
  - footer
---

#해피톡 - 고객 정보 수정 API Fail Code
##토큰 값 누락 및 유효하지 않은 토큰 값
```json
{
  "result": "fail",
  "code": -501,
  "message": "token"
}
```

##고객 ID 혹은 고객 UUID 누락 
```json
{
  "result": "fail",
  "code": -501,
  "message": "uuid"
}
```

##권한 없음
```json
{
  "result": "fail",
  "code": -502,
  "message": "unAuthorized"
}
```

##UUID에 해당하는 고객을 찾을 수 없음
```json
{
  "result": "fail",
  "code": -503,
  "message": "users"
}
```

##일치하는 방정보가 없음
```json
{
  "result": "fail",
  "code": -503,
  "message": "room"
}
```

##최대 조회기간 초과
```json
{
  "result": "fail",
  "code": -504,
  "message": "overDate"
}
```