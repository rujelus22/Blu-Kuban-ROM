.class public Lcom/sec/android/providers/downloads/SecHandlerThread;
.super Ljava/lang/Thread;
.source "SecHandlerThread.java"


# static fields
.field private static MAX_DELAY:I


# instance fields
.field private ErrorStatus:I

.field private NewfileName:Ljava/lang/String;

.field private mActualMime:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

.field private mSavePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->MAX_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V
    .registers 5
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 58
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    .line 62
    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->NewfileName:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mTitle:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private declared-synchronized DrmSDSSDInstallProcess(Landroid/drm/DrmManagerClient;Ljava/lang/String;I)Z
    .registers 16
    .parameter "mDrmManager"
    .parameter "FilePath"
    .parameter "MaxLength"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 572
    monitor-enter p0

    :try_start_3
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v9, 0xf

    const-string v10, "application/vnd.oma.drm.content"

    invoke-direct {v2, v9, v10}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 573
    .local v2, drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    const-string v9, "drm_path"

    invoke-virtual {v2, v9, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    const-string v9, "SecDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecHandlerThread : DrmSDSSDInstallProcess  Drm Info Request created with mimetype "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p1, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 576
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v9, "status"

    invoke-virtual {v1, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, status_req1:Ljava/lang/String;
    const-string v9, "SecDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecHandlerThread : DrmSDSSDInstallProcess  processRequest status is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v9, "success"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 579
    const-string v9, "SecDownloader"

    const-string v10, "SecHandlerThread : DrmSDSSDInstallProcess :TYPE_GET_PERMISSION_TYPE  processdrmRequest Success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v9, Ljava/lang/String;

    const-string v10, "permission"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 592
    .local v4, permissionType:I
    const/4 v6, 0x1

    .local v6, timedelaty:I
    :goto_76
    if-ge v6, p3, :cond_83

    .line 593
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 595
    invoke-virtual {p1, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_80} :catch_91

    move-result v0

    .line 600
    .local v0, ValidRight:I
    if-eq v7, v0, :cond_8e

    .line 614
    .end local v0           #ValidRight:I
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .end local v4           #permissionType:I
    .end local v5           #status_req1:Ljava/lang/String;
    .end local v6           #timedelaty:I
    :cond_83
    :goto_83
    monitor-exit p0

    return v7

    .line 582
    .restart local v1       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v2       #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .restart local v5       #status_req1:Ljava/lang/String;
    :cond_85
    :try_start_85
    const-string v7, "SecDownloader"

    const-string v9, "SecHandlerThread : DrmSDSSDInstallProcess :TYPE_GET_PERMISSION_TYPE  processdrmRequest Fail"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_91

    move v7, v8

    .line 583
    goto :goto_83

    .line 592
    .restart local v0       #ValidRight:I
    .restart local v4       #permissionType:I
    .restart local v6       #timedelaty:I
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 607
    .end local v0           #ValidRight:I
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .end local v4           #permissionType:I
    .end local v5           #status_req1:Ljava/lang/String;
    .end local v6           #timedelaty:I
    :catch_91
    move-exception v3

    .line 608
    .local v3, e:Ljava/lang/Exception;
    :try_start_92
    const-string v7, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : DrmSDSSDInstallProcess : Handle Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_92 .. :try_end_ae} :catchall_b0

    move v7, v8

    .line 609
    goto :goto_83

    .line 572
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_b0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized InstallDrmContentORDcf(Ljava/lang/String;I)Z
    .registers 15
    .parameter "FilePath"
    .parameter "MaxLength"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    monitor-enter p0

    :try_start_4
    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v8, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9a

    .line 414
    .local v4, mDrmManager:Landroid/drm/DrmManagerClient;
    :try_start_b
    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    .line 415
    const-string v8, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : InstallDrmContentORDcf : ActualMimeType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v8, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 418
    const-string v7, "SecDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecHandlerThread : InstallDrmContentORDcf : Not Sopprted Mime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v7, 0x196

    iput v7, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_53} :catch_7c

    .line 460
    :goto_53
    monitor-exit p0

    return v6

    .line 423
    :cond_55
    :try_start_55
    iget-object v8, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/android/providers/downloads/SecHelpers;->IsDrmSupportedMime(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 424
    const-string v7, "SecDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecHandlerThread : InstallDrmContentORDcf : Drm Not Sopprted Mime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/16 v7, 0x196

    iput v7, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I
    :try_end_7b
    .catchall {:try_start_55 .. :try_end_7b} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7b} :catch_7c

    goto :goto_53

    .line 456
    :catch_7c
    move-exception v3

    .line 457
    .local v3, e:Ljava/lang/Exception;
    :try_start_7d
    const-string v7, "SecDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecHandlerThread : InstallDrmContentORDcf : Handle Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_9a

    goto :goto_53

    .line 412
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #mDrmManager:Landroid/drm/DrmManagerClient;
    :catchall_9a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 429
    .restart local v4       #mDrmManager:Landroid/drm/DrmManagerClient;
    :cond_9d
    :try_start_9d
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v8, 0xe

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v2, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 430
    .local v2, drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    const-string v8, "drm_path"

    invoke-virtual {v2, v8, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    const-string v8, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : InstallDrmContentORDcf  Drm Info Request created with mimetype "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 433
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v8, "status"

    invoke-virtual {v1, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, status_req1:Ljava/lang/String;
    const-string v8, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : InstallDrmContentORDcf  processRequest status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v8, "success"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_179

    .line 436
    const-string v8, "SecDownloader"

    const-string v9, "SecHandlerThread : InstallDrmContentORDcf : processdrmRequest Success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 444
    .local v0, DrmInfo:[I
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    const-string v10, "version"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v0, v8

    .line 445
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/String;

    const-string v10, "type"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v0, v8

    .line 447
    const-string v8, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : InstallDrmContentORDcf Drm Version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v8, "SecDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecHandlerThread : InstallDrmContentORDcf Drm Type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v8, 0x1

    aget v8, v0, v8

    if-eq v8, v11, :cond_16c

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_182

    .line 453
    :cond_16c
    const-string v7, "SecDownloader"

    const-string v8, "SecHandlerThread InstallDrmContentORDcf : SDl SSD RO waiting process"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, v4, p1, p2}, Lcom/sec/android/providers/downloads/SecHandlerThread;->DrmSDSSDInstallProcess(Landroid/drm/DrmManagerClient;Ljava/lang/String;I)Z

    move-result v6

    goto/16 :goto_53

    .line 439
    .end local v0           #DrmInfo:[I
    :cond_179
    const-string v7, "SecDownloader"

    const-string v8, "SecHandlerThread : InstallDrmContentORDcf : processdrmRequest Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_9d .. :try_end_180} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_180} :catch_7c

    goto/16 :goto_53

    .restart local v0       #DrmInfo:[I
    :cond_182
    move v6, v7

    .line 460
    goto/16 :goto_53
.end method

.method private declared-synchronized InstallDrmMessage(Ljava/lang/String;)Z
    .registers 29
    .parameter "FilePath"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    new-instance v16, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 267
    .local v16, mDrmManager:Landroid/drm/DrmManagerClient;
    new-instance v11, Landroid/drm/DrmInfoRequest;

    const/16 v23, 0x7

    const-string v24, "application/vnd.oma.drm.content"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 268
    .local v11, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v23, "drm_path"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v23, "status"

    const-string v24, "fail"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage: Drm Info Request created with mimetype "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 272
    .local v8, drmInfo:Landroid/drm/DrmInfo;
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 273
    .local v19, status_req1:Ljava/lang/String;
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage: processRequest status is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v23, "success"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13d

    .line 275
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage: processdrmRequest Success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v23, "drm_path"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 281
    .local v17, pathname_dest:Ljava/lang/Object;
    if-eqz v17, :cond_147

    .line 282
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage: processdrmRequest output filepath is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v15, file2:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 285
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .line 287
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage: processdrmRequest_register Success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v15           #file2:Ljava/io/File;
    :goto_d5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    .line 293
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage : ActualMimeType "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_16f

    .line 295
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage : Not Supported Mime "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v23, 0x196

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I
    :try_end_139
    .catchall {:try_start_1 .. :try_end_139} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_139} :catch_14f

    .line 297
    const/16 v23, 0x0

    .line 407
    .end local v8           #drmInfo:Landroid/drm/DrmInfo;
    .end local v11           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v16           #mDrmManager:Landroid/drm/DrmManagerClient;
    .end local v17           #pathname_dest:Ljava/lang/Object;
    .end local v19           #status_req1:Ljava/lang/String;
    :goto_13b
    monitor-exit p0

    return v23

    .line 277
    .restart local v8       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v11       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v16       #mDrmManager:Landroid/drm/DrmManagerClient;
    .restart local v19       #status_req1:Ljava/lang/String;
    :cond_13d
    :try_start_13d
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage: processdrmRequest Fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v23, 0x0

    goto :goto_13b

    .line 289
    .restart local v17       #pathname_dest:Ljava/lang/Object;
    :cond_147
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage: processdrmRequest_convert no file path"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_13d .. :try_end_14e} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_14e} :catch_14f

    goto :goto_d5

    .line 403
    .end local v8           #drmInfo:Landroid/drm/DrmInfo;
    .end local v11           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v16           #mDrmManager:Landroid/drm/DrmManagerClient;
    .end local v17           #pathname_dest:Ljava/lang/Object;
    .end local v19           #status_req1:Ljava/lang/String;
    :catch_14f
    move-exception v14

    .line 404
    .local v14, e:Ljava/lang/Exception;
    :try_start_150
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage : Handle Exception"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catchall {:try_start_150 .. :try_end_16c} :catchall_4c6

    .line 405
    const/16 v23, 0x0

    goto :goto_13b

    .line 300
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v8       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v11       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v16       #mDrmManager:Landroid/drm/DrmManagerClient;
    .restart local v17       #pathname_dest:Ljava/lang/Object;
    .restart local v19       #status_req1:Ljava/lang/String;
    :cond_16f
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/providers/downloads/SecHelpers;->IsDrmSupportedMime(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1a4

    .line 301
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage : Drm Not Supported Mime "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v23, 0x196

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    .line 303
    const/16 v23, 0x0

    goto :goto_13b

    .line 306
    :cond_1a4
    new-instance v12, Landroid/drm/DrmInfoRequest;

    const/16 v23, 0xe

    const-string v24, "application/vnd.oma.drm.content"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 307
    .local v12, drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    const-string v23, "drm_path"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage TYPE_GET_DRMFILE_INFO  Drm Info Request created with mimetype "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v9

    .line 310
    .local v9, drmInfo2:Landroid/drm/DrmInfo;
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 311
    .local v20, status_req2:Ljava/lang/String;
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage  processRequest status is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v23, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_316

    .line 313
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage : TYPE_GET_DRMFILE_INFO processdrmRequest Success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v6, v0, [I

    .line 319
    .local v6, DrmFileInfo:[I
    const/16 v23, 0x0

    new-instance v24, Ljava/lang/String;

    const-string v25, "version"

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    aput v24, v6, v23

    .line 320
    const/16 v23, 0x1

    new-instance v24, Ljava/lang/String;

    const-string v25, "type"

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    aput v24, v6, v23

    .line 322
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage Drm Version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v6, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage Drm Type : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v6, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_321

    .line 327
    const/16 v23, 0x1

    aget v23, v6, v23

    if-eqz v23, :cond_321

    .line 328
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : Not Supported Drm Type: "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v23, 0x196

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    .line 336
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f03000d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : Deleting Not Supported Drm Type file: "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->NewfileName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v5, DrmFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 351
    const/16 v23, 0x0

    goto/16 :goto_13b

    .line 315
    .end local v5           #DrmFile:Ljava/io/File;
    .end local v6           #DrmFileInfo:[I
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_316
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage : TYPE_GET_DRMFILE_INFO processdrmRequest Fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v23, 0x0

    goto/16 :goto_13b

    .line 356
    .restart local v6       #DrmFileInfo:[I
    :cond_321
    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_420

    .line 357
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage : InvalidDrmType DRM2_TYPE_UNDEFINE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_334
    new-instance v13, Landroid/drm/DrmInfoRequest;

    const/16 v23, 0xf

    const-string v24, "application/vnd.oma.drm.content"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 371
    .local v13, drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    const-string v23, "drm_path"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage  Drm Info Request created with mimetype "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v13}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v10

    .line 374
    .local v10, drmInfo3:Landroid/drm/DrmInfo;
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 375
    .local v21, status_req3:Ljava/lang/String;
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage  processRequest status is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v23, "success"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4b7

    .line 377
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage :TYPE_GET_PERMISSION_TYPE  processdrmRequest Success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v23, Ljava/lang/String;

    const-string v24, "permission"

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 386
    .local v18, permissionType:I
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : InstallDrmMessage : Validate Rights - Permission Type == "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v7

    .line 390
    .local v7, ValidRight:I
    const-string v23, "SecDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SecHandlerThread : checkRightsStatus : Return Value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v7, :cond_4c2

    .line 394
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage : Rights Validation Failed but still enable the download"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4c2

    .line 398
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage :CscFeatureTag_Web_Bool_BlockSDCDDownload "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v23, 0x0

    goto/16 :goto_13b

    .line 358
    .end local v7           #ValidRight:I
    .end local v10           #drmInfo3:Landroid/drm/DrmInfo;
    .end local v13           #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .end local v18           #permissionType:I
    .end local v21           #status_req3:Ljava/lang/String;
    :cond_420
    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_438

    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_334

    .line 359
    :cond_438
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage : spl SSD RO waiting process"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .restart local v22       #values:Landroid/content/ContentValues;
    const-string v23, "status"

    const/16 v24, 0xbc

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string v23, "state"

    const/16 v24, 0x5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v23, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mOmaSdDeliveryTime:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecHandlerThread;->DrmSDSSDInstallProcess(Landroid/drm/DrmManagerClient;Ljava/lang/String;I)Z

    move-result v23

    goto/16 :goto_13b

    .line 380
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v10       #drmInfo3:Landroid/drm/DrmInfo;
    .restart local v13       #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .restart local v21       #status_req3:Ljava/lang/String;
    :cond_4b7
    const-string v23, "SecDownloader"

    const-string v24, "SecHandlerThread : InstallDrmMessage :TYPE_GET_PERMISSION_TYPE  processdrmRequest Fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4be
    .catchall {:try_start_16f .. :try_end_4be} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_4be} :catch_14f

    .line 381
    const/16 v23, 0x0

    goto/16 :goto_13b

    .line 407
    .restart local v7       #ValidRight:I
    .restart local v18       #permissionType:I
    :cond_4c2
    const/16 v23, 0x1

    goto/16 :goto_13b

    .line 265
    .end local v6           #DrmFileInfo:[I
    .end local v7           #ValidRight:I
    .end local v8           #drmInfo:Landroid/drm/DrmInfo;
    .end local v9           #drmInfo2:Landroid/drm/DrmInfo;
    .end local v10           #drmInfo3:Landroid/drm/DrmInfo;
    .end local v11           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v12           #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .end local v13           #drmInfoRequest_drmPermissionType:Landroid/drm/DrmInfoRequest;
    .end local v16           #mDrmManager:Landroid/drm/DrmManagerClient;
    .end local v17           #pathname_dest:Ljava/lang/Object;
    .end local v18           #permissionType:I
    .end local v19           #status_req1:Ljava/lang/String;
    .end local v20           #status_req2:Ljava/lang/String;
    .end local v21           #status_req3:Ljava/lang/String;
    :catchall_4c6
    move-exception v23

    monitor-exit p0

    throw v23
.end method

.method private declared-synchronized MoveFileIntoSaveLocation()Z
    .registers 16

    .prologue
    .line 464
    monitor-enter p0

    const/4 v9, 0x0

    .line 465
    .local v9, savePath:Ljava/lang/String;
    :try_start_2
    const-string v11, "SecDownloader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SecHandlerThread : MoveFileIntoSaveLocation : File to be MOVED "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v13, v13, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v11, v11, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, fsrc:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_36

    .line 472
    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/16 v12, 0x1eb

    iput v12, v11, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_103

    .line 473
    const/4 v11, 0x0

    .line 527
    :goto_34
    monitor-exit p0

    return v11

    .line 475
    :cond_36
    :try_start_36
    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v11, v12}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSavePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 477
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 478
    .local v6, index:I
    if-lez v6, :cond_106

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    if-gt v6, v11, :cond_106

    .line 480
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, extension:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, NewFileName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9f

    .line 485
    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v12, v12

    iget-object v14, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v14, v14, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v11, v12, v13, v14}, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->GetNewFilePath(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_9f
    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v11, v11, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    const/4 v12, 0x0

    invoke-static {v11, v0, v3, v12}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, fullFilename:Ljava/lang/String;
    if-eqz v5, :cond_106

    .line 491
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v8, newfile:Ljava/io/File;
    invoke-virtual {v4, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 495
    iput-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    .line 499
    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    const/16 v12, 0x1a4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 500
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v12}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v12

    if-ne v11, v12, :cond_f8

    .line 505
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0x8

    const-string v12, "application/vnd.oma.drm.content"

    invoke-direct {v2, v11, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 506
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    new-instance v7, Landroid/drm/DrmManagerClient;

    iget-object v11, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 508
    .local v7, mDrmManager:Landroid/drm/DrmManagerClient;
    invoke-virtual {v7, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 509
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v1, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, status_req1:Ljava/lang/String;
    const-string v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fb

    .line 520
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v7           #mDrmManager:Landroid/drm/DrmManagerClient;
    .end local v10           #status_req1:Ljava/lang/String;
    :cond_f8
    :goto_f8
    const/4 v11, 0x1

    goto/16 :goto_34

    .line 517
    .restart local v1       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v7       #mDrmManager:Landroid/drm/DrmManagerClient;
    .restart local v10       #status_req1:Ljava/lang/String;
    :cond_fb
    const-string v11, "SecDownloader"

    const-string v12, "SecHandlerThread : MoveFileIntoSaveLocation :TYPE_REGISTER_DRM_FILE  processdrmRequest Fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_36 .. :try_end_102} :catchall_103

    goto :goto_f8

    .line 464
    .end local v0           #NewFileName:Ljava/lang/String;
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #extension:Ljava/lang/String;
    .end local v4           #fsrc:Ljava/io/File;
    .end local v5           #fullFilename:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #mDrmManager:Landroid/drm/DrmManagerClient;
    .end local v8           #newfile:Ljava/io/File;
    .end local v10           #status_req1:Ljava/lang/String;
    :catchall_103
    move-exception v11

    monitor-exit p0

    throw v11

    .line 527
    .restart local v4       #fsrc:Ljava/io/File;
    .restart local v6       #index:I
    :cond_106
    const/4 v11, 0x0

    goto/16 :goto_34
.end method

.method private processDrmInstall()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x28a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_c1

    .line 148
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v5

    if-ne v5, v4, :cond_33

    .line 149
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportedDrmMime(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 150
    iget v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    if-eqz v4, :cond_2e

    .line 151
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    iput v5, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 204
    :goto_2d
    return v3

    .line 153
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iput v7, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto :goto_2d

    .line 159
    :cond_33
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v6, "application/vnd.oma.drm.message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 160
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .line 161
    .local v0, DmFile:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/providers/downloads/SecHandlerThread;->InstallDrmMessage(Ljava/lang/String;)Z

    move-result v1

    .line 170
    .local v1, FlagInstall:Z
    if-nez v1, :cond_c1

    .line 174
    iget v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    if-eqz v4, :cond_54

    .line 175
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    iput v5, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto :goto_2d

    .line 177
    :cond_54
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iput v7, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto :goto_2d

    .line 184
    .end local v0           #DmFile:Ljava/lang/String;
    .end local v1           #FlagInstall:Z
    :cond_59
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v6, "application/vnd.oma.drm.content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v6, "application/vnd.oma.drm.dcf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 187
    :cond_71
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "status"

    const/16 v6, 0xbc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v5, "state"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v6, v6, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mOmaSdDeliveryTime:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/providers/downloads/SecHandlerThread;->InstallDrmContentORDcf(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 195
    iget v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    if-eqz v4, :cond_b9

    .line 196
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    iput v5, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto/16 :goto_2d

    .line 198
    :cond_b9
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/16 v5, 0x26c

    iput v5, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto/16 :goto_2d

    .end local v2           #values:Landroid/content/ContentValues;
    :cond_c1
    move v3, v4

    .line 204
    goto/16 :goto_2d
.end method

.method private validateDownloadedContent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "contentLocation"
    .parameter "contentType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    if-eqz p2, :cond_5

    .line 258
    :cond_4
    :goto_4
    return v5

    .line 213
    :cond_5
    const-string v7, "application/vnd.android.package"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 214
    iget-object v7, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 215
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 217
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_23

    .line 218
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_21

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez v7, :cond_4

    :cond_21
    move v5, v6

    .line 219
    goto :goto_4

    :cond_23
    move v5, v6

    .line 224
    goto :goto_4

    .line 226
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_25
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 228
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, bitMap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    move v5, v6

    .line 230
    goto :goto_4

    .line 235
    .end local v0           #bitMap:Landroid/graphics/Bitmap;
    :cond_33
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    :cond_3f
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 241
    .local v2, mp:Landroid/media/MediaPlayer;
    :try_start_44
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 242
    new-instance v6, Lcom/sec/android/providers/downloads/SecHandlerThread$1;

    invoke-direct {v6, p0}, Lcom/sec/android/providers/downloads/SecHandlerThread$1;-><init>(Lcom/sec/android/providers/downloads/SecHandlerThread;)V

    invoke-virtual {v2, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 249
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 250
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_57} :catch_58

    goto :goto_4

    .line 254
    :catch_58
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecHandlerThread : validateDownloadedContent : Handle Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 68
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, Result:Z
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecHandlerThread;->processDrmInstall()Z

    move-result v3

    if-ne v5, v3, :cond_2a

    .line 75
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v4, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/android/providers/downloads/SecHandlerThread;->validateDownloadedContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-ne v5, v3, :cond_2a

    .line 76
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecHandlerThread;->MoveFileIntoSaveLocation()Z

    move-result v3

    if-ne v5, v3, :cond_2a

    .line 80
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/16 v4, 0xca

    iput v4, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 81
    const/4 v1, 0x1

    .line 86
    :cond_2a
    if-nez v1, :cond_4e

    .line 88
    iget v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    if-eqz v3, :cond_b8

    .line 89
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->ErrorStatus:I

    iput v4, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 97
    :goto_36
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, DownloadFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    .end local v0           #DownloadFile:Ljava/io/File;
    :cond_4e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    if-eqz v3, :cond_72

    .line 112
    const-string v3, "_data"

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mSavePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mTitle:Ljava/lang/String;

    .line 115
    const-string v3, "title"

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_72
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    if-eqz v3, :cond_7d

    .line 118
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mActualMime:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_7d
    const-string v3, "status"

    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v4, v4, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v3}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 123
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    if-eqz v3, :cond_c0

    .line 124
    const-string v3, "state"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    :goto_a3
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    return-void

    .line 91
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_b8
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/16 v4, 0x196

    iput v4, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    goto/16 :goto_36

    .line 126
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_c0
    const-string v3, "state"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a3

    .line 128
    :cond_cc
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v3}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 129
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecHandlerThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    if-eqz v3, :cond_e6

    .line 130
    const-string v3, "state"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a3

    .line 132
    :cond_e6
    const-string v3, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a3

    .line 135
    :cond_f0
    const-string v3, "SecDownloader"

    const-string v4, "SecHandlerThread : run : Download Status Incorrect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a3
.end method
