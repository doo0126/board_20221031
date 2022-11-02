package com.its.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class BoardDTO {
    private Long id;
    private String boardWriter;
    private String boardPass;
    private String boardTitle;
    private String boardContents;
    private Timestamp boardCreatedDate;
    private int boardHits;

    //file을 담을 수 있는 필드 만들기
    private MultipartFile boardFile;
    //원본 파일
    private String  originalFileName;
    //서버용 관리 파일
    private String storedFileName;
    //파일 첨부 여부
    private int fileAttached;
}