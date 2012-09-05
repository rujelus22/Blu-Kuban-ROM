.class Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;
.super Ljava/lang/Object;
.source "MainVideoWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "v"
    .parameter "event"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 59
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    sub-long v4, v9, v11

    .line 61
    .local v4, pressTime:J
    const/4 v6, 0x0

    .line 64
    .local v6, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_f
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_60

    move-result-object v6

    .line 70
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v9

    if-eqz v9, :cond_66

    .line 71
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v3

    .line 73
    .local v3, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$000(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4a

    .line 74
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v10, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 75
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    if-eqz v9, :cond_4a

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    if-nez v9, :cond_4a

    .line 76
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v1

    .line 77
    .local v1, curPos:I
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    .line 81
    .end local v1           #curPos:I
    :cond_4a
    if-eqz v3, :cond_5e

    .line 82
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    .line 83
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_5e

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 84
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 87
    :cond_5e
    const/4 v9, 0x1

    .line 189
    .end local v3           #lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    :goto_5f
    return v9

    .line 65
    :catch_60
    move-exception v2

    .line 66
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v9, 0x1

    goto :goto_5f

    .line 90
    .end local v2           #e:Ljava/lang/Exception;
    :cond_66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 91
    .local v7, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 93
    .local v8, y:I
    packed-switch v0, :pswitch_data_d6

    .line 186
    const/4 v9, 0x1

    goto :goto_5f

    .line 96
    :pswitch_75
    const-string v9, "MainVideoWindow"

    const-string v10, "mTouchListener - ACTION_MOVE : FLAG_BACKGROUND_TOUCH_SUPPORT is not support."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v9, 0x1

    goto :goto_5f

    .line 165
    :pswitch_7e
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v9, v7}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$102(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 166
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const-wide/16 v10, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$402(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;J)J

    .line 167
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v10, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 168
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/16 v10, 0x28

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$302(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 188
    :cond_97
    :goto_97
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v9, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 189
    const/4 v9, 0x1

    goto :goto_5f

    .line 172
    :pswitch_9e
    const-wide/16 v9, 0xc8

    cmp-long v9, v4, v9

    if-ltz v9, :cond_ac

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    if-nez v9, :cond_b2

    .line 173
    :cond_ac
    if-eqz v6, :cond_97

    .line 174
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    goto :goto_97

    .line 176
    :cond_b2
    iget-object v9, v6, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v9, :cond_bb

    .line 177
    iget-object v9, v6, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideSeekSpeed()V

    .line 178
    :cond_bb
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    if-eqz v9, :cond_97

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v9

    if-nez v9, :cond_97

    .line 179
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v1

    .line 180
    .restart local v1       #curPos:I
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    goto :goto_97

    .line 93
    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_9e
        :pswitch_75
    .end packed-switch
.end method
