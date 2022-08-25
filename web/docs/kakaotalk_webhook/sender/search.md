## Endpoint
[POST] /v1/center/sender

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name | Type (Length) | Required | Description | Default |
|------------|---------------|----------|-------------|---------|
| sender_key | String        | Y        | 발신프로필 키     |         |

## Response (json)
| Field Name | Type   | Description                           |
|------------|--------|---------------------------------------|
| code       | String | [결과 코드](./API%20코드%20정의) (성공 : 200)   |
| data       | object | 조회 결과                                 |

### data (조회 결과)
| Field Name           | Type      | Description                                                                     |
|----------------------|-----------|---------------------------------------------------------------------------------|
| senderKey            | String    | 발신프로필 키                                                                         |
| uuid                 | String    | 카카오톡 채널                                                                         |
| name                 | String    | 카카오톡 채널 프로필명                                                                    |
| status               | String    | 상태 (정상 : A)                                                                     |
| block                | Boolean   | 발신프로필 차단 여부                                                                     |
| dormant              | Boolean   | 발신프로필 휴면 여부                                                                     |
| profileStatus        | String    | [카카오톡 채널 상태](#kakao_counseloing_webhook-sent_profile-create-dict-profilestatus) |
| createdAt            | Datetime  | 적용 내용                                                                           |
| modifiedAt           | Datetime  | 적용 일시                                                                           |
| categoryCode         | String    | 적용 일시                                                                           |
| bizchat              | Boolean   | 적용 일시                                                                           |
| brandtalk            | Boolean   | 적용 일시                                                                           |
| committalCompanyName | String    | 적용 일시                                                                           |
| businessProfile      | Boolean   | 적용 일시                                                                           |
| businessType         | String    | 적용 일시                                                                           |

#### Body Data Dictionary
<a id=kakao_counseloing_webhook-sent_profile-create-dict-profilestatus></a>- ProfileStatus (카카오톡 채널 상태)

| Type | Description |
|------|-------------|
| A    | Activated   |
| B    | Block       |
| C    | Deactivated |
| D    | Deleted     |
| E    | Deleting    |

### Example

#### Success
```json
{
    "code": "200",
    "data": {
        "senderKey": "5c6172587eec682c3d25c27912554135be2e10ac",
        "uuid": "@mzi4btexmzjiav9",
        "name": "mbi_dev2",
        "status": "A",
        "block": false,
        "dormant": false,
        "profileStatus": "A",
        "createdAt": "2022-05-31 12:01:32",
        "modifiedAt": "2022-05-31 12:01:32",
        "categoryCode": "00100020001", 건강(001) 약국(0002) 약국(0001)
        "bizchat": true,
        "brandtalk": false,
        "committalCompanyName": "lc_test",
        "businessProfile": true,
        "businessType": "BUSINESS"
    }
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
