package com.nwpu.dao;
import com.nwpu.domain.ResumeDeliver;
import com.nwpu.pojo.DeliverListBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IResumeDeliverDao {


    List<DeliverListBean> findDeliverListByPage(Map map);

    int findAllByDeliverByStatus(@Param("resumeId") Integer resumeId, @Param("status") int status);

    int saveDeliver(ResumeDeliver resumeDeliver);

    int isDeliver(@Param("resumeId") Integer resumeId, @Param("jobId") Integer jobId);
}