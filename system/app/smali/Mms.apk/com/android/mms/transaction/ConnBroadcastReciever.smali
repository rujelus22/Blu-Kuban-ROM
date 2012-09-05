.class public Lcom/android/mms/transaction/ConnBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "ConnBroadcastReciever.java"


# instance fields
.field mrequest:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 24
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived() called with and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_2a
    :goto_2a
    return-void

    .line 28
    :cond_2b
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 31
    .local v1, noConnectivity:Z
    if-eqz v1, :cond_4a

    .line 32
    iget-object v2, p0, Lcom/android/mms/transaction/ConnBroadcastReciever;->mrequest:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_4a

    .line 33
    iget-object v2, p0, Lcom/android/mms/transaction/ConnBroadcastReciever;->mrequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 34
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 35
    const-string v2, "Mms:transaction"

    const-string v3, "onReceive(): aborted"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_4a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 40
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): mNetworkInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method reset()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/ConnBroadcastReciever;->mrequest:Lorg/apache/http/client/methods/HttpPost;

    .line 50
    return-void
.end method

.method setPost(Lorg/apache/http/client/methods/HttpPost;)V
    .registers 2
    .parameter "req"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/mms/transaction/ConnBroadcastReciever;->mrequest:Lorg/apache/http/client/methods/HttpPost;

    .line 46
    return-void
.end method
