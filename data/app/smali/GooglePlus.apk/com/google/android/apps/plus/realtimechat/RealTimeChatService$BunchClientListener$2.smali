.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->onPingReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

.field final synthetic val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$2;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 471
    return-void
.end method
