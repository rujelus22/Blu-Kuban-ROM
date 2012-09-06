.class public Lcom/estrongs/android/pop/netfs/utils/Statistics;
.super Ljava/lang/Object;


# static fields
.field private static final COLUMN_BAIDU_NUM:Ljava/lang/String; = "nbnum"

.field private static final COLUMN_BR_NUM:Ljava/lang/String; = "brnum"

.field private static final COLUMN_CANCEL_BAIDU_NUM:Ljava/lang/String; = "cbnum"

.field private static final COLUMN_DB_VERION:Ljava/lang/String; = "dbver"

.field private static final COLUMN_DL_NUM:Ljava/lang/String; = "donum"

.field private static final COLUMN_NET_TYPE:Ljava/lang/String; = "nettype"

.field private static final COLUMN_NEW_NUM:Ljava/lang/String; = "nnum"

.field private static final COLUMN_RG_NUM:Ljava/lang/String; = "rnum"

.field private static final COLUMN_SEND_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_UL_NUM:Ljava/lang/String; = "ulnum"

.field private static final COLUMN_USE_NUM:Ljava/lang/String; = "unum"

.field private static final date_table:Ljava/lang/String; = "dateinfo"

.field private static db:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static final dbname:Ljava/lang/String; = "Stat"

.field private static dbpath:Ljava/lang/String; = null

.field private static final dbver:I = 0x3

.field private static des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus; = null

.field public static macaddr:Ljava/lang/String; = null

.field private static final stat_table:Ljava/lang/String; = "statinfo"

.field private static final version_table:Ljava/lang/String; = "dbversion"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->macaddr:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addBowseCount(I)V
    .registers 3

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addBowseCount(II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized addBowseCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "brnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addCancelBaiduCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "cbnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static addCount(ILjava/lang/String;I)V
    .registers 12

    const/4 v8, 0x0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "statinfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nettype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_ab
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_a0

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_54

    :cond_2a
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO statinfo (nettype,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") values("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_b3
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4e} :catch_b5

    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    :try_start_54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE statinfo SET "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "nettype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_b3
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9a} :catch_b5

    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catch_a0
    move-exception v0

    move-object v1, v8

    :goto_a2
    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b3

    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catchall_ab
    move-exception v0

    move-object v1, v8

    :goto_ad
    if-eqz v1, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v0

    :catchall_b3
    move-exception v0

    goto :goto_ad

    :catch_b5
    move-exception v0

    goto :goto_a2
.end method

.method public static declared-synchronized addDownloadCount(I)V
    .registers 3

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addDownloadCount(II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized addDownloadCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "donum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addNewBaiduCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "nbnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addNewCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "nnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addRegCount(I)V
    .registers 3

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addRegCount(II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized addRegCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "rnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addUploadCount(I)V
    .registers 3

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUploadCount(II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized addUploadCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "ulnum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addUseCount(I)V
    .registers 3

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUseCount(II)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized addUseCount(II)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    const-string v0, "unum"

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCount(ILjava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized checkUpload(I)V
    .registers 7

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_1e

    :try_start_7
    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;

    const-string v2, "MTc0OTUwOTEzMTU4ODM4NDYxOTk"

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_16

    :goto_10
    :try_start_10
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1b

    if-nez v0, :cond_1e

    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_10

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1e
    :try_start_1e
    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getSendTime(I)I

    move-result v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-nez v0, :cond_35

    invoke-static {p0, v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->setSendTime(II)Z

    goto :goto_14

    :cond_35
    sub-int v3, v2, v0

    const v4, 0x15180

    if-lt v3, v4, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getStatInfo(I)Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->cleanStat(I)V

    invoke-static {p0, v2}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->setSendTime(II)Z

    iput v0, v3, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->time:I

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getInfoString(Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EEE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Send Stat Str:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_1e .. :try_end_64} :catchall_1b

    :try_start_64
    sget-object v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;->des:Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encrypt([B)[B

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;

    const-string v4, "http://update.estrongs.com/stats"

    invoke-direct {v2, v4}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->setUploadEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->setPrivateArg(Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$1;

    invoke-direct {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$1;-><init>()V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->setNotifyListener(Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Content-Type"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "application/octet-stream"

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->setHttpParams([Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->startUpload()V
    :try_end_9b
    .catchall {:try_start_64 .. :try_end_9b} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_9b} :catch_9d

    goto/16 :goto_14

    :catch_9d
    move-exception v0

    :try_start_9e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_1b

    goto/16 :goto_14
.end method

.method public static declared-synchronized cleanStat(I)V
    .registers 4

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_21

    if-nez v0, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE statinfo SET ulnum=0,donum=0,unum=0,rnum=0,brnum=0,nnum=0,nbnum=0,cbnum=0 WHERE nettype="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_a

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_a

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static createDB()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_78

    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_82

    :try_start_b
    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_b .. :try_end_12} :catch_79
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_87

    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Stat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8c

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Stat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_12 .. :try_end_76} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_76} :catch_87

    if-nez v0, :cond_8c

    :cond_78
    :goto_78
    return-void

    :catch_79
    move-exception v0

    move-object v1, v2

    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_81} :catch_82

    goto :goto_78

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    :cond_8c
    const-string v0, "CREATE TABLE IF NOT EXISTS statinfo (nettype INTEGER PRIMARY KEY,donum INTEGER,ulnum INTEGER,brnum INTEGER,rnum INTEGER,unum INTEGER)"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS dateinfo (nettype PRIMARY KEY,date INTEGER)"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS dbversion (dbver INTEGER UNIQUE)"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getDBVersion()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->updateDatabase(I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a8} :catch_82

    goto :goto_78

    :catch_a9
    move-exception v0

    goto :goto_7b
.end method

.method private static getDBVersion()I
    .registers 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dbversion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dbver"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_3b

    move-result-object v1

    if-eqz v1, :cond_1f

    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2d

    :cond_1f
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO dbversion (dbver) values(3)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_51

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2b
    move v0, v8

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_51

    move-result v0

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    :catch_3b
    move-exception v0

    move-object v1, v9

    :goto_3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4f

    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    move v0, v8

    goto :goto_2c

    :catchall_47
    move-exception v0

    move-object v1, v9

    :goto_49
    if-eqz v1, :cond_4e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0

    :catchall_4f
    move-exception v0

    goto :goto_49

    :catch_51
    move-exception v0

    goto :goto_3d
.end method

.method private static getInfoString(Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;I)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "n="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "b="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->b_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "u="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->u_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "d="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->d_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "l="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->l_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "k=0,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "r="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->r_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "t="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nn="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->n_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nb="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->nb_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cb="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->cb_num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "m="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->macaddr:Ljava/lang/String;

    if-nez v0, :cond_129

    const-string v0, "11:11:11:11:11:11"

    :goto_119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_129
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->macaddr:Ljava/lang/String;

    goto :goto_119
.end method

.method public static declared-synchronized getMacAddr(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->macaddr:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->macaddr:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_20

    goto :goto_7

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSendTime(I)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v10

    :try_start_5
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_69

    if-nez v0, :cond_f

    move v0, v8

    :cond_d
    :goto_d
    monitor-exit v10

    return v0

    :cond_f
    :try_start_f
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dateinfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nettype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_6c

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5b

    :cond_3a
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO dateinfo (nettype,date) values("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_54} :catch_82

    if-eqz v1, :cond_59

    :try_start_56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_69

    :cond_59
    move v0, v8

    goto :goto_d

    :cond_5b
    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_82

    move-result v0

    if-eqz v1, :cond_d

    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_d

    :catchall_69
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_6c
    move-exception v0

    move-object v1, v9

    :goto_6e
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_80

    if-eqz v1, :cond_76

    :try_start_73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    move v0, v8

    goto :goto_d

    :catchall_78
    move-exception v0

    move-object v1, v9

    :goto_7a
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_69

    :catchall_80
    move-exception v0

    goto :goto_7a

    :catch_82
    move-exception v0

    goto :goto_6e
.end method

.method public static declared-synchronized getStatInfo(I)Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;
    .registers 11

    const/4 v8, 0x0

    const-class v9, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v9

    :try_start_4
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_ad

    if-nez v0, :cond_e

    move-object v0, v8

    :cond_c
    :goto_c
    monitor-exit v9

    return-object v0

    :cond_e
    :try_start_e
    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "statinfo"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "donum"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "brnum"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ulnum"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "unum"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "rnum"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "nnum"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "nbnum"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "cbnum"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nettype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_54} :catch_b0

    move-result-object v1

    if-eqz v1, :cond_5d

    :try_start_57
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_c7

    move-result v0

    if-nez v0, :cond_64

    :cond_5d
    if-eqz v1, :cond_62

    :try_start_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_ad

    :cond_62
    move-object v0, v8

    goto :goto_c

    :cond_64
    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;

    invoke-direct {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;-><init>()V

    iput p0, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->b_num:I

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->d_num:I

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->u_num:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->l_num:I

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->r_num:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->n_num:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->nb_num:I

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->cb_num:I
    :try_end_a6
    .catchall {:try_start_64 .. :try_end_a6} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a6} :catch_c7

    if-eqz v1, :cond_c

    :try_start_a8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ad

    goto/16 :goto_c

    :catchall_ad
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_b0
    move-exception v0

    move-object v1, v8

    :goto_b2
    :try_start_b2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c4

    if-eqz v1, :cond_ba

    :try_start_b7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ba
    move-object v0, v8

    goto/16 :goto_c

    :catchall_bd
    move-exception v0

    :goto_be
    if-eqz v8, :cond_c3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c3
    throw v0
    :try_end_c4
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_ad

    :catchall_c4
    move-exception v0

    move-object v8, v1

    goto :goto_be

    :catch_c7
    move-exception v0

    goto :goto_b2
.end method

.method public static sendKingSoftLoginMsg()V
    .registers 0

    return-void
.end method

.method public static setPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-object p0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    :goto_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics;->dbpath:Ljava/lang/String;

    goto :goto_a
.end method

.method public static declared-synchronized setSendTime(II)Z
    .registers 6

    const/4 v0, 0x0

    const-class v2, Lcom/estrongs/android/pop/netfs/utils/Statistics;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->createDB()V

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3e

    if-nez v1, :cond_d

    :goto_b
    monitor-exit v2

    return v0

    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE dateinfo SET date="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "nettype"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_39

    const/4 v0, 0x1

    goto :goto_b

    :catch_39
    move-exception v1

    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_b

    :catchall_3e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static updateDatabase(I)V
    .registers 3

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1e

    :try_start_3
    const-string v0, "ALTER TABLE statinfo ADD rnum INTEGER"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE statinfo SET rnum =0"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_19

    :cond_11
    :goto_11
    :try_start_11
    const-string v0, "UPDATE dbversion SET dbver=3"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_43

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_1e
    const/4 v0, 0x3

    if-ge p0, v0, :cond_11

    :try_start_21
    const-string v0, "ALTER TABLE statinfo ADD nnum INTEGER"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE statinfo ADD nbnum INTEGER"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE statinfo ADD cbnum INTEGER"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE statinfo SET nnum =0,nbnum=0,cbnum=0"

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/Statistics;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3d} :catch_3e

    goto :goto_11

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :catch_43
    move-exception v0

    goto :goto_18
.end method
