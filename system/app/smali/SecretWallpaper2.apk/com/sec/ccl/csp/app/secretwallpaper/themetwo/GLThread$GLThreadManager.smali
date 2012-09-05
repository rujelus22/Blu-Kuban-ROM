.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThreadManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;


# direct methods
.method private constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V
    .registers 2
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized releaseEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V
    .registers 4
    .parameter "thread"

    .prologue
    .line 904
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_f

    .line 905
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    .line 907
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 908
    monitor-exit p0

    return-void

    .line 904
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)V
    .registers 4
    .parameter "thread"

    .prologue
    .line 882
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mDone:Z

    .line 883
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 884
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    .line 886
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 887
    monitor-exit p0

    return-void

    .line 882
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryAcquireEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Z
    .registers 3
    .parameter "thread"

    .prologue
    .line 895
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    move-result-object v0

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 896
    :cond_11
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    .line 897
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1e

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    .line 895
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
