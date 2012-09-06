.class public Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
.super Ljava/lang/Object;
.source "VideoDRMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DRM_DIVX_MODE_ACTIVATE_RENTAL:I = 0x4

.field private static final DRM_DIVX_MODE_RENTAL:I = 0x2

.field public static final RIGHTS_EXPIRED:I = 0x1

.field public static final RIGHTS_INVALID:I = 0x0

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x2

.field public static final RIGHTS_VALID:I = 0x3

.field public static final VIDEO_DIVX_EXIT:I = 0x28

.field public static final VIDEO_DRM_CONSTRAINTS_ACCUMULATED:I = 0xf

.field public static final VIDEO_DRM_CONSTRAINTS_COUNT:I = 0xb

.field public static final VIDEO_DRM_CONSTRAINTS_DATETIME:I = 0xd

.field public static final VIDEO_DRM_CONSTRAINTS_INDIVIDUAL:I = 0x10

.field public static final VIDEO_DRM_CONSTRAINTS_INTERVAL:I = 0xc

.field public static final VIDEO_DRM_CONSTRAINTS_NONE:I = 0xa

.field public static final VIDEO_DRM_CONSTRAINTS_TIMED_COUNT:I = 0xe

.field public static final VIDEO_DRM_CONSTRAINTS_UNLIMITED:I = 0x11

.field public static final VIDEO_DRM_DIVX:I = 0x3

.field public static final VIDEO_DRM_OMADRM:I = 0x1

.field public static final VIDEO_DRM_PRDRM:I = 0x2

.field public static final VIDEO_DRM_STR_DIVX_NOT_AUTHORIZED:I = 0x24

.field public static final VIDEO_DRM_STR_DIVX_NOT_REGISTERED:I = 0x25

.field public static final VIDEO_DRM_STR_DIVX_RENTAL_EXPIRED:I = 0x26

.field public static final VIDEO_DRM_STR_DIVX_RENTAL_INFO:I = 0x27

.field public static final VIDEO_DRM_STR_FIRST_INTERVAL_RENDER:I = 0x22

.field public static final VIDEO_DRM_STR_INVALID_CD:I = 0x20

.field public static final VIDEO_DRM_STR_INVALID_SD:I = 0x21

.field public static final VIDEO_DRM_STR_INVALID_WMDRM:I = 0x23

.field public static final VIDEO_DRM_STR_NULL:I = 0x1e

.field public static final VIDEO_DRM_STR_VALID_COUNT:I = 0x1f

.field public static final VIDEO_DRM_TYPE_CD:I = 0x1

.field public static final VIDEO_DRM_TYPE_FL:I = 0x0

.field public static final VIDEO_DRM_TYPE_SD:I = 0x2

.field public static final VIDEO_DRM_TYPE_SSD:I = 0x3

.field public static final VIDEO_NON_DRM:I = -0x1

.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

.field public static mPath:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrmClient:Landroid/drm/DrmManagerClient;

.field private mDrmType:I

.field private mOMADrmConstraint:[Ljava/lang/String;

.field private mOMADrmConstraintType:I

.field private mOMADrmDelivery:[Ljava/lang/String;

.field private mOMADrmDeliveryType:I

.field private mRightStatus:I

.field private mRightStatusString:[Ljava/lang/String;

.field mbShare:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 32
    const-string v0, "VideoDRMUtil"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 71
    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatus:I

    .line 93
    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 118
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v3

    const-string v1, "Count"

    aput-object v1, v0, v4

    const-string v1, "Interval"

    aput-object v1, v0, v5

    const-string v1, "DateTime"

    aput-object v1, v0, v6

    const-string v1, "Timed Count"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Accumulated"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Individual"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Unlimited"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraint:[Ljava/lang/String;

    .line 122
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "VIDEO_DRM_TYPE_FL"

    aput-object v1, v0, v3

    const-string v1, "VIDEO_DRM_TYPE_CD"

    aput-object v1, v0, v4

    const-string v1, "VIDEO_DRM_TYPE_SD"

    aput-object v1, v0, v5

    const-string v1, "VIDEO_DRM_TYPE_SSD"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDelivery:[Ljava/lang/String;

    .line 127
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "RIGHTS_INVALID"

    aput-object v1, v0, v3

    const-string v1, "RIGHTS_EXPIRED"

    aput-object v1, v0, v4

    const-string v1, "RIGHTS_NOT_ACQUIRED"

    aput-object v1, v0, v5

    const-string v1, "RIGHTS_VALID"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatusString:[Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    .line 156
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 157
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
    .registers 3
    .parameter "context"

    .prologue
    .line 160
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-nez v0, :cond_e

    .line 161
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 163
    :cond_e
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOMARemainedCnt(Ljava/lang/String;)I
    .registers 10
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    .line 571
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 574
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, p1, v6}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 575
    .local v3, rightDetails:Landroid/content/ContentValues;
    const-string v5, "license_category"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, licenseCategory:Ljava/lang/String;
    const-string v4, ""

    .line 577
    .local v4, validityRemainingCount:Ljava/lang/String;
    const/4 v2, 0x0

    .line 579
    .local v2, remainCnt:I
    if-eqz v1, :cond_47

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, license:I
    if-ne v0, v6, :cond_47

    .line 583
    const-string v5, "remaining_repeat_count"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOMARemainedCnt. validityRemainingCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v4, :cond_47

    .line 588
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 592
    .end local v0           #license:I
    :cond_47
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOMARemainedCnt. remainCnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v2
.end method

.method private initDrmMgrClient()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_d

    .line 188
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 189
    :cond_d
    return-void
.end method


# virtual methods
.method public checkIsDivx(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkIsDivx() - dummy for class comfortability."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v0, 0x0

    return v0
.end method

.method public checkIsDrm(Ljava/lang/String;)I
    .registers 9
    .parameter "filePath"

    .prologue
    .line 192
    if-nez p1, :cond_4

    .line 193
    const/4 v1, -0x1

    .line 228
    :goto_3
    return v1

    .line 195
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 197
    sput-object p1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 198
    const/4 v1, -0x1

    .line 200
    .local v1, drmType:I
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 206
    .local v2, isDrmSupported:Z
    if-eqz v2, :cond_72

    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, drmFileType:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmFile. drmFileType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-nez v0, :cond_52

    .line 211
    const/4 v1, -0x1

    .line 226
    .end local v0           #drmFileType:Ljava/lang/String;
    .end local v2           #isDrmSupported:Z
    :cond_37
    :goto_37
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmFile. drmType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 213
    .restart local v0       #drmFileType:Ljava/lang/String;
    .restart local v2       #isDrmSupported:Z
    :cond_52
    const-string v4, "divx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 214
    const/4 v1, 0x3

    goto :goto_37

    .line 215
    :cond_5c
    const-string v4, "omadrm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 216
    const/4 v1, 0x1

    goto :goto_37

    .line 217
    :cond_66
    const-string v4, "playready"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 218
    const/4 v1, 0x2

    goto :goto_37

    .line 220
    :cond_70
    const/4 v1, -0x1

    goto :goto_37

    .line 223
    .end local v0           #drmFileType:Ljava/lang/String;
    :cond_72
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "isDrmFile. canHandle returned false. Not a drm file by extension"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public checkIsNetworkConnected()Z
    .registers 4

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1278
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1279
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v2, "checkIsNetworkConnected() NO Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v1, 0x0

    .line 1283
    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x1

    goto :goto_25
.end method

.method public checkIsShare(J)Z
    .registers 16
    .parameter "videoId"

    .prologue
    .line 435
    sget-object v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v10, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, filePath:Ljava/lang/String;
    if-nez v6, :cond_11

    .line 439
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v11, "checkIsShare() - file path null. share!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x1

    .line 506
    :goto_10
    return v0

    .line 443
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 445
    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, mimeType:Ljava/lang/String;
    const/4 v5, -0x1

    .line 447
    .local v5, drmType:I
    const/4 v0, 0x1

    .line 450
    .local v0, bResult:Z
    if-eqz v8, :cond_43

    .line 451
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v10, v6, v8}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 453
    .local v7, isDrmSupported:Z
    if-eqz v7, :cond_c1

    .line 454
    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, drmFileType:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIsShare. drmFileType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-nez v2, :cond_a1

    .line 458
    const/4 v5, -0x1

    .line 475
    .end local v2           #drmFileType:Ljava/lang/String;
    .end local v7           #isDrmSupported:Z
    :cond_43
    :goto_43
    const/4 v10, 0x1

    if-ne v5, v10, :cond_cc

    .line 478
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v10, 0x10

    const-string v11, "application/vnd.oma.drm.content"

    invoke-direct {v4, v10, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 480
    .local v4, drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    const-string v10, "drm_path"

    invoke-virtual {v4, v10, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v10, v4}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 483
    .local v3, drmInfo:Landroid/drm/DrmInfo;
    const-string v10, "bSendAs"

    invoke-virtual {v3, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 485
    .local v9, shareObj:Ljava/lang/Object;
    if-eqz v9, :cond_87

    .line 486
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, bSendAs:Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 489
    const/4 v0, 0x1

    .line 494
    :goto_6f
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIsShare. bSendAs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v1           #bSendAs:Ljava/lang/String;
    .end local v3           #drmInfo:Landroid/drm/DrmInfo;
    .end local v4           #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .end local v9           #shareObj:Ljava/lang/Object;
    :cond_87
    :goto_87
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIsShare. bResult = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 460
    .restart local v2       #drmFileType:Ljava/lang/String;
    .restart local v7       #isDrmSupported:Z
    :cond_a1
    const-string v10, "divx"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 461
    const/4 v5, 0x3

    goto :goto_43

    .line 462
    :cond_ab
    const-string v10, "omadrm"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 463
    const/4 v5, 0x1

    goto :goto_43

    .line 464
    :cond_b5
    const-string v10, "playready"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 465
    const/4 v5, 0x2

    goto :goto_43

    .line 467
    :cond_bf
    const/4 v5, -0x1

    goto :goto_43

    .line 470
    .end local v2           #drmFileType:Ljava/lang/String;
    :cond_c1
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v11, "checkIsShare. canHandle returned false. Not a drm file by extension"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 491
    .end local v7           #isDrmSupported:Z
    .restart local v1       #bSendAs:Ljava/lang/String;
    .restart local v3       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v4       #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .restart local v9       #shareObj:Ljava/lang/Object;
    :cond_ca
    const/4 v0, 0x0

    goto :goto_6f

    .line 496
    .end local v1           #bSendAs:Ljava/lang/String;
    .end local v3           #drmInfo:Landroid/drm/DrmInfo;
    .end local v4           #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .end local v9           #shareObj:Ljava/lang/Object;
    :cond_cc
    const/4 v10, 0x2

    if-ne v5, v10, :cond_d1

    .line 497
    const/4 v0, 0x0

    goto :goto_87

    .line 500
    :cond_d1
    const/4 v10, 0x3

    if-ne v5, v10, :cond_87

    .line 501
    const/4 v0, 0x0

    goto :goto_87
.end method

.method public checkIsShare(Ljava/lang/String;)Z
    .registers 14
    .parameter "filePath"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 368
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, mimeType:Ljava/lang/String;
    const/4 v5, -0x1

    .line 370
    .local v5, drmType:I
    const/4 v0, 0x1

    .line 373
    .local v0, bResult:Z
    if-eqz v7, :cond_32

    .line 374
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v9, p1, v7}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 376
    .local v6, isDrmSupported:Z
    if-eqz v6, :cond_af

    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, drmFileType:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkIsShare. drmFileType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-nez v2, :cond_8f

    .line 381
    const/4 v5, -0x1

    .line 398
    .end local v2           #drmFileType:Ljava/lang/String;
    .end local v6           #isDrmSupported:Z
    :cond_32
    :goto_32
    const/4 v9, 0x1

    if-ne v5, v9, :cond_ba

    .line 401
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v9, 0x10

    const-string v10, "application/vnd.oma.drm.content"

    invoke-direct {v4, v9, v10}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 403
    .local v4, drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    const-string v9, "drm_path"

    invoke-virtual {v4, v9, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v9, v4}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 406
    .local v3, drmInfo:Landroid/drm/DrmInfo;
    const-string v9, "bSendAs"

    invoke-virtual {v3, v9}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 408
    .local v8, shareObj:Ljava/lang/Object;
    if-eqz v8, :cond_76

    .line 409
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, bSendAs:Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 412
    const/4 v0, 0x1

    .line 417
    :goto_5e
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkIsShare. bSendAs = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1           #bSendAs:Ljava/lang/String;
    .end local v3           #drmInfo:Landroid/drm/DrmInfo;
    .end local v4           #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .end local v8           #shareObj:Ljava/lang/Object;
    :cond_76
    :goto_76
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkIsShare. bResult = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v0

    .line 383
    .restart local v2       #drmFileType:Ljava/lang/String;
    .restart local v6       #isDrmSupported:Z
    :cond_8f
    const-string v9, "divx"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 384
    const/4 v5, 0x3

    goto :goto_32

    .line 385
    :cond_99
    const-string v9, "omadrm"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 386
    const/4 v5, 0x1

    goto :goto_32

    .line 387
    :cond_a3
    const-string v9, "playready"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 388
    const/4 v5, 0x2

    goto :goto_32

    .line 390
    :cond_ad
    const/4 v5, -0x1

    goto :goto_32

    .line 393
    .end local v2           #drmFileType:Ljava/lang/String;
    :cond_af
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v10, "checkIsShare. canHandle returned false. Not a drm file by extension"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 414
    .end local v6           #isDrmSupported:Z
    .restart local v1       #bSendAs:Ljava/lang/String;
    .restart local v3       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v4       #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .restart local v8       #shareObj:Ljava/lang/Object;
    :cond_b8
    const/4 v0, 0x0

    goto :goto_5e

    .line 419
    .end local v1           #bSendAs:Ljava/lang/String;
    .end local v3           #drmInfo:Landroid/drm/DrmInfo;
    .end local v4           #drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    .end local v8           #shareObj:Ljava/lang/Object;
    :cond_ba
    const/4 v9, 0x2

    if-ne v5, v9, :cond_bf

    .line 420
    const/4 v0, 0x0

    goto :goto_76

    .line 423
    :cond_bf
    const/4 v9, 0x3

    if-ne v5, v9, :cond_76

    .line 425
    const/4 v0, 0x0

    goto :goto_76
.end method

.method public checkIsThisWMDRM(Ljava/lang/String;)Z
    .registers 7
    .parameter "filePath"

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 601
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 603
    .local v0, fileType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 604
    .local v1, isDrmSupported:Z
    const/4 v2, 0x0

    .line 606
    .local v2, isPlayready:Z
    if-eqz v3, :cond_23

    .line 607
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 608
    if-eqz v1, :cond_23

    .line 609
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_23

    const-string v4, "playready"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 611
    const/4 v2, 0x1

    .line 615
    :cond_23
    return v2
.end method

.method public checkIsWifiEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1289
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1290
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1291
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v4, "checkIsWifiEnabled, Wifi is Not Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :goto_18
    return v2

    .line 1294
    :cond_19
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1295
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 1296
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v3, "checkIsWifiEnabled Wifi is Connected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v2, 0x1

    goto :goto_18

    .line 1299
    :cond_2c
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v4, "checkIsWifiEnabled Wifi is Enabled, but not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public checkOnBackKey(Ljava/lang/String;)Z
    .registers 7
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1028
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getRightStatus()I

    move-result v0

    .line 1029
    .local v0, DrmRightStatus:I
    const/4 v1, -0x1

    .line 1031
    .local v1, mDrmPopupTypeBack:I
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    .line 1033
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->divxPopupType(ILjava/lang/String;)I

    move-result v1

    .line 1035
    const/16 v3, 0x27

    if-ne v1, v3, :cond_25

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v3, "onkey down back video is rental"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v2, 0x1

    .line 1041
    :cond_25
    return v2
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .registers 7
    .parameter "filePath"

    .prologue
    .line 242
    if-nez p1, :cond_4

    .line 243
    const/4 v1, 0x0

    .line 276
    :goto_3
    return v1

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, LicenseStatus:I
    const/4 v1, 0x0

    .line 250
    .local v1, rightStatus:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRightsStatus. LicenseStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    packed-switch v0, :pswitch_data_50

    .line 267
    :pswitch_29
    const/4 v1, 0x0

    .line 272
    :goto_2a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRightsStatus. rightStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatusString:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatus:I

    goto :goto_3

    .line 254
    :pswitch_49
    const/4 v1, 0x1

    .line 255
    goto :goto_2a

    .line 258
    :pswitch_4b
    const/4 v1, 0x2

    .line 259
    goto :goto_2a

    .line 262
    :pswitch_4d
    const/4 v1, 0x3

    .line 263
    goto :goto_2a

    .line 252
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_29
        :pswitch_49
        :pswitch_4b
    .end packed-switch
.end method

.method public checkTvOutEnable(Ljava/lang/String;)V
    .registers 4
    .parameter "filePath"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkTvOutEnable() - dummy for class comfortability."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void
.end method

.method public divxPopupType(ILjava/lang/String;)I
    .registers 10
    .parameter "rightStatus"
    .parameter "filePath"

    .prologue
    .line 745
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "divxPopupType() rightStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v2, 0x1e

    .line 749
    .local v2, result:I
    packed-switch p1, :pswitch_data_a2

    .line 829
    :goto_1d
    :pswitch_1d
    return v2

    .line 753
    :pswitch_1e
    const/16 v2, 0x24

    .line 755
    goto :goto_1d

    .line 765
    :pswitch_21
    const/16 v2, 0x26

    .line 769
    goto :goto_1d

    .line 773
    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 775
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v5}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 777
    .local v3, rightDetails:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "divxPopupType. rightDetails = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v4, "license_category"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, licenseCategory:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "divxPopupType. licenseCategory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v1, :cond_98

    .line 789
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 791
    .local v0, license:I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_74

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8e

    .line 793
    :cond_74
    invoke-virtual {p0, p2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxtotalCnt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_84

    .line 795
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "divxPopupType. licenseCategory VIDEO_DRM_STR_NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/16 v2, 0x1e

    goto :goto_1d

    .line 801
    :cond_84
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "divxPopupType. licenseCategory VIDEO_DRM_STR_DIVX_RENTAL_INFO "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/16 v2, 0x27

    goto :goto_1d

    .line 809
    :cond_8e
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "divxPopupType. licenseCategory VIDEO_DRM_STR_NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/16 v2, 0x1e

    goto :goto_1d

    .line 818
    .end local v0           #license:I
    :cond_98
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "divxPopupType. licenseCategory is NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 749
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method

.method public getDetailInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 20
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    if-nez p1, :cond_4

    .line 1046
    const/4 v3, 0x0

    .line 1273
    :cond_3
    :goto_3
    return-object v3

    .line 1048
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 1050
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .local v3, detailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;>;"
    const/4 v6, 0x0

    .line 1053
    .local v6, info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v10

    .line 1055
    .local v10, rightDetails:Landroid/content/ContentValues;
    if-nez v10, :cond_25

    .line 1056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v14, "getDetailInfo. rightDetails is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v3, 0x0

    goto :goto_3

    .line 1060
    :cond_25
    const-string v13, "license_category"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1061
    .local v7, licenseCategory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailInfo. licenseCategory = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    if-eqz v7, :cond_53

    const-string v13, "NOT_FOUND_FOR_ACTION_SPECIFIED"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 1064
    :cond_53
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v14, "getDetailInfo. licenseCategory is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v3, 0x0

    goto :goto_3

    .line 1068
    :cond_5e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_198

    .line 1069
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1070
    .local v1, categoryType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailInfo. categoryType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .end local v6           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    invoke-direct {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;-><init>()V

    .line 1074
    .restart local v6       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    const/4 v13, 0x1

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    .line 1075
    iput v1, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    .line 1077
    iget v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    sparse-switch v13, :sswitch_data_404

    .line 1091
    const v13, 0x7f08003c

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    .line 1095
    :goto_97
    sparse-switch v1, :sswitch_data_412

    .line 1141
    :goto_9a
    :sswitch_9a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailInfo. info.typeStr[0] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailInfo. info.validityStr = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1079
    :sswitch_db
    const v13, 0x7f08004e

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_97

    .line 1082
    :sswitch_e1
    const v13, 0x7f08004d

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_97

    .line 1085
    :sswitch_e7
    const v13, 0x7f08004f

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_97

    .line 1097
    :sswitch_ed
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080050

    aput v15, v13, v14

    goto :goto_9a

    .line 1101
    :sswitch_f6
    const-string v13, "remaining_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, curCount:Ljava/lang/String;
    const-string v13, "max_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, orgCount:Ljava/lang/String;
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080053

    aput v15, v13, v14

    .line 1105
    const-string v13, "%d/%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_9a

    .line 1109
    .end local v2           #curCount:Ljava/lang/String;
    .end local v8           #orgCount:Ljava/lang/String;
    :sswitch_135
    const-string v13, "license_start_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, startTime:Ljava/lang/String;
    const-string v13, "license_expiry_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1112
    .local v5, endTime:Ljava/lang/String;
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080051

    aput v15, v13, v14

    .line 1113
    const-string v13, "%s - %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_9a

    .line 1118
    .end local v5           #endTime:Ljava/lang/String;
    .end local v12           #startTime:Ljava/lang/String;
    :sswitch_164
    const-string v13, "license_available_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1120
    .local v9, remainInterval:Ljava/lang/String;
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080054

    aput v15, v13, v14

    .line 1121
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_9a

    .line 1125
    .end local v9           #remainInterval:Ljava/lang/String;
    :sswitch_186
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080051

    aput v15, v13, v14

    .line 1126
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x1

    const v15, 0x7f080053

    aput v15, v13, v14

    goto/16 :goto_9a

    .line 1146
    .end local v1           #categoryType:I
    :cond_198
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 1147
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1151
    .restart local v1       #categoryType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailInfo. categoryType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .end local v6           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    invoke-direct {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;-><init>()V

    .line 1156
    .restart local v6       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    const/4 v13, 0x1

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    .line 1157
    iput v1, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    .line 1159
    iget v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    sparse-switch v13, :sswitch_data_430

    .line 1173
    const v13, 0x7f08003c

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    .line 1177
    :goto_1d1
    packed-switch v1, :pswitch_data_43e

    .line 1270
    :goto_1d4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1161
    :sswitch_1d9
    const v13, 0x7f08004e

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_1d1

    .line 1164
    :sswitch_1df
    const v13, 0x7f08004d

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_1d1

    .line 1167
    :sswitch_1e5
    const v13, 0x7f08004f

    iput v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_1d1

    .line 1179
    :pswitch_1eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v14, 0x7f080050

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto :goto_1d4

    .line 1184
    :pswitch_1f9
    const-string v13, "license_start_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1186
    .local v11, startDate:Ljava/lang/String;
    const-string v13, "%s %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1188
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080052

    aput v15, v13, v14

    goto :goto_1d4

    .line 1194
    .end local v11           #startDate:Ljava/lang/String;
    :pswitch_22a
    const-string v13, "remaining_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    .restart local v2       #curCount:Ljava/lang/String;
    const-string v13, "%s %d %s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f080059

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005c

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1199
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080053

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1205
    .end local v2           #curCount:Ljava/lang/String;
    :pswitch_274
    const-string v13, "license_expiry_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1207
    .local v4, endDate:Ljava/lang/String;
    const-string v13, "%s %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005b

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1209
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080052

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1215
    .end local v4           #endDate:Ljava/lang/String;
    :pswitch_2a6
    const-string v13, "license_start_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1216
    .restart local v11       #startDate:Ljava/lang/String;
    const-string v13, "license_expiry_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1218
    .restart local v4       #endDate:Ljava/lang/String;
    const-string v13, "%s %s-%s "

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v4, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1220
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080052

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1226
    .end local v4           #endDate:Ljava/lang/String;
    .end local v11           #startDate:Ljava/lang/String;
    :pswitch_2e5
    const-string v13, "license_start_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1227
    .restart local v11       #startDate:Ljava/lang/String;
    const-string v13, "remaining_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1229
    .restart local v2       #curCount:Ljava/lang/String;
    const-string v13, "%s %s %d %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005c

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1232
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080053

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1238
    .end local v2           #curCount:Ljava/lang/String;
    .end local v11           #startDate:Ljava/lang/String;
    :pswitch_33c
    const-string v13, "license_expiry_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1239
    .restart local v4       #endDate:Ljava/lang/String;
    const-string v13, "remaining_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    .restart local v2       #curCount:Ljava/lang/String;
    const-string v13, "%s %s %d %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005b

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005c

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1244
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080053

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1250
    .end local v2           #curCount:Ljava/lang/String;
    .end local v4           #endDate:Ljava/lang/String;
    :pswitch_393
    const-string v13, "license_start_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1251
    .restart local v11       #startDate:Ljava/lang/String;
    const-string v13, "license_expiry_time"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1252
    .restart local v4       #endDate:Ljava/lang/String;
    const-string v13, "remaining_repeat_count"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    .restart local v2       #curCount:Ljava/lang/String;
    const-string v13, "%s %s-%s %d %s"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v4, v14, v15

    const/4 v15, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f08005c

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1257
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080053

    aput v15, v13, v14

    goto/16 :goto_1d4

    .line 1262
    .end local v2           #curCount:Ljava/lang/String;
    .end local v4           #endDate:Ljava/lang/String;
    .end local v11           #startDate:Ljava/lang/String;
    :pswitch_3f7
    iget-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v14, 0x0

    const v15, 0x7f080055

    aput v15, v13, v14

    .line 1263
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_1d4

    .line 1077
    :sswitch_data_404
    .sparse-switch
        0x1 -> :sswitch_db
        0x6 -> :sswitch_e7
        0x7 -> :sswitch_e1
    .end sparse-switch

    .line 1095
    :sswitch_data_412
    .sparse-switch
        0x0 -> :sswitch_ed
        0x1 -> :sswitch_f6
        0x2 -> :sswitch_135
        0x4 -> :sswitch_164
        0x8 -> :sswitch_186
        0x10 -> :sswitch_9a
        0x20 -> :sswitch_9a
    .end sparse-switch

    .line 1159
    :sswitch_data_430
    .sparse-switch
        0x1 -> :sswitch_1d9
        0x6 -> :sswitch_1e5
        0x7 -> :sswitch_1df
    .end sparse-switch

    .line 1177
    :pswitch_data_43e
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_22a
        :pswitch_1f9
        :pswitch_274
        :pswitch_2a6
        :pswitch_2e5
        :pswitch_33c
        :pswitch_393
        :pswitch_3f7
    .end packed-switch
.end method

.method public getDivXTvOutEnable()Z
    .registers 2

    .prologue
    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method public getDivxcurCnt(Ljava/lang/String;)I
    .registers 11
    .parameter "filePath"

    .prologue
    .line 837
    const/4 v3, -0x1

    .line 839
    .local v3, remainedCnt:I
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 843
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 845
    .local v5, rightDetails:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxcurCnt. rightDetails = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-eqz v5, :cond_2d

    const-string v6, "license_category"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_36

    .line 849
    :cond_2d
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v7, "getDivxcurCnt. return;"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 879
    .end local v3           #remainedCnt:I
    .local v4, remainedCnt:I
    :goto_35
    return v4

    .line 855
    .end local v4           #remainedCnt:I
    .restart local v3       #remainedCnt:I
    :cond_36
    const-string v6, "license_category"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, licenseCategory:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxcurCnt. licenseCategory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-eqz v2, :cond_8a

    .line 863
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, license:I
    const/4 v6, 0x2

    if-eq v1, v6, :cond_64

    const/4 v6, 0x4

    if-ne v1, v6, :cond_8a

    .line 867
    :cond_64
    const-string v6, "remaining_repeat_count"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, divxRemainingCount:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 871
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxcurCnt() - remained count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #divxRemainingCount:Ljava/lang/String;
    .end local v1           #license:I
    :cond_8a
    move v4, v3

    .line 879
    .end local v3           #remainedCnt:I
    .restart local v4       #remainedCnt:I
    goto :goto_35
.end method

.method public getDivxtotalCnt(Ljava/lang/String;)I
    .registers 11
    .parameter "filePath"

    .prologue
    .line 887
    const/4 v3, -0x1

    .line 889
    .local v3, orgCount:I
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 893
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 895
    .local v5, rightDetails:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxtotalCnt. rightDetails: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    if-eqz v5, :cond_2d

    const-string v6, "license_category"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_36

    .line 899
    :cond_2d
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v7, "getDivxtotalCnt. return;"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 931
    .end local v3           #orgCount:I
    .local v4, orgCount:I
    :goto_35
    return v4

    .line 905
    .end local v4           #orgCount:I
    .restart local v3       #orgCount:I
    :cond_36
    const-string v6, "license_category"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, licenseCategory:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxtotalCnt. licenseCategory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    if-eqz v2, :cond_91

    .line 913
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v7, "getDivxtotalCnt() licenseCategory is not null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 917
    .local v1, license:I
    const/4 v6, 0x2

    if-eq v1, v6, :cond_6b

    const/4 v6, 0x4

    if-ne v1, v6, :cond_91

    .line 919
    :cond_6b
    const-string v6, "max_repeat_count"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, divxOriginalCount:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 923
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDivxtotalCnt() - original count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #divxOriginalCount:Ljava/lang/String;
    .end local v1           #license:I
    :cond_91
    move v4, v3

    .line 931
    .end local v3           #orgCount:I
    .restart local v4       #orgCount:I
    goto :goto_35
.end method

.method public getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "drmFilename"

    .prologue
    const/4 v0, 0x0

    .line 937
    if-eqz p1, :cond_11

    .line 938
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 939
    const-string v0, "application/vnd.oma.drm.content"

    .line 957
    :cond_11
    :goto_11
    return-object v0

    .line 940
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 941
    const-string v0, "video/mux/AVI"

    goto :goto_11

    .line 942
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 943
    const-string v0, "video/mux/MKV"

    goto :goto_11

    .line 944
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".divx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 945
    const-string v0, "video/mux/DivX"

    goto :goto_11

    .line 946
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pyv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 947
    const-string v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_11

    .line 948
    :cond_4e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pya"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 949
    const-string v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_11

    .line 950
    :cond_5d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wmv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 951
    const-string v0, "video/x-ms-wmv"

    goto :goto_11

    .line 952
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 953
    const-string v0, "audio/x-ms-wma"

    goto :goto_11
.end method

.method public getDrmType()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    return v0
.end method

.method public getFileType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "drmFilename"

    .prologue
    const/4 v0, 0x0

    .line 964
    if-eqz p1, :cond_11

    .line 965
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 966
    const-string v0, "omadrm"

    .line 975
    :cond_11
    :goto_11
    return-object v0

    .line 967
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".divx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 968
    :cond_36
    const-string v0, "divx"

    goto :goto_11

    .line 969
    :cond_39
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pyv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pya"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wmv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 971
    :cond_69
    const-string v0, "playready"

    goto :goto_11
.end method

.method public getPopupString(I)Ljava/lang/String;
    .registers 21
    .parameter "strType"

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v12, "getPopupString - start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v8, 0x0

    .line 621
    .local v8, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 622
    .local v3, fileName:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 625
    .local v6, remainedCnt:J
    const-wide/16 v9, -0x1

    .line 627
    .local v9, totalCnt:J
    const-wide/16 v1, -0x1

    .line 628
    .local v1, curCnt:J
    const-string v5, "ko_KR"

    .line 631
    .local v5, mLocale:Ljava/lang/String;
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 633
    .local v4, lastIndex:I
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_31

    .line 634
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    :goto_2d
    packed-switch p1, :pswitch_data_2c2

    .line 738
    :cond_30
    :goto_30
    return-object v8

    .line 636
    :cond_31
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08003c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 642
    :pswitch_3d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4d

    .line 643
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getOMARemainedCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v6, v11

    .line 646
    :cond_4d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPopupString() - remainedCnt = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-wide/16 v11, 0x1

    cmp-long v11, v6, v11

    if-nez v11, :cond_a4

    .line 649
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080044

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 651
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080046

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_30

    .line 652
    :cond_a4
    const-wide/16 v11, 0x2

    cmp-long v11, v6, v11

    if-nez v11, :cond_30

    .line 653
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080045

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 654
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080046

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_30

    .line 660
    :pswitch_d2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080047

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 661
    goto/16 :goto_30

    .line 664
    :pswitch_df
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 665
    goto/16 :goto_30

    .line 668
    :pswitch_ec
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080048

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 669
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 670
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080049

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 672
    goto/16 :goto_30

    .line 676
    :pswitch_11d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 678
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080046

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 679
    goto/16 :goto_30

    .line 683
    :pswitch_148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08010f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 684
    goto/16 :goto_30

    .line 688
    :pswitch_155
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxcurCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v1, v11

    .line 690
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxtotalCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v9, v11

    .line 692
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPopupString() - totalCnt : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", curCnt :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08010e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 696
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080110

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 700
    goto/16 :goto_30

    .line 704
    :pswitch_1c7
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxcurCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v1, v11

    .line 706
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxtotalCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v9, v11

    .line 708
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPopupString() - totalCnt : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", curCnt :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_251

    .line 710
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08010e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 714
    :goto_231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08004c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080111

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 718
    goto/16 :goto_30

    .line 712
    :cond_251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f08010e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_231

    .line 724
    :pswitch_26e
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxcurCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v1, v11

    .line 726
    sget-object v11, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivxtotalCnt(Ljava/lang/String;)I

    move-result v11

    int-to-long v9, v11

    .line 728
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPopupString() - totalCnt : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", curCnt :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v12, 0x7f080112

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v9, v1

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 732
    goto/16 :goto_30

    .line 640
    nop

    :pswitch_data_2c2
    .packed-switch 0x1f
        :pswitch_3d
        :pswitch_d2
        :pswitch_ec
        :pswitch_11d
        :pswitch_df
        :pswitch_148
        :pswitch_148
        :pswitch_155
        :pswitch_1c7
        :pswitch_26e
    .end packed-switch
.end method

.method public getRightStatus()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatus:I

    return v0
.end method

.method public getURLInfo()Ljava/lang/String;
    .registers 7

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 982
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, mimeType:Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/4 v5, 0x3

    invoke-direct {v1, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 987
    .local v1, mDrmInfoRequest_ILA:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v1, v5, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 988
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 989
    .local v2, mDrmInfo_ILA:Landroid/drm/DrmInfo;
    const-string v5, "URL"

    invoke-virtual {v2, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 992
    .local v3, mLicense_url:Ljava/lang/String;
    return-object v3
.end method

.method public initOMADrmConstraintsInfo(Ljava/lang/String;)Z
    .registers 10
    .parameter "filePath"

    .prologue
    const/16 v7, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 320
    if-nez p1, :cond_e

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "initOMADrmConstraintsInfo() - file path is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_d
    :goto_d
    return v3

    .line 325
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 328
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, p1, v4}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 329
    .local v2, rightDetails:Landroid/content/ContentValues;
    const-string v5, "license_category"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, licenseCategory:Ljava/lang/String;
    const/4 v0, 0x0

    .line 332
    .local v0, license:I
    if-eqz v1, :cond_d

    .line 334
    const-string v3, "NOT_FOUND_FOR_ACTION_SPECIFIED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 335
    const/4 v0, -0x1

    .line 339
    :goto_2d
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initOMADrmConstraintsInfo. licenseCategory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-nez v0, :cond_72

    .line 342
    const/16 v3, 0x11

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    .line 359
    :goto_4b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initOMADrmConstraintsInfo. mOMADrmConstraintType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraint:[Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    add-int/lit8 v7, v7, -0xa

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 360
    goto :goto_d

    .line 337
    :cond_6d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    .line 343
    :cond_72
    if-ne v0, v4, :cond_79

    .line 344
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 345
    :cond_79
    const/4 v3, 0x2

    if-ne v0, v3, :cond_81

    .line 346
    const/16 v3, 0xd

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 347
    :cond_81
    const/4 v3, 0x4

    if-ne v0, v3, :cond_89

    .line 348
    const/16 v3, 0xc

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 349
    :cond_89
    if-ne v0, v7, :cond_90

    .line 350
    const/16 v3, 0xf

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 351
    :cond_90
    const/16 v3, 0x20

    if-ne v0, v3, :cond_97

    .line 352
    iput v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 353
    :cond_97
    const/16 v3, 0x8

    if-ne v0, v3, :cond_a0

    .line 354
    const/16 v3, 0xe

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b

    .line 356
    :cond_a0
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    goto :goto_4b
.end method

.method public initOMADrmDeliveryType(Ljava/lang/String;)V
    .registers 14
    .parameter "filePath"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 282
    if-nez p1, :cond_e

    .line 283
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v6, "initOMADrmDeliveryType() - file path is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_d
    :goto_d
    return-void

    .line 287
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 290
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0xe

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 292
    .local v2, drmInfoRequest_drmFileInfo:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v2, v5, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 295
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    new-instance v5, Ljava/lang/String;

    const-string v6, "version"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 296
    .local v4, drmVersion:Ljava/lang/Object;
    new-instance v5, Ljava/lang/String;

    const-string v6, "type"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 298
    .local v3, drmType:Ljava/lang/Object;
    if-eqz v4, :cond_d

    if-eqz v3, :cond_d

    .line 301
    new-array v0, v10, [I

    .line 302
    .local v0, DrmInfo:[I
    new-instance v5, Ljava/lang/String;

    const-string v6, "version"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v9

    .line 303
    new-instance v5, Ljava/lang/String;

    const-string v6, "type"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v8

    .line 304
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initOMADrmDeliveryType. version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    aget v5, v0, v8

    if-ne v5, v8, :cond_b7

    .line 307
    iput v8, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    .line 315
    :cond_97
    :goto_97
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initOMADrmDeliveryType. mOMADrmDeliveryType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDelivery:[Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 308
    :cond_b7
    aget v5, v0, v8

    if-ne v5, v11, :cond_be

    .line 309
    iput v10, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    goto :goto_97

    .line 310
    :cond_be
    aget v5, v0, v8

    if-nez v5, :cond_c5

    .line 311
    iput v9, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    goto :goto_97

    .line 312
    :cond_c5
    aget v5, v0, v8

    if-ne v5, v10, :cond_97

    .line 313
    iput v11, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    goto :goto_97
.end method

.method public launchBrowser()Z
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "launchBrowser() - dummy for comfortability."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v0, 0x1

    return v0
.end method

.method public launchBrowser(Ljava/lang/String;)Z
    .registers 8
    .parameter "mLicense_url"

    .prologue
    const/4 v3, 0x0

    .line 1001
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "launchBrowser() start "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    if-nez p1, :cond_12

    .line 1004
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "launchBrowser. url is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_11
    return v3

    .line 1008
    :cond_12
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, browserIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1011
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1012
    .local v2, mUri:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1014
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 1017
    :try_start_36
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_3b} :catch_3d

    .line 1024
    :cond_3b
    const/4 v3, 0x1

    goto :goto_11

    .line 1018
    :catch_3d
    move-exception v1

    .line 1019
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "could not find a suitable activity for launching license url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public removeDrmMgrClient()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_13

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "removeDrmClient E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 184
    :cond_13
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 170
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mRightStatus:I

    .line 174
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    .line 175
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    .line 176
    return-void
.end method

.method public resumeTvOut()V
    .registers 3

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "resumeTvOut() - dummy for class comfortability."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void
.end method

.method public setInvalidOMADrmMsg()I
    .registers 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvalidOMADrmMsg. mOMADrmDeliveryType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmDeliveryType:I

    packed-switch v0, :pswitch_data_28

    .line 566
    const/16 v0, 0x1e

    :goto_21
    return v0

    .line 559
    :pswitch_22
    const/16 v0, 0x20

    goto :goto_21

    .line 563
    :pswitch_25
    const/16 v0, 0x21

    goto :goto_21

    .line 556
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public setValidOMADrmMsg(Ljava/lang/String;)I
    .registers 12
    .parameter "filePath"

    .prologue
    const/16 v6, 0x1e

    .line 514
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initDrmMgrClient()V

    .line 517
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 518
    .local v2, rightDetails:Landroid/content/ContentValues;
    const-string v7, "license_category"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, licenseCategory:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setValidOMADrmMsg. licenseCategory = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_60

    .line 523
    const-string v7, "remaining_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, validityRemainingCount:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 526
    .local v1, remainedCnt:I
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setValidOMADrmMsg() - remained count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v7, 0x2

    if-gt v1, v7, :cond_5f

    .line 529
    const/16 v6, 0x1f

    .line 547
    .end local v1           #remainedCnt:I
    .end local v4           #validityRemainingCount:Ljava/lang/String;
    :cond_5f
    :goto_5f
    return v6

    .line 532
    :cond_60
    iget v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mOMADrmConstraintType:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_5f

    .line 533
    const-string v7, "license_original_interval"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, validityOriginalInterval:Ljava/lang/String;
    const-string v7, "license_available_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, validityRemainingInterval:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setValidOMADrmMsg() - validityOriginalInterval : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setValidOMADrmMsg() - validityRemainingInterval : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 542
    const/16 v6, 0x22

    goto :goto_5f
.end method

.method public suspendTvOut()V
    .registers 3

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "suspendTvOut() - dummy for class comfortability."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    return-void
.end method

.method public updateOMADRMInfo(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "updateOMADRMInfo() - dummy for class comfortability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v0, 0x1

    return v0
.end method
