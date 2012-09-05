.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
.super Ljava/lang/Thread;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$1;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;
    }
.end annotation


# instance fields
.field public mDone:Z

.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

.field private mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

.field private mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsWaiting:Z

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

.field private mHasSurface:Z

.field private mHaveEgl:Z

.field private mHeight:I

.field public mHolder:Landroid/view/SurfaceHolder;

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field private final sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;)V
    .registers 10
    .parameter "renderer"
    .parameter "chooser"
    .parameter "contextFactory"
    .parameter "surfaceFactory"
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 527
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$1;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    .line 536
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mSizeChanged:Z

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 558
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z

    .line 559
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWidth:I

    .line 560
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHeight:I

    .line 561
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRequestRender:Z

    .line 562
    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderMode:I

    .line 563
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    .line 564
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    .line 565
    iput-object p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    .line 566
    iput-object p4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    .line 567
    iput-object p5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    .line 568
    return-void
.end method

.method static synthetic access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    return-object p1
.end method

.method private getEvent()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 867
    monitor-enter p0

    .line 868
    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 869
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 873
    :goto_13
    return-object v0

    .line 872
    :cond_14
    monitor-exit p0

    .line 873
    const/4 v0, 0x0

    goto :goto_13

    .line 872
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private guardedRun()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    .line 598
    new-instance v10, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    .line 600
    const/4 v3, 0x0

    .line 601
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v8, 0x0

    .line 602
    .local v8, tellRendererSurfaceCreated:Z
    const/4 v7, 0x0

    .line 607
    .local v7, tellRendererSurfaceChanged:Z
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->isDone()Z

    move-result v10

    if-nez v10, :cond_1c5

    .line 611
    const/4 v9, 0x0

    .line 612
    .local v9, w:I
    const/4 v4, 0x0

    .line 613
    .local v4, h:I
    const/4 v1, 0x0

    .line 614
    .local v1, changed:Z
    const/4 v5, 0x0

    .line 615
    .local v5, needStart:Z
    const/4 v2, 0x0

    .line 617
    .local v2, eventsWaiting:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v11
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_127

    .line 621
    :goto_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mPaused:Z

    if-eqz v10, :cond_3d

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 623
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 625
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHasSurface:Z

    if-nez v10, :cond_70

    .line 626
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_58

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 628
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWaitingForSurface:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 647
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z

    if-eqz v10, :cond_98

    .line 648
    monitor-exit v11
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_124

    .line 746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v11

    .line 747
    :try_start_64
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 748
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->finish()V

    .line 749
    monitor-exit v11
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_95

    .line 751
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :goto_6f
    return-void

    .line 632
    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHaveEgl:Z

    if-nez v10, :cond_58

    .line 633
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->tryAcquireEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 634
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHaveEgl:Z

    .line 635
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->start()V

    .line 636
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRequestRender:Z
    :try_end_93
    .catchall {:try_start_70 .. :try_end_93} :catchall_124

    .line 637
    const/4 v5, 0x1

    goto :goto_58

    .line 749
    :catchall_95
    move-exception v10

    :try_start_96
    monitor-exit v11
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v10

    .line 651
    :cond_98
    :try_start_98
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEventsWaiting:Z

    if-eqz v10, :cond_ca

    .line 652
    const/4 v2, 0x1

    .line 653
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEventsWaiting:Z

    .line 678
    :cond_a4
    :goto_a4
    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_124

    .line 683
    if-eqz v2, :cond_142

    .line 685
    :cond_a7
    :try_start_a7
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v6

    .local v6, r:Ljava/lang/Runnable;
    if-eqz v6, :cond_1d

    .line 686
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->isDone()Z
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_127

    move-result v10

    if-eqz v10, :cond_a7

    .line 746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v11

    .line 747
    :try_start_bb
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 748
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->finish()V

    .line 749
    monitor-exit v11

    goto :goto_6f

    :catchall_c7
    move-exception v10

    monitor-exit v11
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_c7

    throw v10

    .line 657
    .end local v6           #r:Ljava/lang/Runnable;
    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mPaused:Z

    if-nez v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHaveEgl:Z

    if-eqz v10, :cond_139

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWidth:I

    if-lez v10, :cond_139

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHeight:I

    if-lez v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRequestRender:Z

    if-nez v10, :cond_f4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderMode:I

    if-ne v10, v15, :cond_139

    .line 658
    :cond_f4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mSizeChanged:Z

    .line 659
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWidth:I

    .line 660
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHeight:I

    .line 661
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mSizeChanged:Z

    .line 662
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRequestRender:Z

    .line 663
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_a4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_a4

    .line 664
    const/4 v1, 0x1

    .line 665
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWaitingForSurface:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_a4

    .line 678
    :catchall_124
    move-exception v10

    monitor-exit v11
    :try_end_126
    .catchall {:try_start_ca .. :try_end_126} :catchall_124

    :try_start_126
    throw v10
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_127

    .line 746
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :catchall_127
    move-exception v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v11

    .line 747
    :try_start_12d
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->finish()V

    .line 749
    monitor-exit v11
    :try_end_138
    .catchall {:try_start_12d .. :try_end_138} :catchall_1da

    throw v10

    .line 676
    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :cond_139
    :try_start_139
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_124

    goto/16 :goto_2d

    .line 695
    :cond_142
    if-eqz v5, :cond_146

    .line 696
    const/4 v8, 0x1

    .line 697
    const/4 v1, 0x1

    .line 699
    :cond_146
    if-eqz v1, :cond_167

    .line 700
    :try_start_148
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v10

    if-eqz v10, :cond_1bd

    .line 701
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v10, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v3, v0

    .line 702
    const/4 v7, 0x1

    .line 710
    :cond_167
    :goto_167
    if-eqz v8, :cond_177

    .line 711
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    iget-object v11, v11, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v3, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 712
    const/4 v8, 0x0

    .line 714
    :cond_177
    if-eqz v7, :cond_181

    .line 715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10, v3, v9, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 716
    const/4 v7, 0x0

    .line 719
    :cond_181
    if-lez v9, :cond_1d

    if-lez v4, :cond_1d

    if-eqz v3, :cond_1d

    .line 722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->isEnginePaused()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 725
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->getSceneDrawStatus()Z

    move-result v10

    if-ne v10, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->isEnginePaused()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 734
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->swap()Z

    .line 735
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;->setSceneDrawStatus(Z)V

    goto/16 :goto_1d

    .line 706
    :cond_1bd
    const-string v10, "EglHelper"

    const-string v11, "Surface is invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_148 .. :try_end_1c4} :catchall_127

    goto :goto_167

    .line 746
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v11

    .line 747
    :try_start_1ca
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->stopEglLocked()V

    .line 748
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->finish()V

    .line 749
    monitor-exit v11

    goto/16 :goto_6f

    :catchall_1d7
    move-exception v10

    monitor-exit v11
    :try_end_1d9
    .catchall {:try_start_1ca .. :try_end_1d9} :catchall_1d7

    throw v10

    :catchall_1da
    move-exception v10

    :try_start_1db
    monitor-exit v11
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    throw v10
.end method

.method private isDone()Z
    .registers 3

    .prologue
    .line 754
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 755
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z

    monitor-exit v1

    return v0

    .line 756
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private stopEglLocked()V
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHaveEgl:Z

    if-eqz v0, :cond_11

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHaveEgl:Z

    .line 592
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EglHelper;->destroySurface()V

    .line 593
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->releaseEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V

    .line 595
    :cond_11
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .prologue
    .line 813
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 814
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mPaused:Z

    .line 815
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 816
    monitor-exit v1

    .line 817
    return-void

    .line 816
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 820
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 821
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mPaused:Z

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRequestRender:Z

    .line 823
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 824
    monitor-exit v1

    .line 825
    return-void

    .line 824
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onWindowResize(II)V
    .registers 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 829
    :try_start_3
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWidth:I

    .line 830
    iput p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHeight:I

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mSizeChanged:Z

    .line 832
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 833
    monitor-exit v1

    .line 834
    return-void

    .line 833
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 4

    .prologue
    .line 839
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v2

    .line 840
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z

    .line 841
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 842
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 844
    :try_start_c
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_13

    .line 848
    :goto_f
    return-void

    .line 842
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 845
    :catch_13
    move-exception v0

    .line 846
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f
.end method

.method public run()V
    .registers 4

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->setName(Ljava/lang/String;)V

    .line 578
    :try_start_1a
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_23

    .line 582
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V

    .line 584
    :goto_22
    return-void

    .line 579
    :catch_23
    move-exception v0

    .line 582
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V

    goto :goto_22

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    const/4 v0, 0x1

    .line 760
    if-ltz p1, :cond_5

    if-le p1, v0, :cond_d

    .line 761
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_d
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 764
    :try_start_10
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mRenderMode:I

    .line 765
    if-ne p1, v0, :cond_19

    .line 766
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 768
    :cond_19
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 786
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v1

    .line 790
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHasSurface:Z

    .line 791
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 792
    monitor-exit v1

    .line 793
    return-void

    .line 792
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 796
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    monitor-enter v2

    .line 800
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mHasSurface:Z

    .line 801
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 802
    :goto_b
    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_28

    if-nez v1, :cond_2b

    .line 804
    :try_start_19
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 805
    :catch_1f
    move-exception v0

    .line 806
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b

    .line 809
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    :cond_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 810
    return-void
.end method
