---
hide:
  - footer
---

## Endpoint
!!! example "<strong style="color:red; opacity: 0.80;">[POST]</strong> API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-biz-api.happytalk.io/v1/chat/write
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://biz-api.happytalk.io/v1/chat/write
        ```

## Request (Json)
### Header
| Field Name       | Type   | Required | Description        |
|------------------|--------|----------|--------------------|
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key   |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token |

### Body
| Field Name | Type (Length) | Required | Description                                                 | Default |
|------------|---------------|----------|-------------------------------------------------------------|---------|
| uuid       | String (20)   | Y        | 고객사 고객 식별 정보 (최소 5자 ~ 최대 20자)                               |         |
| room_id    | String (30)   | Y        | 상담방 ID                                                      |         |
| type       | String (6)    | Y        | 메시지 타입                                                      | text    |
| msg        | String (1000) | Y/N      | [메시지](#send_message-request-dict-msg) (메시지 타입이 text일 경우 필수) |         |
| url        | String (255)  | Y/N      | 이미지, 오디오, 비디오 경로 (메시지 타입이 text이외일 경우 필수)                    |         |

### Example
??? abstract "REST API Sample"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        === "메시지 발송"
            ```json
            curl --location --request POST 'https://patch-biz-api.happytalk.io/v1/chat/write' \
            --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
            --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
            --header 'Content-Type: application/json' \
            --data-raw '{
                "uuid" : "고객사 고객 식별 정보",
                "room_id" : "상담방 ID",
                "type" : "메시지 타입",
                "msg" : "메시지",
            }'
            ```
        === "파일 발송"
            ```json
            curl --location --request POST 'https://patch-biz-api.happytalk.io/v1/chat/write' \
            --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
            --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
            --header 'Content-Type: application/json' \
            --data-raw '{
                "uuid" : "고객사 고객 식별 정보",
                "room_id" : "상담방 ID",
                "type" : "메시지 타입",
                "url" : "이미지, 오디오, 비디오 경로"
            }'
            ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        === "메시지 발송"
            ```json
            curl --location --request POST 'https://biz-api.happytalk.io/v1/chat/write' \
            --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
            --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
            --header 'Content-Type: application/json' \
            --data-raw '{
                "uuid" : "고객사 고객 식별 정보",
                "room_id" : "상담방 ID",
                "type" : "메시지 타입",
                "msg" : "메시지",
            }'
            ```
        === "파일 발송"
            ```json
            curl --location --request POST 'https://biz-api.happytalk.io/v1/chat/write' \
            --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
            --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
            --header 'Content-Type: application/json' \
            --data-raw '{
                "uuid" : "고객사 고객 식별 정보",
                "room_id" : "상담방 ID",
                "type" : "메시지 타입",
                "url" : "이미지, 오디오, 비디오 경로"
            }'
            ```

## Response (Json)
### Parameter
| Field Name | Type   | Description           |
|------------|--------|-----------------------|
| code       | Int    | 성공, 실패여부          |
| room_id    | String | 상담방 아이디           |
| message    | String | 오류 메시지 (성공시 공란)|

### Example
???+ success
    ```json
    {
        "code": 0,
        "room_id": "상담방 아이디",
        "message": ""
    }    
    ```

???+ fail classes
    <a href="/Biz-API/reference_docs/api_fail_code">Fail Code 정보</a>

## Data Dictionary
??? abstract "Data Dictionary"
    === "Request"
        === "<a id='send_message-request-dict-msg'></a>type"
            | Type  | Description  |
            |-------|--------------|
            | text  | 일반           |
            | image | 이미지          |
            | video | 영상           |
            | audio | 음성           |