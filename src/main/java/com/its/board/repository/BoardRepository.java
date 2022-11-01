package com.its.board.repository;

import com.its.board.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;

@Repository

public class BoardRepository {
@Autowired
private SqlSessionTemplate sql;
    public int save(BoardDTO boardDTO) {
        System.out.printf("boardDTO:",boardDTO);
        return sql.insert("board.save",boardDTO);


    }

    public List<BoardDTO> boardList() {
        return sql.selectList("board.List");
    }

public BoardDTO findId(long findId){
        System.out.printf("리파:%s",findId);
    return   sql.selectOne("board.findId",findId);

}
public void update(BoardDTO boardDTO){
        sql.update("board.hits",boardDTO);
}
}
