package com.its.board.dto;



import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

public class BoardDTO {
    private Long boardId;
    private String boardWriter="";
    private String boardPass="";
    private String boardTitle="";
    private String boardContents ="";
    private LocalDateTime boardCreateDate;
    private int boardHits= 0;



}
