### SqlServer脚本

- 创建数据库：CreateDatabase.sql
- 系统表列查询：SystemQuery
- 创建表值函数：FunctionTable.sql
- 创建标量值函数：FunctionValue.sql

- 截断数据库日志：CutLog.sql
- 数据备份：Backup.sql
- 还原数据库：Restore.sql

- 日期转换：DateVarchar.sql [转换示例](https://github.com/colindcli/CodeGit/blob/master/SqlServer/images/date.png)
- 分割字符串：FnStringSplit.sql
- 查找区间日期：BetweenDate.sql
- 编译执行时间：ExcuteTime.sql
- 修改表备注：Description.sql


## 查询

- 连续排序：ROW_NUMBER()OVER(ORDER BY t.TypeId ASC) Id
- 分组连续排序：ROW_NUMBER()OVER(PARTITION BY t.TypeId ORDER BY t.CreateDate DESC) Id，取每组第一条则：Id=1

- 跳跃排序：RANK()OVER(ORDER BY t.TypeId ASC) [如成绩排名]
- 分组跳跃排序：DENSE_RANK()OVER(PARTITION BY t.TypeId ORDER BY t.CreateDate DESC)


## Sqlserver2012 清除服务器连接记录 | 清除SQL Server Management账号密码保存记录

- C:\Users\Administrator\AppData\Roaming\Microsoft\SQL Server Management Studio\11.0\SqlStudio.bin


## 数据库连接面板： https://www.cnblogs.com/zfanlong1314/p/3577465.html

- Microsoft.Data.ConnectionUI.Dialog.dll