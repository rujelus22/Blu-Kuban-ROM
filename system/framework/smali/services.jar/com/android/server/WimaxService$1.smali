.class Lcom/android/server/WimaxService$1;
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
    .line 196
    iput-object p1, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z
    invoke-static {v0, v2}, Lcom/android/server/WimaxService;->access$102(Lcom/android/server/WimaxService;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z
    invoke-static {v0, v1}, Lcom/android/server/WimaxService;->access$202(Lcom/android/server/WimaxService;Z)Z

    .line 204
    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.ACTION_AIRPLANE_MODE_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$200(Lcom/android/server/WimaxService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)V

    .line 206
    return-void
.end method
