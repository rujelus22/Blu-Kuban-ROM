.class Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;
.super Landroid/content/BroadcastReceiver;
.source "wimaxwtmmode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 49
    const-string v2, "WTM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, nValue:Ljava/lang/String;
    const-string v2, "STOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_53

    .line 53
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    #getter for: Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static {v2}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->access$000(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, i:Landroid/content/Intent;
    const-string v2, "Response"

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    #getter for: Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->access$100(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 57
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    #getter for: Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->access$100(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string v2, "WTM MSG"

    const-string v3, "Responce_Intent : sendBroadcast (OK)!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #nValue:Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 60
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #nValue:Ljava/lang/String;
    :cond_4b
    const-string v2, "WTM MSG"

    const-string v3, "Responce_Intent :  mContext = null!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 63
    .end local v0           #i:Landroid/content/Intent;
    :cond_53
    const-string v2, "RFSTART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "CERSTART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4a

    .line 64
    :cond_63
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    invoke-virtual {v2, v4}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->ChangeMode(I)V

    goto :goto_4a
.end method
