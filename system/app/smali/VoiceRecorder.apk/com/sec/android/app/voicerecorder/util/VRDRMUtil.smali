.class public Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;
.super Ljava/lang/Object;
.source "VRDRMUtil.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mConstraintType:I

.field private mContext:Landroid/content/Context;

.field private mDrmType:I

.field private mFilename:Ljava/lang/String;

.field private mIsOMADrm:Z

.field private mPath:Ljava/lang/String;

.field mbShare:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "VRDRMUtil"

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mPath:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mFilename:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mIsOMADrm:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mbShare:Z

    .line 72
    iput v1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mDrmType:I

    .line 73
    iput v1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mConstraintType:I

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private getOMARemainedCnt(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkIsOMADrm(Ljava/lang/String;)Z
    .registers 3
    .parameter "filePath"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getPopupString(I)Ljava/lang/String;
    .registers 13
    .parameter "strType"

    .prologue
    const v10, 0x7f060048

    const v9, 0x7f060044

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    const-string v4, "getPopupString - start"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, str:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 287
    .local v0, remainedCnt:J
    packed-switch p1, :pswitch_data_c2

    .line 330
    :cond_16
    :goto_16
    :pswitch_16
    return-object v2

    .line 289
    :pswitch_17
    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mIsOMADrm:Z

    if-eqz v3, :cond_22

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->getOMARemainedCnt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 293
    :cond_22
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPopupString() - remainedCnt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_6a

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f060042

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 300
    :cond_6a
    const-wide/16 v3, 0x2

    cmp-long v3, v0, v3

    if-nez v3, :cond_16

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f060043

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_16

    .line 310
    :pswitch_8f
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f060045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    goto/16 :goto_16

    .line 314
    :pswitch_9a
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f060046

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f060047

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    goto/16 :goto_16

    .line 287
    :pswitch_data_c2
    .packed-switch 0x20
        :pswitch_17
        :pswitch_8f
        :pswitch_9a
        :pswitch_16
        :pswitch_16
        :pswitch_8f
    .end packed-switch
.end method

.method public launchBrowser()V
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "launchBrowser()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public setDrmMsgPopup()I
    .registers 4

    .prologue
    const/16 v0, 0x1e

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mPath:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 399
    :goto_6
    return v0

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    const-string v2, "setDrmMsgPopup() - the drm file is Invalid"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v1, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->mDrmType:I

    packed-switch v1, :pswitch_data_1e

    goto :goto_6

    .line 392
    :pswitch_14
    const/16 v0, 0x23

    goto :goto_6

    .line 385
    :pswitch_17
    const/16 v0, 0x21

    goto :goto_6

    .line 389
    :pswitch_1a
    const/16 v0, 0x22

    goto :goto_6

    .line 383
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public updateOMADRMInfo(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "updateDRMInfo() - start."

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    return v0
.end method
