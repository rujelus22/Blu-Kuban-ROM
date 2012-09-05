.class Lcom/samsung/wimax/napid/NAPIDActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NAPIDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/NAPIDActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

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

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 91
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v1, " WIMAX_RESPONSE_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    packed-switch v0, :pswitch_data_6c

    .line 126
    :cond_1d
    :goto_1d
    return-void

    .line 95
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdReadResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$000(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 98
    :pswitch_24
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtReadResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$100(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 101
    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$200(Lcom/samsung/wimax/napid/NAPIDActivity;Z)V

    .line 103
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdWriteResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$300(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 107
    :pswitch_3c
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdUpdateResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$400(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 110
    :pswitch_42
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 111
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$200(Lcom/samsung/wimax/napid/NAPIDActivity;Z)V

    .line 112
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtWriteResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$500(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 115
    :pswitch_54
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #calls: Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtUpdateResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$600(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V

    goto :goto_1d

    .line 122
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 124
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$1;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/NAPIDActivity;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_1d

    .line 92
    :pswitch_data_6c
    .packed-switch 0xf
        :pswitch_1e
        :pswitch_2a
        :pswitch_3c
        :pswitch_24
        :pswitch_42
        :pswitch_54
    .end packed-switch
.end method
