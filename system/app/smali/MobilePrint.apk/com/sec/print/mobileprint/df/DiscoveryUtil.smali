.class public Lcom/sec/print/mobileprint/df/DiscoveryUtil;
.super Ljava/lang/Object;
.source "DiscoveryUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkIntefaceWorking(Ljava/net/NetworkInterface;)Z
    .registers 8
    .parameter "iface"

    .prologue
    const/4 v3, 0x0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isLoopback"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .local v0, loopback:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 29
    .end local v0           #loopback:Ljava/lang/Boolean;
    :cond_1d
    :goto_1d
    return v3

    .line 14
    .restart local v0       #loopback:Ljava/lang/Boolean;
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isUp"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .local v1, up:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isVirtual"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 19
    .local v2, virtual:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_53} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_53} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_53} :catch_58

    move-result v4

    if-nez v4, :cond_1d

    .line 29
    .end local v0           #loopback:Ljava/lang/Boolean;
    .end local v1           #up:Ljava/lang/Boolean;
    .end local v2           #virtual:Ljava/lang/Boolean;
    :goto_56
    const/4 v3, 0x1

    goto :goto_1d

    .line 26
    :catch_58
    move-exception v3

    goto :goto_56

    .line 24
    :catch_5a
    move-exception v3

    goto :goto_56

    .line 22
    :catch_5c
    move-exception v3

    goto :goto_56
.end method
