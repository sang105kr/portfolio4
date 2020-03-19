package com.kh.portfolio.board.vo;

import javax.persistence.Entity;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;

import lombok.Data;

@Entity
@Data
public class BoardCategoryVO {

	@Positive(message = "분류를 선택하세요")
	private long cid;					//CID   NOT NULL NUMBER(10)   
	private String cname;			//CNAME          VARCHAR2(60) 
}
