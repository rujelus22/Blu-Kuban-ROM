.class Lcom/samsung/wimax/DM/DM$2;
.super Landroid/content/BroadcastReceiver;
.source "DM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/DM/DM;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/DM;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x8

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v1, "WiMAX_DM_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecieve intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 133
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v1, "WimaxState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/WimaxState;

    const-string v3, "WimaxStateDetail"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v2, v1, v3}, Lcom/samsung/wimax/DM/DM;->access$600(Lcom/samsung/wimax/DM/DM;Landroid/net/fourG/wimax/WimaxState;I)V

    .line 146
    :cond_39
    :goto_39
    return-void

    .line 138
    :cond_3a
    const-string v1, "WimaxStateDetail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 140
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v2, "WimaxStateDetail"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/samsung/wimax/DM/DM;->handleWimaxStateDetailChanged(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/wimax/DM/DM;->access$700(Lcom/samsung/wimax/DM/DM;I)Ljava/lang/String;

    goto :goto_39
.end method
