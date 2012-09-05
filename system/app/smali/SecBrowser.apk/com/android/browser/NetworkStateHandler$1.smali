.class Lcom/android/browser/NetworkStateHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NetworkStateHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/NetworkStateHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 75
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 77
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, typeName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, subtypeName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_29
    #calls: Lcom/android/browser/NetworkStateHandler;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4}, Lcom/android/browser/NetworkStateHandler;->access$000(Lcom/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "noConnectivity"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    .local v1, noConnection:Z
    iget-object v6, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    if-nez v1, :cond_5a

    const/4 v4, 0x1

    :goto_37
    invoke-virtual {v6, v4}, Lcom/android/browser/NetworkStateHandler;->onNetworkToggle(Z)V

    .line 86
    const-string v4, "NetworkStateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : info.isAvailable() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #noConnection:Z
    .end local v2           #subtypeName:Ljava/lang/String;
    .end local v3           #typeName:Ljava/lang/String;
    :cond_56
    return-void

    .line 79
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v2       #subtypeName:Ljava/lang/String;
    .restart local v3       #typeName:Ljava/lang/String;
    :cond_57
    const-string v4, ""

    goto :goto_29

    .restart local v1       #noConnection:Z
    :cond_5a
    move v4, v5

    .line 85
    goto :goto_37
.end method
