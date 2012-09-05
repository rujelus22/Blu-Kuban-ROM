.class Lcom/samsung/client/WimaxHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/WimaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/WimaxHandler;


# direct methods
.method constructor <init>(Lcom/samsung/client/WimaxHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/client/WimaxHandler$1;->this$0:Lcom/samsung/client/WimaxHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxStateReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 79
    const-string v1, "4g_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, status:I
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxStateReceiver: Wimax Status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 84
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$1;->this$0:Lcom/samsung/client/WimaxHandler;

    #getter for: Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z
    invoke-static {v1}, Lcom/samsung/client/WimaxHandler;->access$000(Lcom/samsung/client/WimaxHandler;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 85
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$1;->this$0:Lcom/samsung/client/WimaxHandler;

    #calls: Lcom/samsung/client/WimaxHandler;->postJavaWimaxDisabled()V
    invoke-static {v1}, Lcom/samsung/client/WimaxHandler;->access$100(Lcom/samsung/client/WimaxHandler;)V

    .line 108
    .end local v0           #status:I
    :cond_57
    :goto_57
    return-void

    .line 87
    .restart local v0       #status:I
    :cond_58
    const/4 v1, 0x3

    if-ne v0, v1, :cond_57

    .line 89
    const-string v1, "WimaxHandler"

    const-string v2, "WimaxStateReceiver: net4GManager.NET_4G_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->SaveSharedPreferenceWimaxHandler(Ljava/lang/Boolean;)V

    goto :goto_57

    .line 101
    .end local v0           #status:I
    :cond_6f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 104
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$1;->this$0:Lcom/samsung/client/WimaxHandler;

    #getter for: Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z
    invoke-static {v1}, Lcom/samsung/client/WimaxHandler;->access$200(Lcom/samsung/client/WimaxHandler;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 105
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$1;->this$0:Lcom/samsung/client/WimaxHandler;

    #calls: Lcom/samsung/client/WimaxHandler;->postRadioTempIntent()V
    invoke-static {v1}, Lcom/samsung/client/WimaxHandler;->access$300(Lcom/samsung/client/WimaxHandler;)V

    goto :goto_57
.end method
