## 설명
사용자 사이트의 데이터 및 컨텐츠를 관리하고 제공의 목적으로 구성된 관리자 사이트

## 구성 환경
<img src="https://img.shields.io/badge/JAVA-007396?style=flat-square&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=flat-square&logo=SpringBoot&logoColor=white"> <img src="https://img.shields.io/badge/Javascript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/Jquery-0769AD?style=flat-square&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat-square&logo=Bootstrap&logoColor=white"> <img src="https://img.shields.io/badge/Github-181717?style=flat-square&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black"> <img src="https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=Amazon AWS&logoColor=white"> <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat-square&logo=apachetomcat&logoColor=white">

## 화면 템플릿
<img src="https://img.shields.io/badge/Thymeleaf-005F0F?style=flat-square&logo=Thymeleaf&logoColor=white">

## 데이터베이스
<img src="https://img.shields.io/badge/postgreSQL-003545?style=flat-square&logo=postgreSQL&logoColor=white">

## 주요 기능
- 로그인 및 회원관리
- 공통 게시판 CRUD
- 메일 발송
- 파일 관리

## 모델
![mvc drawio (1)](https://user-images.githubusercontent.com/13326651/196028715-41151f07-2881-400f-8547-a740b26e8541.png)

## 구성화면
![1](https://user-images.githubusercontent.com/94291819/195983010-6cb4afab-b036-46c0-bb5c-6f519a3e0a07.PNG)
![2](https://user-images.githubusercontent.com/94291819/195983012-89fbe727-c481-4d2f-9452-0cedaa86b1b8.PNG)
![3](https://user-images.githubusercontent.com/94291819/195983014-76836125-5c5a-4bae-9ab0-be3c9cca0498.PNG)
![4](https://user-images.githubusercontent.com/94291819/195983015-c6474d1c-000e-4e49-8f75-f702966b132c.PNG)
![5](https://user-images.githubusercontent.com/94291819/195983016-11fec11d-fe6c-4990-8ad2-560ef7f56012.PNG)
![6](https://user-images.githubusercontent.com/94291819/195983074-360d3b4f-03bd-4d5d-988f-b45d1836de69.PNG)

## 빌드
java -jar -DSpring.profiles.active=[profiles-env] [build.jar] --jasypt_key=[key]

### option (no hang up &)
nohup java -jar -DSpring.profiles.active=[profile-env] [build.jar] --jasypt_key=[key] &
