package com.tetzable.api.model;

import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * @description TODO
 * @author Mr.M
 * @date 2022/10/7 16:17
 * @version 1.0
 */
 @Data
 @ToString
public class PageResult<T> {
     //data list
  private List<T> items;

  //total recordings
  private Integer counts;

  //current page
  private Integer page;

  //recordings for current page
  private Integer pageSize;

  public PageResult(List<T> items, int counts, int page, int pageSize) {
   this.items = items;
   this.counts = counts;
   this.page = page;
   this.pageSize = pageSize;
  }

 }
