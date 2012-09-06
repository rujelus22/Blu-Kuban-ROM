.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectRunnable"
.end annotation


# instance fields
.field public mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 384
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 385
    const-string v1, "RealTimeChatService"

    const-string v2, "running connect runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_10
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    const-class v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    return-void
.end method
