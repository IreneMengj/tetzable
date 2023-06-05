package com.tetzable.api.model;


import lombok.Data;
import lombok.ToString;


@Data
@ToString
public class PageParams {

  //default current page
  public static final int DEFAULT_PAGE_CURRENT = 1;
  //default recordings for each page
  public static final int DEFAULT_PAGE_SIZE =5;


  private int pageNo=DEFAULT_PAGE_CURRENT;
  private int pageSize=DEFAULT_PAGE_SIZE;
    public PageParams(){

    }

    public PageParams(int pageNo,int pageSize){
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }


}
