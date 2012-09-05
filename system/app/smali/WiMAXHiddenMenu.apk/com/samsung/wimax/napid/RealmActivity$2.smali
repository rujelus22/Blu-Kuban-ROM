.class Lcom/samsung/wimax/napid/RealmActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RealmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/RealmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/RealmActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/RealmActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

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

    .line 85
    const-string v0, "NAPID"

    const-string v1, "mWimaxRmReceiver OnReceive is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 87
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v1, "RLM  handleRmResponse is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    iget v0, v0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    packed-switch v0, :pswitch_data_56

    .line 108
    :cond_24
    :goto_24
    return-void

    .line 92
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #calls: Lcom/samsung/wimax/napid/RealmActivity;->handleRlmReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/RealmActivity;->access$100(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V

    goto :goto_24

    .line 95
    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #calls: Lcom/samsung/wimax/napid/RealmActivity;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/RealmActivity;->access$200(Lcom/samsung/wimax/napid/RealmActivity;Z)V

    .line 97
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #calls: Lcom/samsung/wimax/napid/RealmActivity;->handleRlmWriteResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/RealmActivity;->access$300(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V

    goto :goto_24

    .line 100
    :pswitch_3d
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #calls: Lcom/samsung/wimax/napid/RealmActivity;->handleRlmUpdateResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/RealmActivity;->access$400(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V

    goto :goto_24

    .line 104
    :cond_43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 106
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity$2;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/RealmActivity;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_24

    .line 89
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method
