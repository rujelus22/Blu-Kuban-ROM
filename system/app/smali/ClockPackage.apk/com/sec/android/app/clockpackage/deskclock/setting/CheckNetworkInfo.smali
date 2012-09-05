.class public Lcom/sec/android/app/clockpackage/deskclock/setting/CheckNetworkInfo;
.super Ljava/lang/Object;
.source "CheckNetworkInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Is3GAvailable(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 28
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 30
    .local v3, m_NetConnectMgr:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 32
    .local v0, bConnect:Z
    if-nez v3, :cond_d

    .line 41
    :goto_c
    return v4

    .line 34
    :cond_d
    const/4 v5, 0x0

    :try_start_e
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_23

    move-result v5

    if-eqz v5, :cond_21

    const/4 v0, 0x1

    :goto_1f
    move v4, v0

    .line 41
    goto :goto_c

    :cond_21
    move v0, v4

    .line 36
    goto :goto_1f

    .line 37
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_23
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/Exception;
    goto :goto_c
.end method

.method public static IsWifiAvailable(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 11
    .local v3, m_NetConnectMgr:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 13
    .local v0, bConnect:Z
    if-nez v3, :cond_e

    .line 24
    :goto_d
    return v5

    .line 16
    :cond_e
    const/4 v6, 0x1

    :try_start_f
    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 18
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_24

    move-result v6

    if-eqz v6, :cond_22

    move v0, v4

    :goto_20
    move v5, v0

    .line 24
    goto :goto_d

    :cond_22
    move v0, v5

    .line 18
    goto :goto_20

    .line 20
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_24
    move-exception v1

    .line 21
    .local v1, e:Ljava/lang/Exception;
    goto :goto_d
.end method
