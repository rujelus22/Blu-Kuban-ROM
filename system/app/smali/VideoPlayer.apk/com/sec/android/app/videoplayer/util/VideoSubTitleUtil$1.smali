.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 322
    const-wide/16 v0, 0x0

    .line 323
    .local v0, curPosition:J
    const-wide/16 v5, 0x0

    .line 324
    .local v5, lAdjustedPosition:J
    const-wide/16 v3, 0x0

    .line 325
    .local v3, index:J
    const-string v7, ""

    .line 327
    .local v7, subTitle:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v8

    .line 329
    .local v8, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-nez v8, :cond_13

    .line 376
    :goto_12
    return-void

    .line 332
    :cond_13
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleActivationFlag()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 333
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    goto :goto_12

    .line 336
    :cond_1e
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 338
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v9, :cond_30

    .line 340
    :try_start_26
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v0

    .line 341
    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_88

    add-long v5, v0, v9

    .line 348
    :cond_30
    :goto_30
    cmp-long v9, v5, v12

    if-ltz v9, :cond_78

    .line 349
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleTime2Index(JJ)I

    move-result v9

    int-to-long v3, v9

    .line 351
    cmp-long v9, v3, v12

    if-ltz v9, :cond_c4

    .line 352
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v9

    invoke-static {v9, v10, v3, v4}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetString(JJ)Ljava/lang/String;

    move-result-object v7

    .line 353
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->preSubtitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    .line 354
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->preSubtitle:Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$202(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_ab

    .line 356
    invoke-virtual {v8, v7}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 358
    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v9, :cond_78

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v9, :cond_78

    .line 359
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSize()I

    move-result v10

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    .line 375
    :cond_78
    :goto_78
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$300(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12

    .line 342
    :catch_88
    move-exception v2

    .line 343
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException occured  1 :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 362
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_ab
    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 363
    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v9, :cond_78

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v9, :cond_78

    .line 364
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const-string v10, ""

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSize()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    goto :goto_78

    .line 369
    :cond_c4
    const-string v7, ""

    .line 370
    invoke-virtual {v8, v7}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    goto :goto_78
.end method
