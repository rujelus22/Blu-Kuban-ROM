.class Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# instance fields
.field private mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/GLTextureView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1751
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1837
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_18

    .line 1838
    const-string v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESVersion:I

    .line 1841
    iget v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_16

    .line 1842
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1849
    :cond_16
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1851
    :cond_18
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1816
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_36

    .line 1817
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1818
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_24

    .line 1820
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1822
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1824
    :cond_24
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_30

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1832
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 1834
    .end local v0           #renderer:Ljava/lang/String;
    :cond_36
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_38
    move v3, v1

    .line 1820
    goto :goto_1f

    .line 1816
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    .line 1800
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1801
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1807
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
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
    .line 1811
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1812
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
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

    .line 1811
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1758
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    #setter for: Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->access$1202(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;Z)Z

    .line 1759
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    .line 1762
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1763
    monitor-exit p0

    return-void

    .line 1758
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)Z
    .registers 4
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1773
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-nez v1, :cond_f

    .line 1774
    :cond_9
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    .line 1775
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1789
    :cond_e
    :goto_e
    return v0

    .line 1778
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1779
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1786
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-eqz v0, :cond_1f

    .line 1787
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1789
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method
