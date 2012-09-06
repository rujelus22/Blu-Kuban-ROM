.class public Lcom/sec/android/app/videoplayer/view/VideoSurface;
.super Landroid/view/SurfaceView;
.source "VideoSurface.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
.implements Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field private static final EXACTLY:I = 0x40000000

.field private static final FADE_OUT:I = 0x0

.field private static final FADE_OUT_TOGGLE:I = 0x4

.field private static final MODE_SHIFT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "VideoSurface"

.field private static final TITLE_FADE_OUT:I = 0x1

.field private static final VOLUME_FADE_OUT:I = 0x2


# instance fields
.field public mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceExists:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 297
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 367
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 297
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 367
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initVideoView()V
    .registers 3

    .prologue
    .line 192
    const-string v0, "VideoSurface"

    const-string v1, "initVideoView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 196
    return-void
.end method


# virtual methods
.method public HideContoller()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 666
    return-void
.end method

.method public attachController()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_19

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setPlayer(Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnchorView()V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setButtonArrange()V

    .line 281
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_31

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setPlayer(Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setAnchorView()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setButtonArrange()V

    .line 287
    :cond_31
    return-void
.end method

.method public changeScreen()V
    .registers 3

    .prologue
    .line 558
    const-string v0, "VideoSurface"

    const-string v1, "changeScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setFitToScreenMode(I)V

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 561
    return-void
.end method

.method public forceBtnRelease()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->forceBtnRelease()V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->forceBtnRelease()V

    .line 60
    return-void
.end method

.method public forceHideContols()V
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->forceHide()V

    .line 674
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_12

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->forceHide()V

    .line 677
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    return-void
.end method

.method public getBufferPercentage()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 603
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_b

    .line 605
    :try_start_5
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getBufferPercentage()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 612
    :cond_b
    :goto_b
    return v1

    .line 606
    :catch_c
    move-exception v0

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 608
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBufferPercentage() RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getCurrentPosition()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 590
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_c

    .line 592
    :try_start_5
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d

    move-result-wide v1

    long-to-int v1, v1

    .line 599
    :cond_c
    :goto_c
    return v1

    .line 593
    :catch_d
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPosition() RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getDuration()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 577
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_c

    .line 579
    :try_start_5
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d

    move-result-wide v1

    long-to-int v1, v1

    .line 586
    :cond_c
    :goto_c
    return v1

    .line 580
    :catch_d
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDuration() RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getSurfaceExists()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hideControls()V
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_9

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hide()V

    .line 537
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_12

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 540
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    return-void
.end method

.method public hideTitleControls()V
    .registers 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 653
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    return-void
.end method

.method public hideVolumeBar()V
    .registers 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_a

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 659
    :cond_a
    return-void
.end method

.method public isControls()Z
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isControlsShowing()Z
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-nez v0, :cond_6

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v0

    goto :goto_5
.end method

.method public isInitialized()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 629
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_b

    .line 631
    :try_start_5
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 638
    :cond_b
    :goto_b
    return v1

    .line 632
    :catch_c
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInitialized() RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public isPlaying()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 616
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_b

    .line 618
    :try_start_5
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 625
    :cond_b
    :goto_b
    return v1

    .line 619
    :catch_c
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying() RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public keepScreen()V
    .registers 2

    .prologue
    .line 683
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setFitToScreenMode(I)V

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 685
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 66
    const/4 v6, 0x1

    .line 67
    .local v6, surfaceWidth:I
    const/4 v5, 0x1

    .line 68
    .local v5, surfaceHeight:I
    const/4 v8, 0x0

    .line 69
    .local v8, videoWidth:I
    const/4 v7, 0x0

    .line 70
    .local v7, videoHeight:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v1

    .line 71
    .local v1, fitToSCR:I
    move v3, p1

    .line 72
    .local v3, newMeasureSpecWidth:I
    move v2, p2

    .line 74
    .local v2, newMeasureSpecHeight:I
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 79
    .local v4, rotation:I
    sget v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerWidth:I

    add-int v3, v10, v9

    .line 80
    sget v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerHeight:I

    add-int v2, v10, v9

    .line 84
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v9, :cond_c4

    .line 86
    :try_start_28
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getVideoWidth()I

    move-result v8

    .line 87
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getVideoHeight()I

    move-result v7

    .line 91
    if-nez v8, :cond_43

    if-nez v7, :cond_43

    .line 92
    const-string v9, "VideoSurface"

    const-string v10, "onMeasure() - videoWidth is 0 && videoHeight is 0 "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, v6, v5}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 155
    :goto_42
    return-void

    .line 96
    :cond_43
    invoke-virtual {p0, v8, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v6

    .line 97
    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4a} :catch_52

    move-result v5

    .line 106
    packed-switch v1, :pswitch_data_da

    .line 154
    :cond_4e
    :goto_4e
    invoke-super {p0, v6, v5}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_42

    .line 100
    :catch_52
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    const-string v9, "VideoSurface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure - RemoteException occured :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 108
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_73
    if-lez v8, :cond_4e

    if-lez v7, :cond_4e

    .line 109
    const-string v9, "VideoSurface"

    const-string v10, "onMeasure() - VideoUtil.NORMAL_RATIO"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-gt v8, v6, :cond_82

    if-le v7, v5, :cond_92

    .line 112
    :cond_82
    mul-int v9, v8, v5

    mul-int v10, v7, v6

    if-lt v9, v10, :cond_8d

    .line 113
    mul-int v9, v6, v7

    div-int v5, v9, v8

    goto :goto_4e

    .line 115
    :cond_8d
    mul-int v9, v5, v8

    div-int v6, v9, v7

    goto :goto_4e

    .line 117
    :cond_92
    move v6, v8

    .line 118
    move v5, v7

    goto :goto_4e

    .line 125
    :pswitch_95
    if-lez v8, :cond_4e

    if-lez v7, :cond_4e

    .line 126
    const-string v9, "VideoSurface"

    const-string v10, "onMeasure() - VideoUtil.KEEP_ASPECT_RATIO"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    mul-int v9, v8, v5

    mul-int v10, v7, v6

    if-lt v9, v10, :cond_ab

    .line 129
    mul-int v9, v6, v7

    div-int v5, v9, v8

    goto :goto_4e

    .line 131
    :cond_ab
    mul-int v9, v5, v8

    div-int v6, v9, v7

    goto :goto_4e

    .line 137
    :pswitch_b0
    if-lez v8, :cond_4e

    if-lez v7, :cond_4e

    .line 138
    const-string v9, "VideoSurface"

    const-string v10, "onMeasure() - VideoUtil.OVERLOOK_ASPECT_RATIO"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, v8, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v6

    .line 140
    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v5

    goto :goto_4e

    .line 146
    :cond_c4
    const-string v9, "VideoSurface"

    const-string v10, "onMeasure() - default Size"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-lez v8, :cond_4e

    if-lez v7, :cond_4e

    .line 148
    invoke-static {v8, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDefaultSize(II)I

    move-result v6

    .line 149
    invoke-static {v7, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDefaultSize(II)I

    move-result v5

    goto/16 :goto_4e

    .line 106
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_73
        :pswitch_95
        :pswitch_b0
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->onPause()V

    .line 216
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->onResume()V

    .line 211
    :cond_9
    return-void
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 450
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_31

    .line 451
    const-string v1, "VideoSurface"

    const-string v2, "pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :try_start_b
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationLandScape()V

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v1, :cond_20

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 460
    :cond_20
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 461
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_39

    .line 470
    :goto_2c
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseSubTitleProcessor()V

    .line 472
    :cond_31
    :goto_31
    return-void

    .line 463
    :cond_32
    :try_start_32
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_39

    goto :goto_2c

    .line 464
    :catch_39
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public removeAllInController()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_e

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hide()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeAllViewsInLayout()V

    .line 354
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_1c

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->removeAllViewsInLayout()V

    .line 358
    :cond_1c
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 6
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 158
    move v0, p1

    .line 160
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 161
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 163
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 188
    :goto_c
    return v0

    .line 168
    :sswitch_d
    move v0, p1

    .line 169
    goto :goto_c

    .line 176
    :sswitch_f
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 177
    goto :goto_c

    .line 182
    :sswitch_14
    move v0, v2

    .line 183
    goto :goto_c

    .line 163
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method public seekTo(I)V
    .registers 6
    .parameter "msec"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDuration()I

    move-result v1

    if-gtz v1, :cond_e

    .line 476
    const-string v1, "VideoSurface"

    const-string v2, "seekTo() - live streaming. don\'t seek."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_d
    :goto_d
    return-void

    .line 480
    :cond_e
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_d

    .line 482
    :try_start_12
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_d

    .line 483
    :catch_19
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo() - RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public seekTo(II)V
    .registers 7
    .parameter "msec"
    .parameter "seekMode"

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDuration()I

    move-result v1

    if-gtz v1, :cond_e

    .line 499
    const-string v1, "VideoSurface"

    const-string v2, "seekTo() - visual Seek - live streaming. don\'t seek."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_d
    :goto_d
    return-void

    .line 503
    :cond_e
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_d

    .line 505
    :try_start_12
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek pos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seekMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seekTo(II)J
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_39} :catch_3a

    goto :goto_d

    .line 507
    :catch_3a
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo() -- RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setControllerPlayerStop()V
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v0

    if-nez v0, :cond_b

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->playerStop()V

    .line 271
    :cond_b
    return-void
.end method

.method public setControllerUpdate()V
    .registers 5

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v1

    if-nez v1, :cond_32

    .line 220
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 221
    const-string v1, "VideoSurface"

    const-string v2, "setControllerUpdate - previous status is pause."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_23

    .line 225
    :try_start_18
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_33

    .line 235
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateAllshareBtn()V

    .line 239
    :cond_32
    :goto_32
    return-void

    .line 227
    :catch_33
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setControllerUpdate - Exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public setEmptyTitleName()V
    .registers 4

    .prologue
    .line 262
    const-string v1, "VideoSurface"

    const-string v2, "setEmptyTitleName()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v0, ""

    .line 265
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateTitle(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setMultiWindowMode()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->showForMultiWindow()V

    .line 549
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_13

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 552
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    return-void
.end method

.method public setTimeZone(Ljava/util/Calendar;)V
    .registers 3
    .parameter "cal"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setTimeZone(Ljava/util/Calendar;)V

    .line 694
    return-void
.end method

.method public setTitleName()V
    .registers 6

    .prologue
    .line 242
    const-string v1, ""

    .line 245
    .local v1, name:Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getDisplayName()Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_1f

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1e

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateTitle(Ljava/lang/String;)V

    .line 259
    :cond_1e
    :goto_1e
    return-void

    .line 247
    :catch_1f
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleName - RemoteException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public setVideoController(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 4
    .parameter "btnctrl"
    .parameter "titlectrl"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 203
    :cond_9
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 204
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->attachController()V

    .line 206
    return-void
.end method

.method public showControls(I)V
    .registers 6
    .parameter "showTime"

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setEnabled(Z)V

    .line 522
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_1a

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->show()V

    .line 525
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_23

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->show()V

    .line 528
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    return-void
.end method

.method public showTitleControls(I)V
    .registers 6
    .parameter "showTime"

    .prologue
    const/4 v2, 0x1

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_a

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->show()V

    .line 645
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 647
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 394
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v3

    if-nez v3, :cond_f

    .line 395
    const-string v3, "VideoSurface"

    const-string v4, "start. playing requested state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_e
    :goto_e
    return-void

    .line 399
    :cond_f
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_e

    .line 400
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 403
    const/4 v3, 0x3

    :try_start_17
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 404
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 408
    :goto_20
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v3, :cond_29

    .line 409
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 411
    :cond_29
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_56

    .line 418
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v1

    .line 420
    .local v1, id:J
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 421
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 422
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    goto :goto_e

    .line 406
    .end local v1           #id:J
    :cond_50
    :try_start_50
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_20

    .line 412
    :catch_56
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    const-string v3, "VideoSurface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start() RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:J
    :cond_77
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    goto :goto_e

    .line 426
    :cond_7a
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 427
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_e
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 433
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_19

    .line 434
    const-string v1, "VideoSurface"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_b
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 438
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_1a

    .line 445
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 447
    :cond_19
    :goto_19
    return-void

    .line 439
    :catch_1a
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public toggleControlsVisiblity()V
    .registers 2

    .prologue
    .line 332
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/Who;->print()V

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->HideContoller()V

    .line 342
    :goto_c
    return-void

    .line 337
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_16

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V

    .line 340
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->requestFocus()Z

    goto :goto_c
.end method

.method public updateClock()V
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateClock()V

    .line 690
    return-void
.end method

.method public updateVolumeBar()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideVolumeBubble()V

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 574
    return-void
.end method
