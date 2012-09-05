.class Lcom/samsung/wimax/napid/Extensions$2;
.super Landroid/content/BroadcastReceiver;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Extensions;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

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

    .line 115
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "mWimaxExtReceiver OnReceive is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 117
    sget-object v0, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v1}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 159
    :cond_25
    :goto_25
    return-void

    .line 127
    :pswitch_26
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->handleReadResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Extensions;->access$300(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V

    goto :goto_25

    .line 137
    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 138
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/Extensions;->access$400(Lcom/samsung/wimax/napid/Extensions;Z)V

    .line 139
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->handleWriteResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Extensions;->access$500(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V

    goto :goto_25

    .line 149
    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #calls: Lcom/samsung/wimax/napid/Extensions;->handleUpdateResp(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/Extensions;->access$600(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V

    goto :goto_25

    .line 155
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 157
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$2;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/Extensions;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_25

    .line 117
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method
