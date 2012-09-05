.class Lcom/lifevibes/trimapp/Trim$7;
.super Landroid/os/Handler;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 1163
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1800(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1204
    :cond_9
    :goto_9
    return-void

    .line 1168
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_a8

    :pswitch_f
    goto :goto_9

    .line 1170
    :pswitch_10
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/Trim;->setProgressDialogValue(I)V

    goto :goto_9

    .line 1174
    :pswitch_18
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$2900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_32

    .line 1175
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim$7;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1176
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 1178
    :cond_32
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/Trim;->refreshAllDisplay(Ljava/lang/String;)V

    goto :goto_9

    .line 1183
    :pswitch_46
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->setVideoProgress()I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1700(Lcom/lifevibes/trimapp/Trim;)I

    move-result v0

    .line 1184
    .local v0, position:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDragging:Z
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1500(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1185
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim$7;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1186
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v1

    rem-int/lit16 v2, v0, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 1191
    .end local v0           #position:I
    :pswitch_78
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mSaveHandlePosition:I
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$2600(Lcom/lifevibes/trimapp/Trim;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveUserHandleTo(I)V

    .line 1193
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v2

    #setter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I
    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$1302(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1194
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1, v4}, Lcom/lifevibes/trimapp/Trim;->startThumbnailTask(I)V

    goto/16 :goto_9

    .line 1198
    :pswitch_9e
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$7;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/lifevibes/trimapp/Trim;->resolveUpdatePlayPauseMessage(I)V
    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$3000(Lcom/lifevibes/trimapp/Trim;I)V

    goto/16 :goto_9

    .line 1168
    nop

    :pswitch_data_a8
    .packed-switch 0x64
        :pswitch_10
        :pswitch_18
        :pswitch_f
        :pswitch_46
        :pswitch_9e
        :pswitch_78
    .end packed-switch
.end method
