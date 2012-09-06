.class Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1793
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/common/GLSurfaceView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1792
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1879
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_11

    .line 1883
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1884
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_f

    .line 1885
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1891
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1893
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1857
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_3c

    .line 1858
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1859
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1860
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_24

    .line 1861
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1863
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1866
    :cond_24
    iget-boolean v3, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_36

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_37

    :cond_36
    move v1, v2

    :cond_37
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_40

    .line 1876
    .end local v0           #renderer:Ljava/lang/String;
    :cond_3c
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_3e
    move v3, v1

    .line 1861
    goto :goto_1f

    .line 1857
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 1841
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1842
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1848
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    .prologue
    .line 1852
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1853
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 1852
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1799
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    #setter for: Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->access$1102(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;Z)Z

    .line 1800
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 1803
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1804
    monitor-exit p0

    return-void

    .line 1799
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)Z
    .registers 4
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1814
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-nez v1, :cond_f

    .line 1815
    :cond_9
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 1816
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1830
    :cond_e
    :goto_e
    return v0

    .line 1819
    :cond_f
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1820
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1827
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_1f

    .line 1828
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1830
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method
