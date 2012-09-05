.class public Lcom/sec/android/app/myfiles/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    }
.end annotation


# static fields
.field private static mDrmManager:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/drm/DrmUtils;->mDrmManager:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method private static getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;
    .registers 2
    .parameter "context"

    .prologue
    .line 139
    sget-object v0, Lcom/sec/android/app/myfiles/drm/DrmUtils;->mDrmManager:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/myfiles/drm/DrmUtils;->mDrmManager:Landroid/drm/DrmManagerClient;

    .line 143
    :cond_b
    sget-object v0, Lcom/sec/android/app/myfiles/drm/DrmUtils;->mDrmManager:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method private static getPermissionType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v4, -0x1

    .line 481
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0xf

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v1, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 482
    .local v1, infoRequest:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v1, v5, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 486
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v0, :cond_4f

    .line 487
    const-string v5, "status"

    invoke-virtual {v0, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, status:Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 490
    const-string v5, "[MyFiles]"

    const-string v6, "DrmUtils.getRightInfo: processdrmRequest Success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v5, Ljava/lang/String;

    const-string v6, "permission"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 503
    .local v2, objPermType:Ljava/lang/Object;
    if-nez v2, :cond_57

    .line 504
    const-string v5, "[MyFiles]"

    const-string v6, "DrmUtils.getRightInfo: objPermType is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v2           #objPermType:Ljava/lang/Object;
    .end local v3           #status:Ljava/lang/String;
    :goto_46
    return v4

    .line 493
    .restart local v3       #status:Ljava/lang/String;
    :cond_47
    const-string v5, "[MyFiles]"

    const-string v6, "DrmUtils.getRightInfo: processdrmRequest Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 497
    .end local v3           #status:Ljava/lang/String;
    :cond_4f
    const-string v5, "[MyFiles]"

    const-string v6, "DrmUtils.getRightInfo: processdrmRequest Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 508
    .restart local v2       #objPermType:Ljava/lang/Object;
    .restart local v3       #status:Ljava/lang/String;
    :cond_57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_46
.end method

.method public static getPlayReadyRightInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f090070

    const v7, 0x7f090056

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 204
    if-nez p1, :cond_14

    .line 205
    const-string v4, "[MyFiles]"

    const-string v5, "DrmUtils.getRightInfo : filePath is null. "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    .line 292
    :goto_13
    return-object v0

    .line 209
    :cond_14
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 210
    const-string v4, "[MyFiles]"

    const-string v5, "DrmUtils.getRightInfo : filePath is not PlayReady. "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto :goto_13

    .line 214
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;>;"
    new-instance v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;

    invoke-direct {v3}, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;-><init>()V

    .line 219
    .local v3, rightInfo:Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v4

    invoke-virtual {v4, p1, v10}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 221
    .local v2, rightDetails:Landroid/content/ContentValues;
    const-string v4, "license_category"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, licenseCategory:Ljava/lang/String;
    const-string v4, "[MyFiles]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " licenseCategory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-array v4, v11, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_26a

    .line 286
    :goto_60
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 290
    :goto_63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 228
    :pswitch_67
    const-string v4, "[MyFiles]"

    const-string v5, "Playready_LicenseCategory.DRM_LICENSE_STATE_NORIGHT return null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    goto :goto_13

    .line 231
    :pswitch_70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    goto :goto_63

    .line 234
    :pswitch_7e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 235
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s/%s"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "remaining_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "max_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto :goto_63

    .line 239
    :pswitch_a8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 240
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_start_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto :goto_63

    .line 244
    :pswitch_d1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 245
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_expiry_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_63

    .line 249
    :pswitch_fe
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 250
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_start_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 252
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_expiry_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto/16 :goto_63

    .line 256
    :pswitch_149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 257
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%d/%d"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "remaining_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "max_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 260
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_start_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto/16 :goto_63

    .line 264
    :pswitch_18f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 265
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%d/%d"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "max_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "remaining_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 268
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_expiry_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto/16 :goto_63

    .line 272
    :pswitch_1d8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 273
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%d/%d"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "max_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "remaining_repeat_count"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 276
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_start_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 278
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s:%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_expiry_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    goto/16 :goto_63

    .line 282
    :pswitch_23f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 283
    iget-object v4, v3, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const-string v5, "%s/%s"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "license_original_interval"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "license_available_time"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_60

    .line 226
    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_67
        :pswitch_70
        :pswitch_7e
        :pswitch_a8
        :pswitch_d1
        :pswitch_fe
        :pswitch_149
        :pswitch_18f
        :pswitch_1d8
        :pswitch_23f
    .end packed-switch
.end method

.method public static getRealMimeTypeOfDRM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 576
    if-nez p1, :cond_b

    .line 578
    const-string v1, "[MyFiles]"

    const-string v2, "DrmManager.getRealMimeTypeOfDRM : filePath is null. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x0

    .line 590
    :cond_a
    :goto_a
    return-object v0

    .line 582
    :cond_b
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 585
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    const-string v1, "[MyFiles]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmUtils.getRealMimeTypeOfDRM : real mime type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static getRightInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    if-nez p1, :cond_b

    .line 320
    const-string v7, "[MyFiles]"

    const-string v8, "DrmUtils.getRightInfo : filePath is null. "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x0

    .line 435
    :cond_a
    :goto_a
    return-object v1

    .line 324
    :cond_b
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 325
    const-string v7, "[MyFiles]"

    const-string v8, "DrmUtils.getRightInfo : filePath is not DRM. "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    goto :goto_a

    .line 330
    :cond_1a
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 331
    const-string v7, "[MyFiles]"

    const-string v8, "DrmUtils.getRightInfo: this is FL"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    goto :goto_a

    .line 335
    :cond_29
    const/4 v0, 0x1

    .line 337
    .local v0, RoCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v1, details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;>;"
    new-instance v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;

    invoke-direct {v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;-><init>()V

    .line 341
    .local v6, rightInfo:Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    const/4 v4, -0x1

    .line 343
    .local v4, permissionType:I
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getPermissionType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 346
    const-string v7, "[MyFiles]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " DrmUtils.getRightInfo: permissionType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sparse-switch v4, :sswitch_data_1dc

    .line 382
    :goto_54
    const/4 v2, 0x0

    .local v2, i:I
    :goto_55
    if-ge v2, v0, :cond_a

    .line 384
    sget-object v7, Lcom/sec/android/app/myfiles/drm/DrmUtils;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, p1, v4}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 386
    .local v5, rightDetails:Landroid/content/ContentValues;
    if-eqz v5, :cond_90

    .line 388
    const-string v7, "license_category"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, licenseCategory:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    .line 393
    const-string v7, "[MyFiles]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " licenseCategory = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_1ea

    .line 424
    :pswitch_8d
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 429
    .end local v3           #licenseCategory:Ljava/lang/String;
    :cond_90
    :goto_90
    const-string v7, "[MyFiles]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " rightInfo.typeStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rightInfo.validityStr[0] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rightInfo.validityStr[1] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 350
    .end local v2           #i:I
    .end local v5           #rightDetails:Landroid/content/ContentValues;
    :sswitch_ce
    const v7, 0x7f09005c

    iput v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    goto :goto_54

    .line 353
    :sswitch_d4
    const v7, 0x7f09005d

    iput v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    goto/16 :goto_54

    .line 356
    :sswitch_db
    const v7, 0x7f09005e

    iput v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    goto/16 :goto_54

    .line 397
    .restart local v2       #i:I
    .restart local v3       #licenseCategory:Ljava/lang/String;
    .restart local v5       #rightDetails:Landroid/content/ContentValues;
    :pswitch_e2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    goto :goto_90

    .line 400
    :pswitch_f0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 401
    iget-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%s/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "remaining_repeat_count"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "max_repeat_count"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto/16 :goto_90

    .line 405
    :pswitch_127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 406
    iget-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%s~%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "license_start_time"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "license_expiry_time"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto/16 :goto_90

    .line 410
    :pswitch_156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 411
    iget-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%s/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "license_original_interval"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "license_available_time"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto/16 :goto_90

    .line 415
    :pswitch_185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    .line 416
    iget-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%s/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "license_original_interval"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "license_available_time"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 419
    iget-object v7, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "%s/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "remaining_repeat_count"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "max_repeat_count"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto/16 :goto_90

    .line 348
    :sswitch_data_1dc
    .sparse-switch
        0x1 -> :sswitch_ce
        0x6 -> :sswitch_db
        0x7 -> :sswitch_d4
    .end sparse-switch

    .line 395
    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_f0
        :pswitch_127
        :pswitch_8d
        :pswitch_156
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_185
    .end packed-switch
.end method

.method private static isForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 440
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0xe

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 441
    .local v2, infoRequest:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v2, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 445
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v0, :cond_4f

    .line 446
    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, status:Ljava/lang/String;
    const-string v6, "success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 449
    const-string v6, "[MyFiles]"

    const-string v7, "DrmUtils.isForwardLockType: processdrmRequest Success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v6, Ljava/lang/String;

    const-string v7, "type"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 462
    .local v3, objType:Ljava/lang/Object;
    if-nez v3, :cond_57

    .line 463
    const-string v6, "[MyFiles]"

    const-string v7, "DrmUtils.isForwardLockType: objType is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v3           #objType:Ljava/lang/Object;
    .end local v4           #status:Ljava/lang/String;
    :cond_46
    :goto_46
    return v5

    .line 452
    .restart local v4       #status:Ljava/lang/String;
    :cond_47
    const-string v6, "[MyFiles]"

    const-string v7, "DrmUtils.isForwardLockType: processdrmRequest Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 456
    .end local v4           #status:Ljava/lang/String;
    :cond_4f
    const-string v6, "[MyFiles]"

    const-string v7, "DrmUtils.isForwardLockType: processdrmRequest Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 467
    .restart local v3       #objType:Ljava/lang/Object;
    .restart local v4       #status:Ljava/lang/String;
    :cond_57
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 470
    .local v1, drmType:I
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " drmType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v1, :cond_46

    .line 473
    const-string v5, "[MyFiles]"

    const-string v6, "DrmUtils.isForwardLockType: this is FL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v5, 0x1

    goto :goto_46
.end method

.method public static isForwardable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 512
    if-nez p1, :cond_b

    .line 514
    const-string v1, "[MyFiles]"

    const-string v2, "DrmUtils.isForwardable : filePath is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_a
    return v0

    .line 518
    :cond_b
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 519
    const-string v1, "[MyFiles]"

    const-string v2, "DrmUtils.isForwardable => return false 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 522
    :cond_19
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 523
    const-string v1, "bSendAs"

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPossibleOptMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 524
    const-string v1, "[MyFiles]"

    const-string v2, "DrmUtils.isForwardable => return false 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 528
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 171
    if-nez p1, :cond_b

    .line 173
    const-string v3, "[MyFiles]"

    const-string v4, "DrmManager.isDrmFile : filePath is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_a
    :goto_a
    return v2

    .line 177
    :cond_b
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, mimeType:Ljava/lang/String;
    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 181
    :try_start_17
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 182
    const-string v3, "[MyFiles]"

    const-string v4, "isOMADrmFile : return true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_28} :catch_2a

    .line 183
    const/4 v2, 0x1

    goto :goto_a

    .line 185
    :catch_2a
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a
.end method

.method public static isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_b

    .line 98
    const-string v3, "[MyFiles]"

    const-string v4, "DrmManager.isDrmFile : filePath is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_a
    :goto_a
    return v2

    .line 102
    :cond_b
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, mimeType:Ljava/lang/String;
    const-string v3, "audio/vnd.ms-playready.media.pya"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "video/vnd.ms-playready.media.pyv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "audio/x-ms-wma"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "video/x-ms-wmv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 110
    :cond_2f
    :try_start_2f
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_36} :catch_3b

    move-result v3

    if-eqz v3, :cond_a

    .line 111
    const/4 v2, 0x1

    goto :goto_a

    .line 113
    :catch_3b
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a
.end method

.method private static isPossibleOptMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "context"
    .parameter "filePath"
    .parameter "option"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 533
    if-nez p1, :cond_c

    .line 535
    const-string v5, "[MyFiles]"

    const-string v6, "DrmManager.isPossibleOptMenu : filePath is null. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_b
    :goto_b
    return v4

    .line 540
    :cond_c
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x10

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 541
    .local v2, optMenu:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v2, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 544
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v6, "status"

    invoke-virtual {v1, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, status:Ljava/lang/String;
    const-string v0, "1"

    .line 548
    .local v0, TRUE:Ljava/lang/String;
    const-string v6, "success"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 549
    const-string v6, "[MyFiles]"

    const-string v7, "DrmManager.isPossibleOptMenu : processdrmRequest Success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_3d
    const-string v6, "bSendAs"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 557
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmManager.isPossibleOptMenu => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bSendAs"

    invoke-virtual {v1, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v6, "1"

    const-string v7, "bSendAs"

    invoke-virtual {v1, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v5

    .line 559
    goto :goto_b

    .line 552
    :cond_73
    const-string v6, "[MyFiles]"

    const-string v7, "DrmManager.isPossibleOptMenu : processdrmRequest Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 560
    :cond_7b
    const-string v6, "bPrint"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 561
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmManager.isPossibleOptMenu => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bPrint"

    invoke-virtual {v1, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v6, "1"

    const-string v7, "bPrint"

    invoke-virtual {v1, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v5

    .line 563
    goto/16 :goto_b

    .line 564
    :cond_b2
    const-string v6, "bRingtone"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 565
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmManager.isPossibleOptMenu => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bRingtone"

    invoke-virtual {v1, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v6, "1"

    const-string v7, "bRingtone"

    invoke-virtual {v1, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v5

    .line 567
    goto/16 :goto_b
.end method

.method public static isValidDrmFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    if-nez p1, :cond_c

    .line 298
    const-string v2, "[MyFiles]"

    const-string v3, "DrmManager.isValidDrmFile : filePath is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_b
    return v1

    .line 302
    :cond_c
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 303
    const-string v1, "[MyFiles]"

    const-string v3, "DrmManager.isValidDrmFile => return true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 304
    goto :goto_b

    .line 307
    :cond_21
    invoke-static {p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getDrmManager(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, rightStatus:I
    if-nez v0, :cond_34

    .line 310
    const-string v1, "[MyFiles]"

    const-string v3, "DrmManager.isValidDrmFile => this file is valid. "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 311
    goto :goto_b

    .line 313
    :cond_34
    const-string v2, "[MyFiles]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmManager.isValidDrmFile => this file is not valid.  rightStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
