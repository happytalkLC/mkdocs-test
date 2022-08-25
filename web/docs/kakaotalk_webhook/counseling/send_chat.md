## Endpoint

[POST] /v1/chat/write

## Description
본 API는 [상담 메시지 수신](./상담%20메시지%20수신) 으로 받은 데이터를 사용하여 동작하는 API입니다.

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name     | Type (Length) | Required | Description                                                                                                     | Default |
|----------------|---------------|----------|-----------------------------------------------------------------------------------------------------------------|---------|
| user_key       | String        | Y        | 수신한 사용자 키                                                                                                       |         |
| sender_key     | String        | Y        | 발신프로필 키                                                                                                         |         |
| serial_number  | String        | Y        | [메시지 고유 키](./상담%20메시지%20수신#kakao_counseloing_webhook-counseling-chat_reception-serial_number)                   |         |
| message_type   | String        | Y        | [메시지 타입](#kakao_counseloing_webhook-counseling-chat_send-dict-message_type)                                     | TX      |
| message        | String        | Y / N    | 메시지 내용 (message_type이 TX 혹은 LI인 경우 필수)                                                                          |         |
| image_url      | String        | Y / N    | 사용자에게 전달될 [이미지 url](./이미지%20업로드) (message_type이 IM인 경우 필수)                                                      |         |
| file_url       | String        | Y / N    | 사용자에게 전달될 [파일 url](./파일%20업로드) (message_type이 FI인 경우 필수)                                                        |         |
| file_name      | String        | Y / N    | 사용자에게 전달될 [파일 이름](./파일%20업로드) (message_type이 FI인 경우 필수)                                                         |         |
| file_size      | String        | Y / N    | 사용자에게 전달될 [파일 용량](./파일%20업로드) (message_type이 FI인 경우 필수)                                                         |         |
| auto_answer    | String        | N        | [카카오 시스템 자동 응답 메시지](#kakao_counseloing_webhook-counseling-chat_send-dict-auto_answer) (message_type이 LI 일시에 동작) |         |
| links          | String        | N        | [링크타입](#kakao_counseloing_webhook-counseling-chat_send-dict-links)                                              |         |

## Response (json)

| Field Name    | Type   | Description        |
|---------------|--------|--------------------|
| user_key      | String | 메시지를 발송한 사용자의 고유 키 |
| sender_key    | String | 메시지를 수신한 발신프로필 키   |

#### Body Data Dictionary
- <a id="kakao_counseloing_webhook-counseling-chat_send-dict-message_type"></a> message_type (메시지 타입)

| Type | Description |
|------|-------------|
| TX   | 텍스트         |
| IM   | 이미지         |
| LI   | 링크타입버튼      |

- <a id="kakao_counseloing_webhook-counseling-chat_send-dict-auto_answer"></a> auto_answer (카카오 시스템 자동 응답 메시지)

| Type | Description |
|------|-------------|
| TX   | 텍스트         |
| IM   | 이미지         |
| LI   | 링크타입버튼      |
| FI   | 일반 파일       |

- <a id="kakao_counseloing_webhook-counseling-chat_send-dict-links"></a> links 작성 [예시](#kakao_counseloing_webhook-counseling-chat_reception-img_send)

| Key            | Type      | Required | Description                                                                     |
|----------------|-----------|----------|---------------------------------------------------------------------------------|
| name           | text(28)  | Y        | 버튼 명칭                                                                           |
| type           | text(2)   | Y        | [버튼 타입](#kakao_counseloing_webhook-counseling-chat_send-dict-links_button_type) |
| scheme_android | text      | N        | mobile android 환경에서 버튼 클릭 시 실행할 application custom scheme                       |
| scheme_ios     | text      | N        | mobile ios 환경에서 버튼 클릭 시 실행할 application custom scheme                           |
| url_mobile     | text      | Y / N    | mobile 환경에서 버튼 클릭 시 이동할 url (type이 WL 혹은 BK 일시에 필수)                             |
| url_pc         | text      | Y / N    | pc 환경에서 버튼 클릭 시 이동할 url (type이 WL 혹은 BK 일시에 필수)                                 |
| extra          | text(100) | N        | BK, MD 버튼 발송 시 전달할 extra 정보                                                     |
| event          | text(100) | N        | 상담톡에서 봇 상담으로 전환시 호출할 봇 이벤트명 (type이 BT 일시에 사용)                                   |


- <a id="kakao_counseloing_webhook-counseling-chat_send-dict-links_button_type"></a> links 버튼 타입
<table>
    <tr>
        <td>버튼 타입</td>
        <td>속성</td>
        <td>타입</td>
        <td>필수 여부</td>
        <td>설명</td>
    </tr>
    <tr>
        <td rowspan="2"><a href="#kakao_counseloing_webhook-counseling-chat_reception-button_WL">WL</a></td>
        <td>url_mobile</td>
        <td>text</td>
        <td>Y</td>
        <td>mobile 환경에서 버튼 클릭 시 이동할 url (http 또는 https만 입력 가능)</td>
    </tr>
    <tr>
        <td>url_pc</td>
        <td>text</td>
        <td>N</td>
        <td>pc 환경에서 버튼 클릭 시 이동할 url (http 또는 https만 입력 가능)</td>
    </tr>
    <tr>
        <td rowspan="4"><a href="#kakao_counseloing_webhook-counseling-chat_reception-button_AL">AL</a></td>
        <td>scheme_android</td>
        <td>text</td>
        <td>-</td>
        <td><b>scheme_ios, scheme_android, url_mobile 중 2가지 필수 입력</b><br>mobile android 환경에서 버튼 클릭 시 실행할 application custom scheme</td>
    </tr>
    <tr>
        <td>scheme_ios</td>
        <td>text</td>
        <td>-</td>
        <td>mobile ios 환경에서 버튼 클릭 시 실행할 application custom scheme</td>
    </tr>
    <tr>
        <td>url_mobile</td>
        <td>text</td>
        <td>-</td>
        <td>mobile 환경에서 버튼 클릭 시 이동할 url (http 또는 https만 입력 가능)</td>
    </tr>
    <tr>
        <td>url_pc</td>
        <td>text</td>
        <td>N</td>
        <td>pc 환경에서 버튼 클릭 시 이동할 url (http 또는 https만 입력 가능)</td>
    </tr>
    <tr>
        <td><a href="#kakao_counseloing_webhook-counseling-chat_reception-button_BK">BK</a></td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>해당 버튼 텍스트 전송</td>
    </tr>
    <tr>
        <td><a href="#kakao_counseloing_webhook-counseling-chat_reception-button_BT">BT</a></td>
        <td>event</td>
        <td>text(100)</td>
        <td>N</td>
        <td>상담톡에서 봇상담으로 전환 (상담톡 세션 종료)<br>* 상담톡 세션 종료하고, 봇 이벤트 호출</td>
    </tr>
    <tr>
        <td><a href="#kakao_counseloing_webhook-counseling-chat_reception-button_MD">MD</a></td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>해당 버튼 텍스트 + 메시지 본문 전송</td>
    </tr>
</table>

### Request Example
#### <a id="kakao_counseloing_webhook-counseling-chat_reception-img_send"></a>이미지 발신
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "이미지 발신 테스트 메시지",
  "image_url" : "http://dn-m.talk.kakao.com/talkm/oZad6wXSNr/K7pHowkajkRPm2P49Nmk8k/i_436i1c.jpg",
  "links" : [
    {
      "name" : "버튼 텍스트 전송",
      "type" : "BK"
    }
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-img_send"></a>링크 타입 이미지 발신
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "링크 타입 이미지 발신 테스트 메시지",
  "image_url" : "http://mud-kage.kakao.com/dn/z0m0I/btrDZIgBl9i/NyhCpYIblzszwUk0riPhcK/img_l.jpg",
  "links" : [
    {
      "name" : "버튼 텍스트 전송",
      "type" : "BK"
    }
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-button_WL"></a>버튼 타입 예시_WL
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "버튼 테스트 메시지",
  "links" : [
    { 
      "name" : "URL 이동 버튼",
      "type" : "WL", 
      "url_mobile" : "http://m.daum.net", 
      "url_pc" : "http://www.daum.net"
    }
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-button_AL"></a>버튼 타입 예시_AL
```json
{
  // 네이버 앱 열기 예시 (모바일에 네이버 앱이 설치되어야 합니다.)
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "버튼 테스트 메시지",
  "links" : [
    { 
      "name" : "스키마 값과 URL 이동 버튼", 
      "type" : "AL",
      "scheme_android" : "naversearchapp://default?version=5",
      "scheme_ios" : "naversearchapp://default?version=1"
    } 
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-button_BK"></a>버튼 타입 예시_BK
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "버튼 테스트 메시지",
  "links" : [
    { 
      "name" : "버튼 텍스트 전송",
      "type" : "BK"
    }
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-button_BT"></a>버튼 타입 예시_BT
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "버튼 테스트 메시지",
  "links" : [
    {
      "name" : "상담톡에서 봇상담 전환 버튼",
      "type" : "BT"
    } 
  ]
}
```

#### <a id="kakao_counseloing_webhook-counseling-chat_reception-button_MD"></a>버튼 타입 예시_MD
```json
{
  "user_key" : "수신한 사용자 키",
  "sender_key" : "발신프로필 키",
  "serial_number" : "2795231627445909",
  "message_type" : "LI",
  "message" : "버튼 테스트 메시지",
  "links" : [ 
    { 
      "name" : "메시지와 버튼 텍스트 전송",
      "type" : "MD"
    }
  ]
}
```

### Response Example
#### Success
```json
{
  "code": 0,
  "createdAt": "2022-06-07T11:56:54.461"
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)