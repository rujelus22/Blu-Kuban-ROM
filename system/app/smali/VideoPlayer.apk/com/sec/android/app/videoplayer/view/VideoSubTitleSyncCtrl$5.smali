.class Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;
.super Landroid/os/Handler;
.source "VideoSubTitleSyncCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .registers 2
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x1f4

    .line 263
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_96

    .line 299
    :cond_7
    :goto_7
    return-void

    .line 265
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 267
    :try_start_d
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 268
    .local v1, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_7

    .line 269
    .end local v1           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_19
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoSubTitleSyncCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_37
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    const-wide/16 v4, -0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 277
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    sub-long/2addr v2, v6

    sput-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setSyncProgress()V

    goto :goto_7

    .line 284
    :pswitch_59
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 285
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setSyncProgress()V

    goto :goto_7

    .line 292
    :pswitch_7b
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setSyncProgress()V

    goto/16 :goto_7

    .line 263
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_37
        :pswitch_59
        :pswitch_8
        :pswitch_7b
    .end packed-switch
.end method
