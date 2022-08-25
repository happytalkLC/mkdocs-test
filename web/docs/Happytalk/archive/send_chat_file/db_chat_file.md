## Description
<b>본 문서는 백업된 데이터에 대한 구조 설명 문서입니다.<br>
 - 데이터 이관 파라미터는 언제든지 신규로 추가될 수 있습니다. 고객사에서는 추가 파라미터들을 감안하고 연동하시기 바랍니다.<br>
 - Json 데이터를 [Json Viewer](http://json.parser.online.fr)로 사용하여 한글로 확인이 가능합니다.

## Data Structure
| Field Name | Type     | Length | Description               |
|------------|----------|--------|---------------------------|
| id         | Int      | 11     | AUTO_INCREMENT            |
| chat_id    | Int      | 11     | 채팅 메시지 ID (chat table id) |
| file_name  | Varchar  | 150    | 파일 명칭                     |
| media_type | Varchar  | 10     | 파일 형식                     |
| reg_date   | Datetime |        | 등록 일시                     |

## Example

- 일반 문자 채팅 메시지 형식
```json
[{
  "id":"490912",
  "chat_id":"32264945",
  "file_name":"ad1c474d8592b1ffa1f32a74a888211f.png",
  "media_type":"image\/png",
  "reg_date":"2020-01-04 10:01:25"
},
  {
    "id":"491005",
    "chat_id":"32271289",
    "file_name":"72ca4933e408e0f08c989d8f658b9cf9.png",
    "media_type":"image\/jpeg",
    "reg_date":"2020-01-04 10:24:07"
  }]
```