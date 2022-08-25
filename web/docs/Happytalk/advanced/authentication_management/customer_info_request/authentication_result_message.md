## Endpoint
[POST] /api_v1/out_side_auth/sendMsg/format/json/

## Description
해피톡 기능 중 하나로써 `고급 설정 > 인증 관리 > 고객 정보 요청 연동` 에서
인증 결과 메시지를 전송과 고객사 고객 ID를 전송하는 사용하는 API이다.

## Request
### Header
| Field Name    | Type   | Required | Description   |
|---------------|--------|----------|---------------|
| Authorization | String | Y        | 발급 받은 JWT(토큰) |

### Body
| Field Name | Type   | Required | Description                                      |
|------------|--------|----------|--------------------------------------------------|
| roomId     | String | Y        | 인증 후 인증 관련 메세지를 전송하고자 하는 Room ID                 |
| userId     | String | Y        | 업체 고객의 고유 값                                      |
| msg        | String | N        | 전송하고자 하는 메세지(Default : 아이디 인증이 완료 되었습니다.)        |
| authNum    | String | N        | 서비스설정 > 고객관리 > 인증관리 페이지의 고객 인증 탭 번호(Default : 1) |

## Response (Json)
| Field Name | Type   | Description       |
|------------|--------|-------------------|
| code       | String | 성공, 실패여부          |
| resultCode | Int    | 결과코드              |
| results    | String | JWT(토큰)           |
| massage    | String | API 통신 결과 message |

### Example

#### Success
```json
{
  "resultCode": 0,
  "message": "success",
  "sendMsg": "아이디 인증이 완료 되었습니다."
}
```

#### Fail

- Room ID가 존재하지 않을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 89,
  "message": "empty roomId"
}
```

- Room ID에 해당하는 채팅방이 존재하지 않을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 88,
  "message": "wrong roomId"
}
```

- 채팅방의 Site ID와 일치하지 않을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 87,
  "message": "not match site_id"
}
```

- 발급받은 JWT(토큰)값이 존재하지 않을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 86,
  "message": "not found authorization"
}
```

- 발급받은 JWT(토큰)이 정상적이지 않을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 85,
  "message": "not found token"
}
```

- 발급받은 JWT(토큰)의 유효시간이 만료된 경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 84,
  "message": "token time end"
}
```

- 발급받는 JWT(토큰) 에러
```json
{
  "code": "errors",
  "resultCode": 83,
  "message": "token error"
}
```

- 메세지가 정상적으로 전송되지 않았을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 82,
  "message": "send message errors"
}
```

- 고유키에 해당하는 고객 인증 탭번호가 맞지 않았을경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 81,
  "message": "auth num fail"
}
```