.class Lcom/samsung/wimax/napid/MruActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MruActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/MruActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/MruActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/MruActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x258

    .line 211
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v2, "mWimaxMruReceiver OnReceive is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rahul : intent.getAction() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent.getExtras().containsKey(Wimax4GManager.EXTRA_WIMAX_MRU_LIST)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MruList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iput-object p1, v1, Lcom/samsung/wimax/napid/MruActivity;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MruList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 216
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v2, "WIMAX_MRU_LIST_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #getter for: Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/MruActivity;->access$200(Lcom/samsung/wimax/napid/MruActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #getter for: Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/MruActivity;->access$200(Lcom/samsung/wimax/napid/MruActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    .end local v0           #msg:Landroid/os/Message;
    :cond_78
    :goto_78
    return-void

    .line 222
    :cond_79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "subType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 223
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v2, "WIMAX_MRU_UPDATE_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #getter for: Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/MruActivity;->access$200(Lcom/samsung/wimax/napid/MruActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .restart local v0       #msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    #getter for: Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/MruActivity;->access$200(Lcom/samsung/wimax/napid/MruActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_78

    .line 228
    .end local v0           #msg:Landroid/os/Message;
    :cond_b1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 229
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$2;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    invoke-virtual {v1, p2}, Lcom/samsung/wimax/napid/MruActivity;->handleWimaxStateChange(Landroid/content/Intent;)V

    goto :goto_78
.end method
