.class Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;
.super Ljava/lang/Object;
.source "VideoTitleController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    :goto_7
    return v1

    .line 248
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_7a

    .line 279
    :cond_f
    :goto_f
    const/4 v1, 0x0

    goto :goto_7

    .line 250
    :pswitch_11
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 253
    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 255
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 256
    const-string v1, "VideoTitleController"

    const-string v2, "mAllShareTouchListener onTouch() save current position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x1

    :try_start_2d
    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    .line 260
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_44

    .line 266
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v1

    const v2, 0x36ee80

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->showControls(I)V

    goto :goto_f

    .line 261
    :catch_44
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    const-string v1, "VideoTitleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOnClickListener() RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 270
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_65
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    if-eqz v1, :cond_6e

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->allshareCurrentUri()V

    .line 272
    :cond_6e
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->showControls(I)V

    goto :goto_f

    .line 248
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_65
    .end packed-switch
.end method
