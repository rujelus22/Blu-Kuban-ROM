.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThreadManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;


# direct methods
.method private constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V
    .registers 2
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized releaseEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V
    .registers 4
    .parameter "thread"

    .prologue
    .line 908
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_f

    .line 909
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    .line 911
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 912
    monitor-exit p0

    return-void

    .line 908
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)V
    .registers 4
    .parameter "thread"

    .prologue
    .line 886
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mDone:Z

    .line 887
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 888
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    const/4 v1, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    .line 890
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 891
    monitor-exit p0

    return-void

    .line 886
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryAcquireEglSurface(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Z
    .registers 3
    .parameter "thread"

    .prologue
    .line 899
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    move-result-object v0

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 900
    :cond_11
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread$GLThreadManager;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->mEglOwner:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->access$102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    .line 901
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1e

    .line 902
    const/4 v0, 0x1

    .line 904
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    .line 899
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
