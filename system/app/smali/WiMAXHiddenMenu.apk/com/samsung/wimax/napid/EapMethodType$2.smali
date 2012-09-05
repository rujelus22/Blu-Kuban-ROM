.class Lcom/samsung/wimax/napid/EapMethodType$2;
.super Landroid/content/BroadcastReceiver;
.source "EapMethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapMethodType;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

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

    .line 161
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v1, "OnReceive EapMethodType  is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 164
    sget-object v0, Lcom/samsung/wimax/napid/EapMethodType$9;->$SwitchMap$com$samsung$wimax$napid$EapMethodType$Type:[I

    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    invoke-virtual {v1}, Lcom/samsung/wimax/napid/EapMethodType$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 211
    :cond_25
    :goto_25
    return-void

    .line 167
    :pswitch_26
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$500(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 170
    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 171
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/EapMethodType;->access$600(Lcom/samsung/wimax/napid/EapMethodType;Z)V

    .line 172
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodWriteResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$700(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 175
    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodUpdateResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$800(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 178
    :pswitch_44
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$900(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 181
    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 182
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/EapMethodType;->access$600(Lcom/samsung/wimax/napid/EapMethodType;Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdWrtRespose(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1000(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 186
    :pswitch_5c
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdUpdtRespose(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1100(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 189
    :pswitch_62
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handlePswdReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1200(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 192
    :pswitch_68
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V
    invoke-static {v0, v2}, Lcom/samsung/wimax/napid/EapMethodType;->access$600(Lcom/samsung/wimax/napid/EapMethodType;Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handlePswdWrtResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1300(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 197
    :pswitch_7a
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handlePswdUpdtResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1400(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 200
    :pswitch_80
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->handleMACReadResponse(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->access$1500(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V

    goto :goto_25

    .line 207
    :cond_86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 209
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$2;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    invoke-virtual {v0, p2}, Lcom/samsung/wimax/napid/EapMethodType;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_25

    .line 164
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2c
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_7a
        :pswitch_80
    .end packed-switch
.end method
