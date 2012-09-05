.class Lcom/samsung/wimax/napid/Activated$2;
.super Landroid/content/BroadcastReceiver;
.source "Activated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Activated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Activated;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Activated;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

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

    .line 87
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v1, "act OnReceive is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 89
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v1, "ACT  WIMAX_RESPONSE_ACTION is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    #getter for: Lcom/samsung/wimax/napid/Activated;->type:I
    invoke-static {v0}, Lcom/samsung/wimax/napid/Activated;->access$200(Lcom/samsung/wimax/napid/Activated;)I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 112
    :cond_28
    :goto_28
    return-void

    .line 94
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->handleActReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Activated;->access$300(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V

    goto :goto_28

    .line 97
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 98
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/Activated;->access$400(Lcom/samsung/wimax/napid/Activated;Z)V

    .line 99
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->handleActWriteResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Activated;->access$500(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V

    goto :goto_28

    .line 102
    :pswitch_41
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->handleActUpdateResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Activated;->access$600(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V

    goto :goto_28

    .line 108
    :cond_47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 110
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$2;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/Activated;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_28

    .line 91
    nop

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_29
        :pswitch_2f
        :pswitch_41
    .end packed-switch
.end method
