package com.zy.demo.mapper;

import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Train;
import com.zy.demo.pojo.TrainPlan;

import java.util.List;

public interface TrainMapper {
    //查询培训信息
    List<Train> findTrainAll(Train train);

    //查看今年培训表数量  为了生成培训编号
    Integer trainCode(String year);

    //添加培训
    int findaddTrain(Train train);

    //添加附件
    int findaddAccessory(Accessory accessory);

    //培训详情
    Train trainAllById(Integer id);

    //培训详情附件
    List<Train> trainAndAccessoryAllById(Integer id);

    //培训驳回
    int boHuiTrain(int id);

    //培训办结
    int banJieTrain(int id);

    //培训终止
    int trainingToTerminate(int id);
    //进度
    List<TrainPlan> TrainPlanById(Integer id);

    //进度情况详情
    TrainPlan TrainPlanMessageById(Integer id);

    //查询培训执行
    List<Train> TrainingPerformedAll(Train train);
    //添加进度
    int addJinDu(TrainPlan trainPlan);
    //进度提交
    int jinDuTiJiao(int id);
    //进度打回
    int jinDuDaHui(int id);
    //培训执行
    int peiXunZhiXing(int id);
    //培训反馈
    int peiXunFanKui(int id);
}
