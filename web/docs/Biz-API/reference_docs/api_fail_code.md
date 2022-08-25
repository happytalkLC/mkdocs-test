---
hide:
  - footer
---

#Biz API Fail Code
##권한 , 페이지없음
```json
{
  "code": -400,
  "message": "Forbidden"
}
```

##Authorization 잘못 되었거나 만료된 정보 , 인증실패
```json
{
  "code": -500,
  "message": "Authorization"
}
```

##전송 실패
```json
{
  "code": -504,
  "message": "Contract"
}
```

##내부 시스템 오류
```json
{
  "code": -600,
  "message": "System"
}
```

##이미 종료된 상담방
```json
{
  "code": -700,
  "message": "EndRoom"
}
```

##상담방 생성 실패
```json
{
  "code": -701,
  "message": "Room"
}
```

##상담방 없음
```json
{
  "code": -702,
  "message": "NotRoom"
}
```

##상담방 UUID가 다름
```json
{
  "code": -703,
  "message": "UUID"
}
```

##현재 진행중인 상담방
```json
{
  "code": -704,
  "message": "IngRoom"
}
```

##파라미터 검증 오류
```json
{
  "code": -800,
  "field": "파라미터 명",
  "message": "Validation(Validation-uuid)"
}
```

##필수 파라미터 누락
```json
{
  "code": -801,
  "field": "파라미터 명",
  "message": "Required"
}
```

##파라미터 값 길이 이상
```json
{
  "code": -802,
  "field": "파라미터 명",
  "message": "Length"
}
```

##상담 진행을 하지 않을 때
```json
{
  "code": -900,
  "message": "Consulting",
  "room_id": 0,
  "uuid": "고객사 고객 식별 정보",
  "type": "text",
  "content": "상담불가 안내 자동메시지"
}
```

##근무시간 외 상담 미접수
```json
{
  "code": -901,
  "message": "Consulting",
  "room_id": 0,
  "uuid": "고객사 고객 식별 정보",
  "type": "text",
  "content": "근무 시간 외 안내 자동메시지"
}
```

##근무시간 외 상담 접수 (상담방 미생성)
```json
{
  "code": -902,
  "message": "Consulting",
  "room_id": 0,
  "uuid": "고객사 고객 식별 정보",
  "type": "text",
  "content": "근무 시간 외 안내 자동메시지"
}
```

##근무시간 중 상담 접수 할 상당원이 없을 때 (상담방 미생성)
```json
{
  "code": -903,
  "message": "Consulting",
  "room_id": 0,
  "uuid": "고객사 고객 식별 정보",
  "type": "text",
  "content": "상담불가 안내 자동메시지"
}
```

##제한된 상담건수 초과시
```json
{
  "code": -904,
  "message": "Consulting",
  "room_id": 0,
  "uuid": "고객사 고객 식별 정보",
  "type": "text",
  "content": "상담건수 초과 자동메시지"
}
```

##상담 평가가 완료된 상담방
```json
{
  "code": -1001,
  "message": "Vote"
}
```