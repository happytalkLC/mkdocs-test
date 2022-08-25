## Description
<b>본 문서는 백업된 데이터에 대한 구조 설명 문서입니다.<br>
 - 데이터 이관 파라미터는 언제든지 신규로 추가될 수 있습니다. 고객사에서는 추가 파라미터들을 감안하고 연동하시기 바랍니다.<br>
 - Json 데이터를 [Json Viewer](http://json.parser.online.fr)로 사용하여 한글로 확인이 가능합니다.

## Data Structure
| Field Name             | Type     | Length | Description                                                |
|------------------------|----------|--------|------------------------------------------------------------|
| id                     | Bigint   | 20     | AUTO_INCREMENT                                             |
| chat_list_id           | Char     | 30     | 채팅방 ID                                                     |
| socket_room_id         | Char     | 30     | 해피톡 사용 값                                                   |
| from_id                | Int      | 11     | 보낸 사람 ID                                                   |
| to_id                  | Int      | 11     | 받은 사람 ID                                                   |
| type                   | Char     | 1      | [채팅 타입](#happytalk_archive-db_chat-dict-type)              |
| user_type              | Char     | 1      | [보낸 사람 유저 타입](#happytalk_archive-db_chat-dict-user_type)   |
| contents               | Text     |        | 상담 메시지                                                     |
| contents_type          | Varchar  | 15     | [상담 메시지 타입](#happytalk_archive-db_chat-dict-contents_type) |
| status                 | Char     | 2      | 상담 메시지 상태 (해피톡 내부 사용 값)                                    |
| counterpart_status     | Char     | 2      | 상담 메시지 상태 (해피톡 내부 사용 값)                                    |
| send_date              | Datetime |        | 전송일자                                                       |
| receive_date           | Datetime |        | 메시지 받은 일시                                                  |
| read_date              | Datetime |        | 메시지 읽은 일시                                                  |
| fail_date              | Datetime |        | 메시지 전송 실패 일시                                               |
| msg_id                 | Varchar  | 50     | 메시지 ID (랜덤 문자열의 유니크 값)                                     |
| seq                    | Int      | 11     | 해피톡 사용 값 (해피톡 내부 사용 값)                                     |
| is_today_first_counsel | Tinyint  | 4      | 상담원 최초 상담 여부 (해피톡 내부 사용 값)                                 |

## Data
- <a id=happytalk_archive-db_chat-dict-type></a> type (채팅 타입)

| Type | Description |
|------|-------------|
| C    | 채팅          |
| M    | 메모          |

- <a id=happytalk_archive-db_chat-dict-user_type></a> user_type (보낸 사람 유저 타입)

| Type | Description |
|------|-------------|
| H    | 상담원         |
| C    | 고객          |
| B    | 상담원 봇       |
| Q    | 템플릿 질문      |
| A    | 템플릿 답변      |
| 1    | 택배 타상담원     |
| 2    | 상품 타 상담원    |

- <a id=happytalk_archive-db_chat-dict-contents_type></a> contents_type (상담 메시지 타입)

| Type     | Description                                                                 |
|----------|-----------------------------------------------------------------------------|
| text     | [일반 문자](#happytalk_archive-db_chat-dict-contents_type-text)                 |
| image    | [이미지 파일](#happytalk_archive-db_chat-dict-contents_type-image)               |
| normal   | [이미지 버튼 &#124; 링크 버튼](#happytalk_archive-db_chat-dict-contents_type-normal) |

## Example

- <a id=happytalk_archive-db_chat-dict-contents_type-text></a>일반 문자 채팅 메시지 형식
```json
{
  "id": "304185866",
  "chat_list_id": "a78AbccD4abcdeFGH5i4j03k429l9m",
  "socket_room_id": "a78AbccD4abcdeFGH5i4j03k429l9m",
  "from_id": "robot1234567890",
  "to_id": "1222333444_ABCD520",
  "type": "C",
  "user_type": "B",
  "contents": "\uc548\ub155\ud558\uc138\uc694. \uc2e0\uc138\uacc4\uba74\uc138\uc810\ubd07 \uc785\ub2c8\ub2e4. \ubb34\uc5c7\uc744 \ub3c4\uc640\ub4dc\ub9b4\uae4c\uc694?\n\u261e \ud604\uc7ac \uc2e0\uc138\uacc4\uba74\uc138\uc810 \uc628\ub77c\uc778\ubab0 \uc8fc\ubb38\uac00\ub2a5\uc2dc\uac04 \ubc0f \uc624\ud504\ub77c\uc778 \ub9e4\uc7a5 \uc774\uc6a9 \uc2dc\uac04\uc774 \ud55c\uc2dc\uc801\uc73c\ub85c \ubcc0\uacbd\ub418\uc5c8\uc2b5\ub2c8\ub2e4.\n\uc790\uc138\ud55c \uc0ac\ud56d\uc740 \ud648\ud398\uc774\uc9c0 \uacf5\uc9c0\uc0ac\ud56d \ubc0f \uace0\uac1d\uc13c\ud130(1661-8778)\ub85c \uc5f0\ub77d \ubd80\ud0c1\ub4dc\ub9bd\ub2c8\ub2e4.",
  "contents_type": "text",
  "status": "1",
  "counterpart_status": "1",
  "send_date": "2020-08-30 10:41:08",
  "receive_date": null,
  "read_date": "2020-08-30 10:41:09",
  "fail_date": null,
  "msg_id": "c5dac4d7-1b66-4bc3-a257-7284e57b9318",
  "seq": null,
  "is_today_first_counsel": "0"
}
```
- <a id=happytalk_archive-db_chat-dict-contents_type-image></a>이미지 파일 채팅 메시지 형식
```json
  {
  "id": "35749047",
  "chat_list_id": "jQwGXWjCrrNFChCGl623d2c39bad92",
  "socket_room_id": "jQwGXWjCrrNFChCGl623d2c39bad92",
  "from_id": "48322362",
  "to_id": "52588",
  "type": "C",
  "user_type": "C",
  "contents": "https:\/\/local.happytalk.io\/data\/chat_data\/2022_03_25\/4ba20d6a5a7a72133aeabfb80eab604b_w.png",
  "contents_type": "image",
  "status": "1",
  "counterpart_status": "1",
  "send_date": "2022-03-25 11:43:36",
  "receive_date": null,
  "read_date": "2022-03-25 11:43:57",
  "fail_date": null,
  "msg_id": "d93724f4-74b7-4d69-90fb-531f33cc6dcb",
  "seq": null,
  "is_today_first_counsel": "0"
}
```
- <a id=happytalk_archive-db_chat-dict-contents_type-normal></a>이미지 버튼 &#124; 링크 버튼 채팅 메시지 형식
```json
  {
  "id": "35749044",
  "chat_list_id": "jQwGXWjCrrNFChCGl623d2c39bad92",
  "socket_room_id": "jQwGXWjCrrNFChCGl623d2c39bad92",
  "from_id": "52589",
  "to_id": "48322362",
  "type": "C",
  "user_type": "B",
  "contents": "{\"text\":\"\\ube60\\ub974\\uace0 \\uc815\\ud655\\ud55c \\uc0c1\\ub2f4\\uc744 \\uc704\\ud574 \\uace0\\uac1d\\ub2d8\\uc758 \\ud504\\ub85c\\ud544\\uc744 \\uc785\\ub825\\ud574 \\uc8fc\\uc138\\uc694333:)\",\"link\":{\"name\":[\"\\uace0\\uac1d \\ud504\\ub85c\\ud544 \\uc785\\ub825\"],\"url\":[\"http:\\\/\\\/local-customer.happytalk.io\\\/bot\\\/profilebot?token=Q1RtJL1TRVeA%2Bua34dzNzTlnjx91SxBFLruugrebEeDk46k%2FY6DGKlPUKml49JQ9NgJWpT4hpOsXJBDdsJedO%2BHLA4vQa%2BTdl0M1DJJN1pflUgq2Whzkxvgn7sAr%2BYi2gycO1BODj6HwJseoa5RiOBgfGOF5sKzB0tcjExshv2Q%3D\"]},\"image_url\":\"https:\\\/\\\/local.happytalk.io\\\/data2\\\/profile_bot\\\/5000100210\\\/fde2bfede744fe9f42780ea401213fd3.png\"}",
  "contents_type": "normal",
  "status": "1",
  "counterpart_status": "1",
  "send_date": "2022-03-25 11:43:09",
  "receive_date": null,
  "read_date": "2022-03-25 11:43:09",
  "fail_date": null,
  "msg_id": "c84328d7-ac4c-47fe-bf1b-c831a048a93a",
  "seq": null,
  "is_today_first_counsel": "0"
}
```