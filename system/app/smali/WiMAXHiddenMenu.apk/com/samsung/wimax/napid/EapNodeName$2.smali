.class Lcom/samsung/wimax/napid/EapNodeName$2;
.super Landroid/content/BroadcastReceiver;
.source "EapNodeName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapNodeName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapNodeName;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

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

    .line 89
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v1, "EAPNODE OnReceive is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 91
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v1, "EAPNODE name   handleeapnameResponse is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget v0, v0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    packed-switch v0, :pswitch_data_58

    .line 112
    :cond_26
    :goto_26
    return-void

    .line 95
    :pswitch_27
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapNodeName;->access$200(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V

    goto :goto_26

    .line 98
    :pswitch_2d
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 99
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/EapNodeName;->access$300(Lcom/samsung/wimax/napid/EapNodeName;Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameWriteResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapNodeName;->access$400(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V

    goto :goto_26

    .line 103
    :pswitch_3f
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameUpdateResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapNodeName;->access$500(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V

    goto :goto_26

    .line 108
    :cond_45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 110
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$2;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/EapNodeName;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_26

    .line 92
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2d
        :pswitch_3f
    .end packed-switch
.end method
