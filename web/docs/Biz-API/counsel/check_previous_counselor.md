---
hide:
  - footer
---

## Endpoint
!!! example "<strong style="color:red; opacity: 0.80;">[POST]</strong> API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-biz-api.happytalk.io/v1/chat/isCounselor
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://biz-api.happytalk.io/v1/chat/isCounselor
        ```

## Request (Json)
### Header
| Field Name       | Type   | Required | Description               |
|------------------|--------|----------|---------------------------|
 |  HT-Client-Id    | String | Y        | 고객센터에서 발급 받은 key   |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token |

### Body
| Field Name  | Type (Length) | Required | Description                            | Default |
|-------------|---------------|----------|----------------------------------------|---------|
| uuid        | String (20)   | Y        | 고객사 고객 식별 정보 (최소 5자 ~ 최대 20자)|         |
| customer_id | String (20)   | Y        | 고객사 고객 ID                           |         |

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
            "customer_id" : "고객사 고객 ID"
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
            "customer_id" : "고객사 고객 ID"
        }'
        ```

## Response (Json)
### Parameter
| Field Name     | Type   | Description                             |
|----------------|--------|-----------------------------------------|
| code           | Int    | 성공, 실패여부                            |
| counselor      | String | 이전 상담사 존재 여부                      |
| counselor_code | Int    | 상담 가능여부 (1 가능 , 0 불가능, -1 에러)  |
| counselor_name | String | 상담사 이름                               |

### Example
???+ success
    ??? note "이전 상담사가 존재 할경우"
        ```json
        {
            "code": 0,
            "counselor": "exist",
            "counselor_code": 1,
            "counselor_name": "상담사"
        }
        ```
    ??? note "이전 상담사가 존재 하지 않을 경우"
        ```json
        {
            "code": 0,
            "counselor": "not exist",
            "counselor_code": 0,
            "counselor_name": ""
        }
        ```

???+ fail classes
    <a href="/Biz-API/reference_docs/api_fail_code">Fail Code 정보</a>