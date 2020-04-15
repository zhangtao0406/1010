package com.zy.demo.service.impl;

import com.zy.demo.mapper.TrainMapper;
import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Train;
import com.zy.demo.pojo.TrainPlan;
import com.zy.demo.service.TrainService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TrainServiceImpl implements TrainService{
    //依赖注入
    @Resource
    private TrainMapper trainMapper;

    //查询培训信息
    @Override
    public List<Train> findTrainAll(Train train) {
        return trainMapper.findTrainAll (train);
    }

    //查看今年培训表数量  为了生成培训编号
    @Override
    public Integer trainCode(String year) {
        return trainMapper.trainCode (year);
    }

    //添加培训
    @Override
    public int findaddTrain(Train train) {
        return trainMapper.findaddTrain (train);
    }

    //添加附件
    @Override
    public int findaddAccessory(Accessory accessory) {
        return trainMapper.findaddAccessory (accessory);
    }

    //培训详情
    @Override
    public Train trainAllById(Integer id) {
        return trainMapper.trainAllById (id);
    }

    //培训详情附件
    @Override
    public List<Train> trainAndAccessoryAllById(Integer id) {
        return trainMapper.trainAndAccessoryAllById (id);
    }

    //培训驳回
    @Override
    public int boHuiTrain(int id) {
        return trainMapper.boHuiTrain (id);
    }

    //培训办结
    @Override
    public int banJieTrain(int id) {
        return trainMapper.banJieTrain (id);
    }

    //培训终止
    @Override
    public int trainingToTerminate(int id) {
        return trainMapper.trainingToTerminate (id);
    }
    //进度
    @Override
    public List<TrainPlan> TrainPlanById(Integer id) {
        return trainMapper.TrainPlanById(id);
    }
    //进度情况详情
    @Override
    public TrainPlan TrainPlanMessageById(Integer id) {
        return trainMapper.TrainPlanMessageById(id);
    }
    //查询培训执行
    @Override
    public List<Train> TrainingPerformedAll(Train train) {
        return trainMapper.TrainingPerformedAll(train);
    }
    //添加进度
    @Override
    public int addJinDu(TrainPlan trainPlan) {
        return trainMapper.addJinDu(trainPlan);
    }
    //进度提交
    @Override
    public int jinDuTiJiao(int id) {
        return trainMapper.jinDuTiJiao(id);
    }
    //进度打回
    @Override
    public int jinDuDaHui(int id) {
        return trainMapper.jinDuDaHui(id);
    }
    //培训执行
    @Override
    public int peiXunZhiXing(int id) {
        return trainMapper.peiXunZhiXing(id);
    }
    //培训反馈
    @Override
    public int peiXunFanKui(int id) {
        return trainMapper.peiXunFanKui(id);
    }
}
