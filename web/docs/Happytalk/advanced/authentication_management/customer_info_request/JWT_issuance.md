## Endpoint
[POST] /api_v1/out_side_auth/auth/format/json/

## Description
해피톡 기능 중 하나로써 `고급 설정 > 인증 관리 > 고객 정보 요청 연동` 에서
발급된 고유키로 JTW(토큰)을 발급 받는 API이다.

## Request
### Header
| Field Name    | Type   | Required | Description           |
|---------------|--------|----------|-----------------------|
| Authorization | String | Y        | 인증관리 페이지에서 발급 받은 고유키. |

### Body
None

## Response (json)
| Field Name  | Type   | Description       |
|-------------|--------|-------------------|
| code        | String | 성공, 실패여부          |
| resultCode  | Int    | 결과코드              |
| results     | String | JWT(토큰)           |
| massage     | String | API 통신 결과 message |

### Example

#### Success
```json
{
    "resultCode": 0,
    "results": "발급 된 JWT(토큰)",
    "massage": "success"
}
```

#### Fail

- 발급받은 고유키를 헤더로 전송하지 않을 경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 99,
  "message": "not found authorization"
}
```

- 발급받은 고유키가 정상적이지 않을 경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 98,
  "message": "wrong key"
}
```

- 발급받은 고유키의 검증이 실패 했을 경우 발생하는 에러
```json
{
  "code": "errors",
  "resultCode": 97,
  "message": "validation error"
}
```