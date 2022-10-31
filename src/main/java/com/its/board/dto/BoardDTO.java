package com.its.board.dto;



import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class BoardDTO {
    private Long boardId;
    private String boardWriter="";
    private String boardPass="";
    private String boardTitle="";
    private String boardContents ="";
    private String boardCreateDate="";
    private int boardHits= 0;



}
