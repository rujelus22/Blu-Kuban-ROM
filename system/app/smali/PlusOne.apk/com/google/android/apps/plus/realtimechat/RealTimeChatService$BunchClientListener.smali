.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BunchClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 4
    .parameter "client"

    .prologue
    .line 414
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 415
    const-string v0, "RealTimeChatService"

    const-string v1, "onConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$1;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public onDisconnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 456
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 457
    const-string v0, "RealTimeChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_21
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 460
    const/4 v0, 0x0

    :try_start_25
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$902(Z)Z

    .line 461
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_38

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$3;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void

    .line 461
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onPingReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 4
    .parameter "client"

    .prologue
    .line 434
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 435
    const-string v0, "RealTimeChatService"

    const-string v1, "ping received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

.method public onResultsReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/util/List;)V
    .registers 5
    .parameter "client"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Ljava/util/List;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method
