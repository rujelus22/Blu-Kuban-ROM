.class Lcom/android/server/WimaxService$3;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WimaxService;-><init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/WimaxService$3;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 263
    const-string v0, "WimaxService"

    const-string v1, "com.samsung.internal.READ_ESN_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/server/WimaxService$3;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBootCompleted(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/server/WimaxService$3;->this$0:Lcom/android/server/WimaxService;

    iget-object v1, p0, Lcom/android/server/WimaxService$3;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v1}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    #calls: Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;ZZI)Z

    .line 266
    return-void
.end method
