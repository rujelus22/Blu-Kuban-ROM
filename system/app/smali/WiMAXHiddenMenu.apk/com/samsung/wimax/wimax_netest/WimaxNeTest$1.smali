.class Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxNeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimax_netest/WimaxNeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iput-object p2, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->stickyIntent:Landroid/content/Intent;

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v2, "wimax onReceive is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 55
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$1;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    #calls: Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->handleWimaxStateChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->access$000(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;Landroid/content/Intent;)V

    .line 58
    :cond_1e
    return-void
.end method
