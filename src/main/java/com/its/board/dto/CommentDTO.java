package com.its.board.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.*;
import java.sql.Timestamp;

@Getter
@Setter
@ToString

public class CommentDTO {
    private Long id;
    private String commentWriter;
    private String commentContents;
    private Long boardId;
    private Timestamp commentCreatedDate;


}
