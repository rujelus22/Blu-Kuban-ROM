.class Lcom/lifevibes/trimapp/Trim$VideoViewListener;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method private constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim$VideoViewListener;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveUserHandleTo(I)V

    .line 1041
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, 0x0

    #setter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$902(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1042
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->releaseVideoPlayer()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$2500(Lcom/lifevibes/trimapp/Trim;)V

    .line 1043
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1044
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, 0x0

    #setter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$902(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1051
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->releaseVideoPlayer()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$2500(Lcom/lifevibes/trimapp/Trim;)V

    .line 1052
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1053
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 9
    .parameter "mp"

    .prologue
    const-wide/16 v5, 0xc8

    .line 1060
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1061
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    #setter for: Lcom/lifevibes/trimapp/Trim;->mSaveHandlePosition:I
    invoke-static {v2, v3}, Lcom/lifevibes/trimapp/Trim;->access$2602(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1063
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1064
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x68

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1065
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1066
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1067
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1068
    .local v1, msg2:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1069
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$VideoViewListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1070
    return-void
.end method
