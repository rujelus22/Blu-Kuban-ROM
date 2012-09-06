.class Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDoneRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/Runnable;)V
    .registers 7
    .parameter "context"
    .parameter "accountId"
    .parameter "doneRunnable"

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    .line 234
    iput-object p1, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    .line 235
    iput-object p4, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    .line 236
    iput-wide p2, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "context"
    .parameter "doneRunnable"

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;-><init>(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected doInBackground()V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 252
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/talk/FeatureManager;->determineDeviceCapabilities(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$200(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;

    move-result-object v2

    .line 257
    .local v2, deviceCaps:Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    if-eqz v9, :cond_1d9

    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    if-eqz v9, :cond_1d9

    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    if-eqz v9, :cond_1d9

    move v9, v10

    :goto_15
    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 258
    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 263
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 264
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_enable_video"

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    invoke-static {v9, v12, v13}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 266
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v9

    if-nez v9, :cond_43

    .line 267
    const-string v9, "talk"

    const-string v12, "GServices override - disabling video chat"

    invoke-static {v9, v12}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_43
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v9

    if-eqz v9, :cond_69

    .line 272
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_enable_audio"

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    invoke-static {v9, v12, v13}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 274
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v9

    if-nez v9, :cond_69

    .line 275
    const-string v9, "talk"

    const-string v12, "GServices override - disabling voice chat"

    invoke-static {v9, v12}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_69
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 285
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_go_hvga"

    invoke-static {v9, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, hvgaSetting:Ljava/lang/String;
    const/4 v6, 0x1

    .line 288
    .local v6, readOverrides:Z
    const/4 v8, 0x0

    .line 289
    .local v8, useHVGA:Z
    const-string v9, "true"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1dc

    .line 290
    const/4 v8, 0x1

    .line 291
    const/4 v6, 0x0

    .line 298
    :cond_87
    :goto_87
    if-eqz v8, :cond_1f0

    .line 299
    const-string v9, "off"

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$602(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 301
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$802(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 302
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1000()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$902(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 332
    :cond_a3
    :goto_a3
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$600()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/videochat/VideoSpecification;->setMaxIncoming(Lcom/google/android/videochat/VideoSpecification;)V

    .line 333
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$800()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingNoEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 334
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$900()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingWithEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 344
    iget v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$1102(I)I

    .line 347
    const/4 v5, 0x0

    .line 350
    .local v5, policyDisableMask:I
    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-nez v9, :cond_c5

    .line 351
    const v5, 0x7fffffff

    .line 355
    :cond_c5
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 356
    or-int/lit8 v5, v5, 0x2

    .line 360
    :cond_cf
    if-eqz v5, :cond_e0

    .line 361
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_effects_enabled_mask"

    invoke-static {v9, v12, v11}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v5, v9

    .line 364
    :cond_e0
    xor-int/lit8 v9, v5, -0x1

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$1172(I)I

    .line 370
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1100()I

    move-result v9

    if-eqz v9, :cond_fc

    .line 371
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_effects_disabled_mask"

    invoke-static {v9, v12, v11}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    xor-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$1172(I)I

    .line 376
    .end local v3           #hvgaSetting:Ljava/lang/String;
    .end local v5           #policyDisableMask:I
    .end local v6           #readOverrides:Z
    .end local v8           #useHVGA:Z
    :cond_fc
    const-string v9, "talk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is armv7: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v9, "talk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "has NEON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v9, "talk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "supported front camera: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v9, "talk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "has opengl2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v9, "talk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "effects enabled mask: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1100()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v11, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "video chat support is "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_25e

    const-string v9, "enabled"

    :goto_195
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v11, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio chat support is "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v9

    if-eqz v9, :cond_262

    const-string v9, "enabled"

    :goto_1b5
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-wide v11, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    const-wide/16 v13, -0x1

    cmp-long v9, v11, v13

    if-eqz v9, :cond_266

    .line 387
    iget-wide v11, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    #calls: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v11, v12}, Lcom/google/android/talk/FeatureManager;->access$1200(J)V

    .line 394
    :cond_1cd
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    iget-object v11, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    invoke-virtual {v11, v10}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void

    :cond_1d9
    move v9, v11

    .line 257
    goto/16 :goto_15

    .line 292
    .restart local v3       #hvgaSetting:Ljava/lang/String;
    .restart local v6       #readOverrides:Z
    .restart local v8       #useHVGA:Z
    :cond_1dc
    const-string v9, "auto"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 293
    const/4 v6, 0x0

    .line 294
    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-eqz v9, :cond_87

    iget-boolean v9, v2, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    if-eqz v9, :cond_87

    .line 295
    const/4 v8, 0x1

    goto/16 :goto_87

    .line 304
    :cond_1f0
    const-string v9, "low"

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1000()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$602(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 306
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1000()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$802(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 307
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$1000()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$902(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 308
    if-eqz v6, :cond_a3

    .line 310
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_default_fx"

    invoke-static {v9, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_21d

    .line 313
    invoke-static {v7}, Lcom/google/android/talk/FeatureManager;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    :cond_21d
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_max_in_vid"

    invoke-static {v9, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    if-eqz v7, :cond_232

    .line 318
    invoke-static {v7}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$602(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 320
    :cond_232
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_max_out_nofx_vid"

    invoke-static {v9, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    if-eqz v7, :cond_247

    .line 323
    invoke-static {v7}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$802(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    .line 325
    :cond_247
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "gtalk_vc_max_out_fx_vid"

    invoke-static {v9, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    if-eqz v7, :cond_a3

    .line 328
    invoke-static {v7}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/FeatureManager;->access$902(Lcom/google/android/videochat/VideoSpecification;)Lcom/google/android/videochat/VideoSpecification;

    goto/16 :goto_a3

    .line 381
    .end local v3           #hvgaSetting:Ljava/lang/String;
    .end local v6           #readOverrides:Z
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #useHVGA:Z
    :cond_25e
    const-string v9, "disabled"

    goto/16 :goto_195

    .line 383
    :cond_262
    const-string v9, "disabled"

    goto/16 :goto_1b5

    .line 389
    :cond_266
    iget-object v9, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/DatabaseUtils;->getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_274
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 390
    .local v0, accountId:J
    #calls: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v0, v1}, Lcom/google/android/talk/FeatureManager;->access$1200(J)V

    goto :goto_274
.end method

.method public execute()V
    .registers 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "SetFeaturesTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method
