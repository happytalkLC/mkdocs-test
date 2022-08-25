## Endpoint
[POST] /v1/center/category

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name    | Type (Length) | Required | Description                                      | Default |
|---------------|---------------|----------|--------------------------------------------------|---------|
| category_code | String        | Y        | 카테고리 코드 (단일 조회 (숫자 11자리) 또는 전체조회 (CATEGORY_ALL)) |         |

## Response (json)
| Field Name | Type   | Description                           |
|------------|--------|---------------------------------------|
| code       | String | [결과 코드](./API%20코드%20정의) (성공 : 200)   |
| data       | object | 조회 결과                                 |

### data (조회 결과)
| Field Name | Type      | Description |
|------------|-----------|-------------|
| code       | String    | 카테고리 코드     |
| name       | String    | 카테고리 이름     |

### Example

#### Success
```json
{
  "code": "200",
  "data": [
    {
      "code": "00100010001",
      "name": "건강,병원,종합병원"
    },
    {
      "code": "00100010002",
      "name": "건강,병원,피부과"
    },
   ...
    {
      "code": "02100020001",
      "name": "기타서비스,업무알림,업무알림"
    }
  ]
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
