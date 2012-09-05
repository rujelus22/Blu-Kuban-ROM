.class Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/cache/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "buildThumbnailsWorkerThread"
.end annotation


# instance fields
.field private context_:Landroid/content/Context;

.field private list_:Lcom/cooliris/cache/ImageList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1037
    const-string v0, "buildThumbnailsWorker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1038
    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    iget-object v1, v1, Lcom/cooliris/cache/ImageList;->ids:[J

    if-nez v1, :cond_36

    const/16 v18, 0x0

    .line 1043
    .local v18, size:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    iget-object v0, v1, Lcom/cooliris/cache/ImageList;->ids:[J

    move-object/from16 v16, v0

    .line 1044
    .local v16, ids:[J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    iget-object v0, v1, Lcom/cooliris/cache/ImageList;->timestamp:[J

    move-object/from16 v23, v0

    .line 1045
    .local v23, timestamp:[J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    iget-object v0, v1, Lcom/cooliris/cache/ImageList;->thumbids:[J

    move-object/from16 v20, v0

    .line 1046
    .local v20, thumbnailIds:[J
    sget-object v2, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    .line 1048
    .local v2, thumbnailCache:Lcom/cooliris/media/DiskCache;
    sget-object v1, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x4

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v12

    .line 1049
    .local v12, current_count:I
    sub-int v19, v18, v12

    .line 1050
    .local v19, start_position:I
    const/4 v1, 0x4

    if-ge v12, v1, :cond_40

    add-int v14, v12, v19

    .line 1055
    .local v14, end_position:I
    :goto_32
    const/4 v1, 0x1

    if-ge v12, v1, :cond_43

    .line 1098
    :goto_35
    return-void

    .line 1042
    .end local v2           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .end local v12           #current_count:I
    .end local v14           #end_position:I
    .end local v16           #ids:[J
    .end local v18           #size:I
    .end local v19           #start_position:I
    .end local v20           #thumbnailIds:[J
    .end local v23           #timestamp:[J
    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    iget-object v1, v1, Lcom/cooliris/cache/ImageList;->ids:[J

    array-length v0, v1

    move/from16 v18, v0

    goto :goto_a

    .line 1050
    .restart local v2       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .restart local v12       #current_count:I
    .restart local v16       #ids:[J
    .restart local v18       #size:I
    .restart local v19       #start_position:I
    .restart local v20       #thumbnailIds:[J
    .restart local v23       #timestamp:[J
    :cond_40
    add-int/lit8 v14, v19, 0x4

    goto :goto_32

    .line 1057
    .restart local v14       #end_position:I
    :cond_43
    move/from16 v15, v19

    .local v15, i:I
    :goto_45
    if-ge v15, v14, :cond_94

    .line 1058
    :try_start_47
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1059
    const-string v1, "CacheService"

    const-string v7, "buildThumbnailsWorkerThread_1 interrupt"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_54} :catch_55

    goto :goto_35

    .line 1095
    :catch_55
    move-exception v13

    .line 1096
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 1062
    .end local v13           #e:Ljava/lang/Exception;
    :cond_5a
    :try_start_5a
    aget-wide v5, v16, v15

    .line 1063
    .local v5, id:J
    aget-wide v21, v23, v15

    .line 1064
    .local v21, timeModifiedInSec:J
    aget-wide v3, v20, v15

    .line 1065
    .local v3, thumbnailId:J
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1066
    #calls: Lcom/cooliris/cache/CacheService;->isInThumbnailerSkipList(J)Z
    invoke-static {v3, v4}, Lcom/cooliris/cache/CacheService;->access$000(J)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1067
    const-wide/16 v7, 0x3e8

    mul-long v7, v7, v21

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->context_:Landroid/content/Context;

    const/4 v7, 0x0

    const/16 v8, 0x80

    const/16 v9, 0x60

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v21

    #calls: Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B
    invoke-static/range {v1 .. v11}, Lcom/cooliris/cache/CacheService;->access$100(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v17

    .line 1072
    .local v17, retVal:[B
    if-eqz v17, :cond_8e

    move-object/from16 v0, v17

    array-length v1, v0

    if-nez v1, :cond_91

    .line 1076
    :cond_8e
    #calls: Lcom/cooliris/cache/CacheService;->addToThumbnailerSkipList(J)V
    invoke-static {v3, v4}, Lcom/cooliris/cache/CacheService;->access$200(J)V

    .line 1057
    .end local v17           #retVal:[B
    :cond_91
    add-int/lit8 v15, v15, 0x1

    goto :goto_45

    .line 1090
    .end local v3           #thumbnailId:J
    .end local v5           #id:J
    .end local v21           #timeModifiedInSec:J
    :cond_94
    sget-object v1, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x4

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_9a} :catch_55

    move-result v12

    .line 1091
    sub-int v19, v18, v12

    .line 1092
    const/4 v1, 0x4

    if-ge v12, v1, :cond_a3

    add-int v14, v12, v19

    :goto_a2
    goto :goto_32

    :cond_a3
    add-int/lit8 v14, v19, 0x4

    goto :goto_a2
.end method

.method public setArguments(Landroid/content/Context;Lcom/cooliris/cache/ImageList;)V
    .registers 3
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->context_:Landroid/content/Context;

    .line 1105
    iput-object p2, p0, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->list_:Lcom/cooliris/cache/ImageList;

    .line 1107
    return-void
.end method
