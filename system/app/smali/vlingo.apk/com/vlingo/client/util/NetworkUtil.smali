.class public Lcom/vlingo/client/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkConnectionAvailable()Z
    .registers 4

    .prologue
    .line 18
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/VlingoApplication;

    .line 19
    .local v0, app:Lcom/vlingo/client/VlingoApplication;
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 20
    .local v1, conMgr:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1f

    .line 21
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 22
    .local v2, netInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1f

    .line 23
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 26
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_1e
    return v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method
