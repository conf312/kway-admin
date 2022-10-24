## 설명
사용자 사이트의 데이터 및 컨텐츠를 관리하고 제공의 목적으로 구성된 관리자 사이트

## 구성 환경
<img src="https://img.shields.io/badge/JAVA-007396?style=flat-square&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=flat-square&logo=SpringBoot&logoColor=white"> <img src="https://img.shields.io/badge/Javascript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/Jquery-0769AD?style=flat-square&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat-square&logo=Bootstrap&logoColor=white"> <img src="https://img.shields.io/badge/Github-181717?style=flat-square&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black"> <img src="https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=Amazon AWS&logoColor=white"> <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat-square&logo=apachetomcat&logoColor=white">

## 화면 템플릿
<img src="https://img.shields.io/badge/Thymeleaf-005F0F?style=flat-square&logo=Thymeleaf&logoColor=white">

## 데이터베이스
<img src="https://img.shields.io/badge/MariaDB-003545?style=flat-square&logo=mariaDB&logoColor=white">

## 주요 기능
- 로그인 및 회원관리
- 공통 게시판 CRUD
- 메일 발송
- 파일 관리

## 모델
![mvc drawio (1)](https://user-images.githubusercontent.com/13326651/196028715-41151f07-2881-400f-8547-a740b26e8541.png)

## 구성화면

## 빌드
java -jar -DSpring.profiles.active=[profiles-env] [build.jar] --jasypt_key=[key]

### option (no hang up)
nohup java -jar -DSpring.profiles.active=[profile-env] [build.jar] --jasypt_key=[key]
