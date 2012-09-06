.class public abstract Landroid/support/place/theme/ThemeService$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract getTheme(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/theme/Theme;
.end method

.method public abstract getThemeEngines(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 39
    const-string v2, "setTheme"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 41
    const-string v2, "theme"

    sget-object v3, Landroid/support/place/theme/Theme;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/theme/Theme;

    .line 42
    invoke-virtual {p0, v0, p3}, Landroid/support/place/theme/ThemeService$EndpointBase;->setTheme(Landroid/support/place/theme/Theme;Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    .line 57
    :goto_1c
    if-eqz v0, :cond_56

    .line 58
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 61
    :goto_22
    return-object v0

    .line 44
    :cond_23
    const-string v0, "getTheme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 45
    invoke-virtual {p0, p3}, Landroid/support/place/theme/ThemeService$EndpointBase;->getTheme(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/theme/Theme;

    move-result-object v2

    .line 46
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 47
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_1c

    .line 49
    :cond_3a
    const-string v0, "getThemeEngines"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 50
    invoke-virtual {p0, p3}, Landroid/support/place/theme/ThemeService$EndpointBase;->getThemeEngines(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;

    move-result-object v2

    .line 51
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 52
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1c

    .line 55
    :cond_51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_22

    :cond_56
    move-object v0, v1

    .line 61
    goto :goto_22
.end method

.method public pushOnThemeChanged(Landroid/support/place/theme/Theme;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 31
    const-string v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 32
    const-string v1, "onThemeChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/theme/ThemeService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 33
    return-void
.end method

.method public abstract setTheme(Landroid/support/place/theme/Theme;Landroid/support/place/rpc/RpcContext;)V
.end method
