#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class yonghu(BaseModel):
    __doc__ = u'''yonghu'''
    __tablename__ = 'yonghu'

    __loginUser__='yonghuming'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='yonghuming'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yonghuming=models.CharField ( max_length=255,null=False,unique=True,verbose_name='用户名' )
    mima=models.CharField ( max_length=255,null=False, unique=False,verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False,verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False,verbose_name='性别' )
    touxiang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='头像' )
    shouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='手机' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='邮箱' )
    '''
    yonghuming=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    touxiang=VARCHAR
    shouji=VARCHAR
    youxiang=VARCHAR
    '''
    class Meta:
        db_table = 'yonghu'
        verbose_name = verbose_name_plural = '用户'
class shebeifenlei(BaseModel):
    __doc__ = u'''shebeifenlei'''
    __tablename__ = 'shebeifenlei'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    fenlei=models.CharField ( max_length=255,null=False,unique=True,verbose_name='分类' )
    '''
    fenlei=VARCHAR
    '''
    class Meta:
        db_table = 'shebeifenlei'
        verbose_name = verbose_name_plural = '设备分类'
class zichanxinxi(BaseModel):
    __doc__ = u'''zichanxinxi'''
    __tablename__ = 'zichanxinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    shebeibianhao=models.CharField ( max_length=255,null=False,unique=True,verbose_name='设备编号' )
    shebeimingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备名称' )
    fenlei=models.CharField ( max_length=255,null=False, unique=False,verbose_name='分类' )
    tupian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='图片' )
    shuliang=models.IntegerField  (  null=True, unique=False,verbose_name='数量' )
    shengchanshang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='生产商' )
    zhejiulv=models.CharField ( max_length=255, null=True, unique=False,verbose_name='折旧率' )
    caigouriqi=models.DateField   (  null=True, unique=False,verbose_name='采购日期' )
    suoshubumen=models.CharField ( max_length=255, null=True, unique=False,verbose_name='所属部门' )
    dangqianweizhi=models.CharField ( max_length=255, null=True, unique=False,verbose_name='当前位置' )
    '''
    shebeibianhao=VARCHAR
    shebeimingcheng=VARCHAR
    fenlei=VARCHAR
    tupian=VARCHAR
    shuliang=Integer
    shengchanshang=VARCHAR
    zhejiulv=VARCHAR
    caigouriqi=Date
    suoshubumen=VARCHAR
    dangqianweizhi=VARCHAR
    '''
    class Meta:
        db_table = 'zichanxinxi'
        verbose_name = verbose_name_plural = '资产信息'
class shebeijieyong(BaseModel):
    __doc__ = u'''shebeijieyong'''
    __tablename__ = 'shebeijieyong'



    __authTables__={'yonghuming':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    shebeibianhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备编号' )
    shebeimingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备名称' )
    tupian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='图片' )
    shengchanshang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='生产商' )
    shuliang=models.IntegerField  ( null=False, unique=False,verbose_name='数量' )
    jieyongtianshu=models.IntegerField  ( null=False, unique=False,verbose_name='借用天数' )
    jieyongriqi=models.DateField   (  null=True, unique=False,verbose_name='借用日期' )
    jieyongbeizhu=models.CharField ( max_length=255, null=True, unique=False,verbose_name='借用备注' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='用户名' )
    xingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='手机' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False,verbose_name='审核回复' )
    '''
    shebeibianhao=VARCHAR
    shebeimingcheng=VARCHAR
    tupian=VARCHAR
    shengchanshang=VARCHAR
    shuliang=Integer
    jieyongtianshu=Integer
    jieyongriqi=Date
    jieyongbeizhu=VARCHAR
    yonghuming=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'shebeijieyong'
        verbose_name = verbose_name_plural = '设备借用'
class weixiushenbao(BaseModel):
    __doc__ = u'''weixiushenbao'''
    __tablename__ = 'weixiushenbao'



    __authTables__={'yonghuming':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    shebeibianhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备编号' )
    shebeimingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备名称' )
    tupian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='图片' )
    baoxiuwenti=models.TextField   (  null=True, unique=False,verbose_name='报修问题' )
    baoxiushuliang=models.IntegerField  (  null=True, unique=False,verbose_name='报修数量' )
    baoxiuriqi=models.DateField   (  null=True, unique=False,verbose_name='报修日期' )
    baoxiubeizhu=models.CharField ( max_length=255, null=True, unique=False,verbose_name='报修备注' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='用户名' )
    xingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='手机' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False,verbose_name='审核回复' )
    '''
    shebeibianhao=VARCHAR
    shebeimingcheng=VARCHAR
    tupian=VARCHAR
    baoxiuwenti=Text
    baoxiushuliang=Integer
    baoxiuriqi=Date
    baoxiubeizhu=VARCHAR
    yonghuming=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'weixiushenbao'
        verbose_name = verbose_name_plural = '维修申报'
class shebeiguihai(BaseModel):
    __doc__ = u'''shebeiguihai'''
    __tablename__ = 'shebeiguihai'



    __authTables__={'yonghuming':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    shebeibianhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备编号' )
    shebeimingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备名称' )
    tupian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='图片' )
    shengchanshang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='生产商' )
    shuliang=models.IntegerField  ( null=False, unique=False,verbose_name='数量' )
    guihairiqi=models.DateField   (  null=True, unique=False,verbose_name='归还日期' )
    guihaibeizhu=models.CharField ( max_length=255, null=True, unique=False,verbose_name='归还备注' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='用户名' )
    xingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='手机' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False,verbose_name='审核回复' )
    '''
    shebeibianhao=VARCHAR
    shebeimingcheng=VARCHAR
    tupian=VARCHAR
    shengchanshang=VARCHAR
    shuliang=Integer
    guihairiqi=Date
    guihaibeizhu=VARCHAR
    yonghuming=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'shebeiguihai'
        verbose_name = verbose_name_plural = '设备归还'
class shebeirenling(BaseModel):
    __doc__ = u'''shebeirenling'''
    __tablename__ = 'shebeirenling'



    __authTables__={'yonghuming':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    shebeibianhao=models.CharField ( max_length=255,null=False,unique=True,verbose_name='设备编号' )
    shebeimingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='设备名称' )
    fenlei=models.CharField ( max_length=255,null=False, unique=False,verbose_name='分类' )
    zhejiulv=models.CharField ( max_length=255, null=True, unique=False,verbose_name='折旧率' )
    tupian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='图片' )
    shuliang=models.IntegerField  (  null=True, unique=False,verbose_name='数量' )
    shengchanshang=models.CharField ( max_length=255, null=True, unique=False,verbose_name='生产商' )
    caigouriqi=models.CharField ( max_length=255, null=True, unique=False,verbose_name='采购日期' )
    suoshubumen=models.CharField ( max_length=255, null=True, unique=False,verbose_name='所属部门' )
    dangqianweizhi=models.CharField ( max_length=255, null=True, unique=False,verbose_name='当前位置' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='用户名' )
    xingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='手机' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False,verbose_name='审核回复' )
    '''
    shebeibianhao=VARCHAR
    shebeimingcheng=VARCHAR
    fenlei=VARCHAR
    zhejiulv=VARCHAR
    tupian=VARCHAR
    shuliang=Integer
    shengchanshang=VARCHAR
    caigouriqi=VARCHAR
    suoshubumen=VARCHAR
    dangqianweizhi=VARCHAR
    yonghuming=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'shebeirenling'
        verbose_name = verbose_name_plural = '设备认领'
