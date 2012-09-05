.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2006
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d2

    .line 2054
    :cond_a
    :goto_a
    return-void

    .line 2008
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->refreshOrientationState()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2010
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->showLastDialog()V

    goto :goto_a

    .line 2013
    :pswitch_22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    goto :goto_a

    .line 2016
    :pswitch_28
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    .line 2017
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v0

    if-gez v0, :cond_5c

    .line 2018
    const-string v0, "MoviePlayer"

    const-string v1, "mHandler - init and start timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v1, 0x640

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2021
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2025
    :cond_54
    invoke-virtual {p0, v4, v3, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 2027
    :cond_5c
    const-string v0, "MoviePlayer"

    const-string v1, "mHandler - exit player by H/W back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2030
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 2031
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2032
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2034
    :cond_7f
    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->removeMessages(I)V

    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_a

    .line 2038
    :cond_88
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler - update timer for expiring. current timer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v0

    if-lez v0, :cond_c4

    .line 2041
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2042
    invoke-virtual {p0, v4, v3, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 2044
    :cond_c4
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    goto/16 :goto_a

    .line 2049
    :pswitch_cb
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumePlayback()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    goto/16 :goto_a

    .line 2006
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_22
        :pswitch_28
        :pswitch_cb
    .end packed-switch
.end method
