.class Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1748
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1747
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1831
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_11

    .line 1835
    iput v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1836
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_f

    .line 1837
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1843
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1845
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

    .line 1812
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_36

    .line 1813
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1814
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_24

    .line 1816
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1818
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1820
    :cond_24
    iget-boolean v3, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_30

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1826
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 1828
    .end local v0           #renderer:Ljava/lang/String;
    :cond_36
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_38
    move v3, v1

    .line 1816
    goto :goto_1f

    .line 1812
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1796
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1797
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1803
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
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
    .line 1807
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1808
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
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

    .line 1807
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1754
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    #setter for: Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->access$1102(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;Z)Z

    .line 1755
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1758
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1759
    monitor-exit p0

    return-void

    .line 1754
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)Z
    .registers 4
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1769
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-nez v1, :cond_f

    .line 1770
    :cond_9
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1771
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1785
    :cond_e
    :goto_e
    return v0

    .line 1774
    :cond_f
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1775
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1782
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_1f

    .line 1783
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1785
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method
