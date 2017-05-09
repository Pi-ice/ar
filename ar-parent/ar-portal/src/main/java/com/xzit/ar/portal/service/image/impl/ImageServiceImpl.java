package com.xzit.ar.portal.service.image.impl;

import com.xzit.ar.common.exception.ServiceException;
import com.xzit.ar.common.mapper.album.AlbumImageMapper;
import com.xzit.ar.common.mapper.image.ImageMapper;
import com.xzit.ar.common.po.album.AlbumImage;
import com.xzit.ar.common.po.image.Image;
import com.xzit.ar.common.util.CommonUtil;
import com.xzit.ar.portal.service.image.ImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * TODO ${TODO}
 *
 * @author 董亮亮 1075512174@qq.com.
 * @Date:2017/4/29 11:02.
 */
@Service("imageService")
public class ImageServiceImpl implements ImageService {

    @Resource
    private ImageMapper imageMapper;

    @Resource
    private AlbumImageMapper albumImageMapper;

    /**
     * TODO 存储图片信息到数据库
     *
     * @param image
     * @return
     * @throws ServiceException
     */
    @Override
    public Integer saveImage(Image image) throws ServiceException {
        try {
            if (image != null && CommonUtil.isNotEmpty(image.getImagePath()))
                return imageMapper.save(image);
        } catch (Exception e) {
            throw new ServiceException("上传图片时发生异常！");
        }
        return null;
    }

    /**
     * TODO 上传图片到相册
     *
     * @param image   图片
     * @param albumId albumId
     * @return 上传图片的个数
     * @throws ServiceException
     */
    @Override
    public Integer saveAlbumImage(Image image, Integer albumId) throws ServiceException {
        try {
            // 参数校验
            if (image != null && CommonUtil.isNotEmpty(albumId)) {
                // 存储照片
                imageMapper.save(image);
                // 和相册关联
                AlbumImage albumImage = new AlbumImage();
                albumImage.setAlbumId(albumId);
                albumImage.setImageId(image.getImageId());
                albumImage.setCreateTime(new Date());
                // 存储关联信息
                albumImageMapper.save(albumImage);
                // 累计存储
                return 1;
            }
        } catch (Exception e) {
            throw new ServiceException("上传图片时发生异常!");
        }
        return null;
    }
}
