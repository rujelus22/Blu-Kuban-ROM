.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
.super Ljava/lang/Thread;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$1;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;
    }
.end annotation


# instance fields
.field public mDone:Z

.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

.field private mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

.field private mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

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

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

.field private mHasSurface:Z

.field private mHaveEgl:Z

.field private mHeight:I

.field public mHolder:Landroid/view/SurfaceHolder;

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field private final sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;)V
    .registers 10
    .parameter "renderer"
    .parameter "chooser"
    .parameter "contextFactory"
    .parameter "surfaceFactory"
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 531
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$1;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    .line 540
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mSizeChanged:Z

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 562
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z

    .line 563
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWidth:I

    .line 564
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHeight:I

    .line 565
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRequestRender:Z

    .line 566
    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderMode:I

    .line 567
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    .line 568
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    .line 569
    iput-object p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    .line 570
    iput-object p4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    .line 571
    iput-object p5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    .line 572
    return-void
.end method

.method static synthetic access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    return-object p1
.end method

.method private getEvent()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 871
    monitor-enter p0

    .line 872
    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 873
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 877
    :goto_13
    return-object v0

    .line 876
    :cond_14
    monitor-exit p0

    .line 877
    const/4 v0, 0x0

    goto :goto_13

    .line 876
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

    .line 602
    new-instance v10, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    .line 604
    const/4 v3, 0x0

    .line 605
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v8, 0x0

    .line 606
    .local v8, tellRendererSurfaceCreated:Z
    const/4 v7, 0x0

    .line 611
    .local v7, tellRendererSurfaceChanged:Z
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->isDone()Z

    move-result v10

    if-nez v10, :cond_1c5

    .line 615
    const/4 v9, 0x0

    .line 616
    .local v9, w:I
    const/4 v4, 0x0

    .line 617
    .local v4, h:I
    const/4 v1, 0x0

    .line 618
    .local v1, changed:Z
    const/4 v5, 0x0

    .line 619
    .local v5, needStart:Z
    const/4 v2, 0x0

    .line 621
    .local v2, eventsWaiting:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v11
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_127

    .line 625
    :goto_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mPaused:Z

    if-eqz v10, :cond_3d

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 627
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 629
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHasSurface:Z

    if-nez v10, :cond_70

    .line 630
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_58

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 632
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWaitingForSurface:Z

    .line 633
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 651
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z

    if-eqz v10, :cond_98

    .line 652
    monitor-exit v11
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_124

    .line 750
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v11

    .line 751
    :try_start_64
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 752
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->finish()V

    .line 753
    monitor-exit v11
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_95

    .line 755
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :goto_6f
    return-void

    .line 636
    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHaveEgl:Z

    if-nez v10, :cond_58

    .line 637
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->tryAcquireEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 638
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHaveEgl:Z

    .line 639
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->start()V

    .line 640
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRequestRender:Z
    :try_end_93
    .catchall {:try_start_70 .. :try_end_93} :catchall_124

    .line 641
    const/4 v5, 0x1

    goto :goto_58

    .line 753
    :catchall_95
    move-exception v10

    :try_start_96
    monitor-exit v11
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v10

    .line 655
    :cond_98
    :try_start_98
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEventsWaiting:Z

    if-eqz v10, :cond_ca

    .line 656
    const/4 v2, 0x1

    .line 657
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEventsWaiting:Z

    .line 682
    :cond_a4
    :goto_a4
    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_124

    .line 687
    if-eqz v2, :cond_142

    .line 689
    :cond_a7
    :try_start_a7
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v6

    .local v6, r:Ljava/lang/Runnable;
    if-eqz v6, :cond_1d

    .line 690
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->isDone()Z
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_127

    move-result v10

    if-eqz v10, :cond_a7

    .line 750
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v11

    .line 751
    :try_start_bb
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 752
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->finish()V

    .line 753
    monitor-exit v11

    goto :goto_6f

    :catchall_c7
    move-exception v10

    monitor-exit v11
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_c7

    throw v10

    .line 661
    .end local v6           #r:Ljava/lang/Runnable;
    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mPaused:Z

    if-nez v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHaveEgl:Z

    if-eqz v10, :cond_139

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWidth:I

    if-lez v10, :cond_139

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHeight:I

    if-lez v10, :cond_139

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRequestRender:Z

    if-nez v10, :cond_f4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderMode:I

    if-ne v10, v15, :cond_139

    .line 662
    :cond_f4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mSizeChanged:Z

    .line 663
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWidth:I

    .line 664
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHeight:I

    .line 665
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mSizeChanged:Z

    .line 666
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRequestRender:Z

    .line 667
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_a4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_a4

    .line 668
    const/4 v1, 0x1

    .line 669
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWaitingForSurface:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_a4

    .line 682
    :catchall_124
    move-exception v10

    monitor-exit v11
    :try_end_126
    .catchall {:try_start_ca .. :try_end_126} :catchall_124

    :try_start_126
    throw v10
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_127

    .line 750
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :catchall_127
    move-exception v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v11

    .line 751
    :try_start_12d
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 752
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v12}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->finish()V

    .line 753
    monitor-exit v11
    :try_end_138
    .catchall {:try_start_12d .. :try_end_138} :catchall_1da

    throw v10

    .line 680
    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :cond_139
    :try_start_139
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_124

    goto/16 :goto_2d

    .line 699
    :cond_142
    if-eqz v5, :cond_146

    .line 700
    const/4 v8, 0x1

    .line 701
    const/4 v1, 0x1

    .line 703
    :cond_146
    if-eqz v1, :cond_167

    .line 704
    :try_start_148
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v10

    if-eqz v10, :cond_1bd

    .line 705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v10, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v3, v0

    .line 706
    const/4 v7, 0x1

    .line 714
    :cond_167
    :goto_167
    if-eqz v8, :cond_177

    .line 715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    iget-object v11, v11, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v3, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 716
    const/4 v8, 0x0

    .line 718
    :cond_177
    if-eqz v7, :cond_181

    .line 719
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10, v3, v9, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 720
    const/4 v7, 0x0

    .line 723
    :cond_181
    if-lez v9, :cond_1d

    if-lez v4, :cond_1d

    if-eqz v3, :cond_1d

    .line 726
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->isEnginePaused()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 729
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->getSceneDrawStatus()Z

    move-result v10

    if-ne v10, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    invoke-interface {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->isEnginePaused()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->swap()Z

    .line 739
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;->setSceneDrawStatus(Z)V

    goto/16 :goto_1d

    .line 710
    :cond_1bd
    const-string v10, "EglHelper"

    const-string v11, "Surface is invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_148 .. :try_end_1c4} :catchall_127

    goto :goto_167

    .line 750
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v11

    .line 751
    :try_start_1ca
    invoke-direct/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->stopEglLocked()V

    .line 752
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v10}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->finish()V

    .line 753
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
    .line 758
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 759
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z

    monitor-exit v1

    return v0

    .line 760
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
    .line 594
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHaveEgl:Z

    if-eqz v0, :cond_11

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHaveEgl:Z

    .line 596
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglHelper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EglHelper;->destroySurface()V

    .line 597
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->releaseEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V

    .line 599
    :cond_11
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .prologue
    .line 817
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 818
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mPaused:Z

    .line 819
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
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
    .line 824
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 825
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mPaused:Z

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRequestRender:Z

    .line 827
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 828
    monitor-exit v1

    .line 829
    return-void

    .line 828
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
    .line 832
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 833
    :try_start_3
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWidth:I

    .line 834
    iput p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHeight:I

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mSizeChanged:Z

    .line 836
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit v1

    .line 838
    return-void

    .line 837
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
    .line 843
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v2

    .line 844
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z

    .line 845
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 846
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 848
    :try_start_c
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_13

    .line 852
    :goto_f
    return-void

    .line 846
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 849
    :catch_13
    move-exception v0

    .line 850
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f
.end method

.method public run()V
    .registers 4

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->setName(Ljava/lang/String;)V

    .line 582
    :try_start_1a
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_23

    .line 586
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V

    .line 588
    :goto_22
    return-void

    .line 583
    :catch_23
    move-exception v0

    .line 586
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V

    goto :goto_22

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    const/4 v0, 0x1

    .line 764
    if-ltz p1, :cond_5

    if-le p1, v0, :cond_d

    .line 765
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_d
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 768
    :try_start_10
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mRenderMode:I

    .line 769
    if-ne p1, v0, :cond_19

    .line 770
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 772
    :cond_19
    monitor-exit v1

    .line 773
    return-void

    .line 772
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
    .line 789
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 790
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v1

    .line 794
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHasSurface:Z

    .line 795
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v1

    .line 797
    return-void

    .line 796
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
    .line 800
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    monitor-enter v2

    .line 804
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mHasSurface:Z

    .line 805
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 806
    :goto_b
    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_28

    if-nez v1, :cond_2b

    .line 808
    :try_start_19
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->sGLThreadManager:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 809
    :catch_1f
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b

    .line 813
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

    .line 814
    return-void
.end method
