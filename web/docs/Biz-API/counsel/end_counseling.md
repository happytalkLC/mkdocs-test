---
hide:
  - footer
---

## Endpoint
!!! example "API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-biz-api.happytalk.io/v1/chat/end
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://biz-api.happytalk.io/v1/chat/end
        ```

## Request (Json)
### Header
| Field Name       | Type   | Required | Description            |
|------------------|--------|----------|------------------------|
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key       |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token     |

### Body
| Field Name | Type (Length) | Required | Description                             | Default |
|------------|---------------|----------|-----------------------------------------|---------|
| uuid       | String (20)   | Y        | 고객사 고객 식별 정보 (최소 5자 ~ 최대 20자) |         |
| room_id    | String (30)   | Y        | 상담방 ID                                |         |

### Example
??? abstract "REST API Sample"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        curl --location --request POST 'https://patch-biz-api.happytalk.io/v1/chat/isCounselor' \
        --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
        --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "uuid" : "고객사 고객 식별 정보",
            "room_id" : "상담방 ID"
        }'
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        curl --location --request POST 'https://biz-api.happytalk.io/v1/chat/isCounselor' \
        --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
        --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "uuid" : "고객사 고객 식별 정보",
            "room_id" : "상담방 ID"
        }'
        ```

## Response (Json)
### Parameter
| Field Name | Type   | Description           |
|------------|--------|-----------------------|
| code       | Int    | 성공, 실패여부          |
| message    | String | 오류 메시지 (성공시 공란)|

### Example
???+ success
    ```json
    {
        "code": 0,
        "message": ""
    }
    ```

???+ fail classes
    <a href="/Biz-API/reference_docs/api_fail_code">Fail Code 정보</a>