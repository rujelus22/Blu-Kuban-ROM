.class public Lcom/sec/android/daemonapp/http/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;
    }
.end annotation


# instance fields
.field private nwChangeListener:Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 38
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 39
    .local v1, net:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 41
    .local v2, st:Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 42
    iget-object v3, p0, Lcom/sec/android/daemonapp/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;

    if-eqz v3, :cond_30

    .line 43
    iget-object v3, p0, Lcom/sec/android/daemonapp/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;

    invoke-interface {v3}, Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;->onWifiConnected()V

    .line 46
    .end local v1           #net:Landroid/net/NetworkInfo;
    .end local v2           #st:Landroid/net/NetworkInfo$State;
    :cond_30
    return-void
.end method

.method public setNwChangeListener(Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;)V
    .registers 2
    .parameter "nwChangeListener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/daemonapp/http/NetworkChangeReceiver$INetworkChangeLinster;

    .line 50
    return-void
.end method
