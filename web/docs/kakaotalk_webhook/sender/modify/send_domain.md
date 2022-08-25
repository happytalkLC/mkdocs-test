## Endpoint
[POST] /v1/center/domain/search

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name | Type (Length) | Required | Description    | Default |
|------------|---------------|----------|----------------|---------|
| sender_key | String        | Y        | 발신프로필 키        |         |

## Response (json)
| Field Name | Type    | Description                           |
|------------|---------|---------------------------------------|
| code       | String  | [결과 코드](./API%20코드%20정의) (성공 : 200)   |
| data       | object  | 등록 결과                                 |
| isDirect   | Boolean | 전용선 도메인 여부                            |

### data (등록 결과)
| Field Name | Type     | Description  |
|------------|----------|--------------|
| modifiedAt | Datetime | 최종 수정 일시     |
| domain     | String   | 카카오톡 채널      |
| createdAt  | Datetime | 최초 등록 일시     |

### Example

#### Success
```json
{
  "code": "200",
  "data": [
    {
      "modifiedAt": "2022-05-31 09:11:53",
      "domain": "https://url.domainXXX.com",
      "createdAt": "2022-04-12 16:31:12"
    }
  ],
  "isDirect": false
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
