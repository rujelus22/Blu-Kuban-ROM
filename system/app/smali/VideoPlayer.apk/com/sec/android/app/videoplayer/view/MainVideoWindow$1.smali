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
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 17
    .parameter "v"
    .parameter "event"

    .prologue
    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 58
    .local v0, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 60
    .local v4, pressTime:J
    const/4 v7, 0x0

    .line 63
    .local v7, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_f
    sget-object v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_60

    move-result-object v7

    .line 69
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v10

    if-eqz v10, :cond_66

    .line 70
    sget-object v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v3

    .line 72
    .local v3, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$000(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4a

    .line 73
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 74
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-eqz v10, :cond_4a

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-nez v10, :cond_4a

    .line 75
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v1

    .line 76
    .local v1, curPos:I
    add-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    .line 80
    .end local v1           #curPos:I
    :cond_4a
    if-eqz v3, :cond_5e

    .line 81
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    .line 82
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v10

    if-nez v10, :cond_5e

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 83
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 86
    :cond_5e
    const/4 v10, 0x1

    .line 183
    .end local v3           #lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    :goto_5f
    return v10

    .line 64
    :catch_60
    move-exception v2

    .line 65
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v10, 0x1

    goto :goto_5f

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 90
    .local v8, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 92
    .local v9, y:I
    packed-switch v0, :pswitch_data_1cc

    .line 180
    const/4 v10, 0x1

    goto :goto_5f

    .line 94
    :pswitch_75
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v10

    if-nez v10, :cond_84

    .line 95
    const-string v10, "MainVideoWindow"

    const-string v11, "mTouchListener - ACTION_MOVE : Video is not on playing."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v10, 0x1

    goto :goto_5f

    .line 99
    :cond_84
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDuration()I

    move-result v10

    if-gtz v10, :cond_93

    .line 100
    const-string v10, "MainVideoWindow"

    const-string v11, "mTouchListener - ACTION_MOVE : Live sreaming."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v10, 0x1

    goto :goto_5f

    .line 104
    :cond_93
    const-wide/16 v10, 0xc8

    cmp-long v10, v4, v10

    if-lez v10, :cond_124

    .line 105
    iget-object v10, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-nez v10, :cond_9f

    .line 106
    const/4 v10, 0x1

    goto :goto_5f

    .line 108
    :cond_9f
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v1

    .line 110
    .restart local v1       #curPos:I
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$300(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v11

    if-le v10, v11, :cond_14d

    .line 111
    const/4 v6, 0x0

    .line 113
    .local v6, seekTime:I
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$300(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    const/16 v11, 0x14

    if-le v10, v11, :cond_cf

    .line 114
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$300(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$302(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 116
    :cond_cf
    sget v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerHeight:I

    div-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_12c

    .line 117
    const/16 v6, 0x3e8

    .line 118
    iget-object v10, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->showSeekSpeed(I)V

    .line 124
    :goto_dd
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J
    invoke-static {v12}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$400(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-gez v10, :cond_135

    const/16 v10, 0xfa0

    if-ne v6, v10, :cond_135

    .line 125
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 129
    :goto_f8
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    sub-int v10, v8, v10

    if-lez v10, :cond_13c

    .line 130
    add-int/2addr v1, v6

    .line 131
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDuration()I

    move-result v10

    if-le v1, v10, :cond_10d

    .line 132
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDuration()I

    move-result v1

    .line 144
    :cond_10d
    :goto_10d
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    .line 145
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J
    invoke-static {v10, v11, v12}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$402(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;J)J

    .line 146
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10, v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$102(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 182
    .end local v1           #curPos:I
    .end local v6           #seekTime:I
    :cond_124
    :goto_124
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I
    invoke-static {v10, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 183
    const/4 v10, 0x1

    goto/16 :goto_5f

    .line 120
    .restart local v1       #curPos:I
    .restart local v6       #seekTime:I
    :cond_12c
    const/16 v6, 0xfa0

    .line 121
    iget-object v10, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->showSeekSpeed(I)V

    goto :goto_dd

    .line 127
    :cond_135
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    goto :goto_f8

    .line 134
    :cond_13c
    const/16 v10, 0x3e8

    if-ne v6, v10, :cond_142

    .line 135
    const/16 v6, 0x514

    .line 137
    :cond_142
    sub-int/2addr v1, v6

    .line 139
    if-gez v1, :cond_10d

    .line 140
    const/4 v1, 0x0

    .line 141
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    goto :goto_10d

    .line 148
    .end local v6           #seekTime:I
    :cond_14d
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-nez v10, :cond_124

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J
    invoke-static {v12}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$400(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-lez v10, :cond_124

    .line 150
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 151
    add-int/lit8 v10, v1, 0x1

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    goto :goto_124

    .line 159
    .end local v1           #curPos:I
    :pswitch_178
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10, v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$102(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 160
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const-wide/16 v11, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J
    invoke-static {v10, v11, v12}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$402(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;J)J

    .line 161
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    .line 162
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/16 v11, 0x28

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$302(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I

    goto :goto_124

    .line 166
    :pswitch_192
    const-wide/16 v10, 0xc8

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1a0

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-nez v10, :cond_1a7

    .line 167
    :cond_1a0
    if-eqz v7, :cond_124

    .line 168
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    goto/16 :goto_124

    .line 170
    :cond_1a7
    iget-object v10, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v10, :cond_1b0

    .line 171
    iget-object v10, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideSeekSpeed()V

    .line 172
    :cond_1b0
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-eqz v10, :cond_124

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v10

    if-nez v10, :cond_124

    .line 173
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v1

    .line 174
    .restart local v1       #curPos:I
    add-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(II)V

    goto/16 :goto_124

    .line 92
    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_178
        :pswitch_192
        :pswitch_75
    .end packed-switch
.end method
