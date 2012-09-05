.class public Lcom/google/android/music/albumwall/AlbumWallView;
.super Lcom/google/android/opengl/glview/GLSurfaceView;
.source "AlbumWallView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    }
.end annotation


# instance fields
.field private mAccessibilityText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLongpressHandled:Z

.field private mMode:I

.field private mMusicFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field private mRendererThreadAlive:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUISyncQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "context"
    .parameter "prefs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mAccessibilityText:Ljava/util/ArrayList;

    .line 519
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mUISyncQueue:Ljava/util/concurrent/BlockingQueue;

    .line 142
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 143
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getPreferredSurfaceFormat()I

    move-result v0

    .line 144
    .local v0, surfacePixelFormat:I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLContextClientVersion(I)V

    .line 145
    if-nez v0, :cond_46

    .line 146
    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLConfigChooser(Z)V

    .line 151
    :goto_24
    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setPreserveEGLContextOnPause(Z)V

    .line 153
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 154
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 155
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mHandler:Landroid/os/Handler;

    .line 157
    check-cast p1, Lcom/google/android/music/activitymanagement/MusicFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMusicFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 158
    return-void

    .line 148
    .restart local p1
    :cond_46
    new-instance v1, Lcom/google/android/opengl/glview/PixelFormatConfigChooser;

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/opengl/glview/PixelFormatConfigChooser;-><init>(III)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_24
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/utils/MusicCallbackHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/AlbumWallView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->sendBoolean(Z)V

    return-void
.end method

.method private static getAccessibilityHoverEvent(Z)I
    .registers 2
    .parameter "entered"

    .prologue
    .line 793
    if-eqz p0, :cond_5

    .line 794
    const/16 v0, 0x80

    .line 796
    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x100

    goto :goto_4
.end method

.method private static isDPadNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter "event"

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 472
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 470
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 465
    nop

    :pswitch_data_c
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private isTopLevel()Z
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMusicFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v0

    return v0
.end method

.method private receiveBoolean()Z
    .registers 3

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mUISyncQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 535
    :goto_c
    return v1

    .line 534
    :catch_d
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 362
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 363
    return-void
.end method

.method private routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter "tag"
    .parameter "e1"
    .parameter "e2"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    if-nez v0, :cond_7

    .line 368
    const/4 v0, 0x0

    .line 383
    :goto_6
    return v0

    .line 370
    :cond_7
    if-eqz p2, :cond_24

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 371
    .local v3, copy1:Landroid/view/MotionEvent;
    :goto_d
    if-eqz p3, :cond_13

    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 372
    .local v4, copy2:Landroid/view/MotionEvent;
    :cond_13
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$7;

    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$7;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 383
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->receiveBoolean()Z

    move-result v0

    goto :goto_6

    .end local v3           #copy1:Landroid/view/MotionEvent;
    .end local v4           #copy2:Landroid/view/MotionEvent;
    :cond_24
    move-object v3, v4

    .line 370
    goto :goto_d
.end method

.method private routeKey(III)Z
    .registers 5
    .parameter "tag"
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    if-nez v0, :cond_6

    .line 542
    const/4 v0, 0x0

    .line 548
    :goto_5
    return v0

    .line 544
    :cond_6
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallView$9;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;III)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 548
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->receiveBoolean()Z

    move-result v0

    goto :goto_5
.end method

.method private final runInDrawFrame(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRender()V

    .line 643
    return-void
.end method

.method private sendBoolean(Z)V
    .registers 4
    .parameter "handled"

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mUISyncQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz p1, :cond_a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 528
    :goto_9
    return-void

    .line 524
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_6

    .line 525
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private static shouldSkipKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter "event"

    .prologue
    .line 461
    invoke-static {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->isDPadNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->shouldSkipNavigationEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static shouldSkipNavigationEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 494
    :cond_7
    :goto_7
    return v0

    .line 489
    :cond_8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_7

    .line 491
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 707
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 709
    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    .line 710
    .local v2, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mAccessibilityText:Ljava/util/ArrayList;

    monitor-enter v4

    .line 711
    :try_start_13
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mAccessibilityText:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 712
    .local v1, s:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 714
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2c
    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 715
    invoke-super {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    return v3
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    const v2, 0x3e4ccccd

    .line 560
    invoke-super {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 561
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 562
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 563
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 564
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 565
    return-void
.end method

.method public getLabelsVisible()Z
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getLabelsVisible()Z

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMode:I

    return v0
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method public invalidateTexture(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 695
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$22;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$22;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->onAttachedToWindow()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    .line 279
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 587
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->onDetachedFromWindow()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    .line 285
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 387
    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mLongpressHandled:Z

    .line 388
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    .line 389
    .local v6, result:Z
    return v6
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 412
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 569
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    if-nez v1, :cond_5

    .line 584
    :goto_4
    return-void

    .line 572
    :cond_5
    if-nez p3, :cond_16

    const/4 v0, 0x0

    .line 574
    .local v0, copy:Landroid/graphics/Rect;
    :goto_8
    :try_start_8
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$10;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/music/albumwall/AlbumWallView$10;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 579
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->receiveBoolean()Z
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_4

    .line 580
    :catch_14
    move-exception v1

    goto :goto_4

    .line 572
    .end local v0           #copy:Landroid/graphics/Rect;
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_8
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 417
    invoke-static {p1}, Lcom/google/android/music/utils/PostFroyoUtils$MotionEventComp;->getSource(Landroid/view/MotionEvent;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, gestureId:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_24

    .line 435
    .end local v1           #gestureId:I
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 422
    .restart local v1       #gestureId:I
    :pswitch_13
    const/16 v1, 0xe

    .line 433
    :goto_15
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_12

    .line 425
    :pswitch_1e
    const/16 v1, 0xd

    .line 426
    goto :goto_15

    .line 428
    :pswitch_21
    const/16 v1, 0xf

    .line 429
    goto :goto_15

    .line 420
    :pswitch_data_24
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_12
        :pswitch_13
        :pswitch_21
    .end packed-switch
.end method

.method public onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 758
    const/4 v0, 0x0

    check-cast p1, Lcom/google/android/music/albumwall/MusicItem;

    .end local p1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->setAccessibilityText(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$23;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/AlbumWallView$23;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 763
    return-void
.end method

.method public onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V
    .registers 6
    .parameter "item"
    .parameter "entered"

    .prologue
    .line 774
    const/4 v1, 0x0

    check-cast p1, Lcom/google/android/music/albumwall/MusicItem;

    .end local p1
    invoke-virtual {p0, v1, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->setAccessibilityText(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 775
    invoke-static {p2}, Lcom/google/android/music/albumwall/AlbumWallView;->getAccessibilityHoverEvent(Z)I

    move-result v0

    .line 776
    .local v0, event:I
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$25;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView$25;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 440
    const/4 v4, 0x4

    if-ne p1, v4, :cond_13

    .line 441
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v2

    .line 442
    .local v2, viewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v0, v2, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 444
    .local v0, expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->isTopLevel()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 454
    .end local v0           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v2           #viewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :cond_12
    :goto_12
    return v3

    .line 449
    :cond_13
    invoke-static {p2}, Lcom/google/android/music/albumwall/AlbumWallView;->shouldSkipKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 453
    :cond_19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int v1, v3, v4

    .line 454
    .local v1, flags:I
    const/16 v3, 0xb

    invoke-direct {p0, v3, p1, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->routeKey(III)Z

    move-result v3

    goto :goto_12
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 501
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1b

    .line 502
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v2

    .line 503
    .local v2, viewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v0, v2, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 505
    .local v0, expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->isTopLevel()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 507
    new-instance v3, Lcom/google/android/music/albumwall/AlbumWallView$8;

    invoke-direct {v3, p0}, Lcom/google/android/music/albumwall/AlbumWallView$8;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;)V

    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 512
    const/4 v3, 0x1

    .line 516
    .end local v0           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v2           #viewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :goto_1a
    return v3

    .line 515
    :cond_1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int v1, v3, v4

    .line 516
    .local v1, flags:I
    const/16 v3, 0xc

    invoke-direct {p0, v3, p1, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->routeKey(III)Z

    move-result v3

    goto :goto_1a
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 407
    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mLongpressHandled:Z

    .line 408
    return-void
.end method

.method public onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V
    .registers 5
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 766
    check-cast p1, Lcom/google/android/music/albumwall/MusicPile;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->setAccessibilityText(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$24;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/AlbumWallView$24;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    return-void
.end method

.method public onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V
    .registers 7
    .parameter "pile"
    .parameter "expanded"
    .parameter "entered"

    .prologue
    .line 784
    check-cast p1, Lcom/google/android/music/albumwall/MusicPile;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setAccessibilityText(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 785
    invoke-static {p3}, Lcom/google/android/music/albumwall/AlbumWallView;->getAccessibilityHoverEvent(Z)I

    move-result v0

    .line 786
    .local v0, event:I
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$26;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView$26;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    .line 646
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 647
    .local v1, scale:F
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 648
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$17;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$17;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;F)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 653
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 657
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 658
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$18;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView$18;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 663
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 5
    .parameter "detector"

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 668
    .local v1, scale:F
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 669
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$19;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$19;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;F)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 402
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    .line 403
    .local v6, result:Z
    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 393
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 394
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 397
    const/4 v1, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .parameter "event"

    .prologue
    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v16

    .line 295
    .local v16, scaleGestureInProgress:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 296
    .local v17, scaleHandled:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    .line 297
    if-eqz v16, :cond_20

    .line 355
    .end local v17           #scaleHandled:Z
    :goto_1f
    return v17

    .line 304
    .restart local v17       #scaleHandled:Z
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 305
    .local v18, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 306
    .local v19, y:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 307
    .local v14, result:Z
    if-eqz v14, :cond_6a

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_b4

    .line 353
    :cond_3b
    :goto_3b
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallView;->mLastMotionX:F

    .line 354
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallView;->mLastMotionY:F

    move/from16 v17, v14

    .line 355
    goto :goto_1f

    .line 312
    :pswitch_4a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/albumwall/AlbumWallView;->recordDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_3b

    .line 326
    :pswitch_4e
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 327
    .local v15, result2:Ljava/lang/Boolean;
    if-nez v14, :cond_66

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_66
    const/4 v14, 0x1

    :goto_67
    goto :goto_3b

    :cond_68
    const/4 v14, 0x0

    goto :goto_67

    .line 334
    .end local v15           #result2:Ljava/lang/Boolean;
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_bc

    goto :goto_3b

    .line 336
    :pswitch_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mLongpressHandled:Z

    .line 337
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/albumwall/AlbumWallView;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 338
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 339
    goto :goto_3b

    .line 341
    :pswitch_87
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mLongpressHandled:Z

    if-nez v2, :cond_3b

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mLastMotionX:F

    sub-float v6, v2, v18

    .line 343
    .local v6, scrollX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mLastMotionY:F

    sub-float v7, v2, v19

    .line 344
    .local v7, scrollY:F
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 346
    goto :goto_3b

    .line 349
    .end local v6           #scrollX:F
    .end local v7           #scrollY:F
    :pswitch_a7
    const/4 v9, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    goto :goto_3b

    .line 310
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4e
    .end packed-switch

    .line 334
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_72
        :pswitch_a7
        :pswitch_87
    .end packed-switch
.end method

.method public requestFullLayout()V
    .registers 2

    .prologue
    .line 245
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/albumwall/AlbumWallView$5;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public requestInvalidate(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 232
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$4;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$3;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public resetScrollingPositionAndFocusItem()V
    .registers 2

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/albumwall/AlbumWallView$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public setAccessibilityText(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 10
    .parameter "focusedPile"
    .parameter "focusedItem"

    .prologue
    .line 719
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mAccessibilityText:Ljava/util/ArrayList;

    monitor-enter v5

    .line 720
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mAccessibilityText:Ljava/util/ArrayList;

    .line 721
    .local v3, text:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 722
    if-eqz p1, :cond_23

    .line 723
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, mainLabel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongAndCountLabel(Landroid/content/Context;ZLcom/google/android/music/albumwall/MusicPile;)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, songCountLabel:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 727
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_1c
    if-eqz v1, :cond_21

    .line 730
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v0           #mainLabel:Ljava/lang/String;
    .end local v1           #songCountLabel:Ljava/lang/String;
    :cond_21
    :goto_21
    monitor-exit v5

    .line 755
    return-void

    .line 732
    :cond_23
    if-eqz p2, :cond_21

    .line 733
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v0

    .line 734
    .restart local v0       #mainLabel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, subLabel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_62

    .line 742
    :goto_34
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v4, p2, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAccessibilitySongCountLabel(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .restart local v1       #songCountLabel:Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 745
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_43
    if-eqz v2, :cond_48

    .line 748
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_48
    if-eqz v1, :cond_21

    .line 751
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 754
    .end local v0           #mainLabel:Ljava/lang/String;
    .end local v1           #songCountLabel:Ljava/lang/String;
    .end local v2           #subLabel:Ljava/lang/String;
    .end local v3           #text:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v4

    .line 738
    .restart local v0       #mainLabel:Ljava/lang/String;
    .restart local v2       #subLabel:Ljava/lang/String;
    .restart local v3       #text:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_51
    move-object v2, v0

    .line 739
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_4e

    move-result-object v0

    goto :goto_34

    .line 735
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "callback"
    .parameter "callbackHelper"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    if-eqz v0, :cond_c

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callback already set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_c
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 182
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 11
    .parameter "epoch"
    .parameter "pile"
    .parameter "unexpandedCount"
    .parameter "expandedCount"

    .prologue
    .line 605
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView$13;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 609
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 13
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 613
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$14;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 630
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$16;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView$16;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method public setLabelsVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 258
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$6;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public setManageAlbumMode(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 681
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$20;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$20;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0}, Lcom/google/android/music/utils/MusicCallbackHelper;->removeCancellables()V

    .line 191
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMode:I

    .line 192
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMode:I

    if-eq v0, v3, :cond_1a

    move v0, v1

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->setFocusable(Z)V

    .line 193
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mMode:I

    if-eq v0, v3, :cond_1c

    :goto_16
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setFocusableInTouchMode(Z)V

    .line 194
    return-void

    :cond_1a
    move v0, v2

    .line 192
    goto :goto_f

    :cond_1c
    move v1, v2

    .line 193
    goto :goto_16
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 5
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 597
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallView$12;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 590
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView$11;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .registers 13
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 622
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$15;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$15;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRendererThreadAlive:Z

    .line 164
    instance-of v1, p1, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 166
    .local v0, albumWallRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 170
    .end local v0           #albumWallRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    :goto_f
    return-void

    .line 168
    :cond_10
    const-string v1, "AlbumWallView"

    const-string v2, "Invalid Renderer for AlbumWallView type"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
