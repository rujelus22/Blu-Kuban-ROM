.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #calls: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$200(Landroid/content/Context;)V

    .line 356
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$300()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 357
    const-string v0, "RealTimeChatService"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 358
    const-string v0, "RealTimeChatService"

    const-string v1, "release wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1f
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$300()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 363
    :cond_26
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 364
    const-string v0, "RealTimeChatService"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 365
    const-string v0, "RealTimeChatService"

    const-string v1, "Stop runnable: Stopping service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->stopSelf()V

    .line 374
    :goto_44
    return-void

    .line 369
    :cond_45
    const-string v0, "RealTimeChatService"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 370
    const-string v0, "RealTimeChatService"

    const-string v1, "Stop runnable: Not stopping, things to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_54
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->dump()V

    goto :goto_44
.end method
