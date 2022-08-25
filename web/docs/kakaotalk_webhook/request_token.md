## Endpoint
[POST] /v1/center/sender/token

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name   | Type (Length) | Required | Description                                   | Default |
|--------------|---------------|----------|-----------------------------------------------|---------|
| yellow_id    | String        | Y        | 카카오톡 상담톡 채널 ID (ex : @dkfflaxhrxptmxm)        |         |
| phone_number | String        | Y        | 카카오톡 채널 알림을 받는 관리자 휴대전화 번호 (ex : 01012345678) |         |

## Response (json)
```text
token 값은 카카오톡 채널 알림을 받는 관리자 휴대전화 번호 알림톡으로 발송됩니다.
```
| Field Name | Type   | Description |
|------------|--------|-------------|
| code       | String | 성공 : 200    |

### Example

#### Success
```json
{
    "code": "200"
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)