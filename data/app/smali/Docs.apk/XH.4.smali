.class public LXH;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, LXH;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)LXI;
    .registers 2
    .parameter

    .prologue
    .line 126
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 127
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, LXI;->b:LXI;

    .line 130
    :goto_e
    return-object v0

    .line 127
    :cond_f
    sget-object v0, LXI;->a:LXI;

    goto :goto_e

    .line 130
    :cond_12
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, LXH;->a(Landroid/net/NetworkInfo;)LXI;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Landroid/net/NetworkInfo;)LXI;
    .registers 2
    .parameter

    .prologue
    .line 137
    invoke-static {p0}, LXH;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 138
    sget-object v0, LXI;->a:LXI;

    .line 141
    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, LXH;->b(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, LXI;->b:LXI;

    goto :goto_8

    :cond_12
    sget-object v0, LXI;->c:LXI;

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter

    .prologue
    .line 53
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 62
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, LXH;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    goto :goto_a
.end method

.method public static a(Landroid/net/NetworkInfo;)Z
    .registers 2
    .parameter

    .prologue
    .line 72
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 73
    :goto_9
    return v0

    .line 72
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 81
    sget-object v0, LXH;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, LXH;->b(Landroid/net/NetworkInfo;)Z

    move-result v0

    goto :goto_a
.end method

.method public static b(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 91
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, LXH;->c(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 107
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 118
    :cond_10
    :goto_10
    :pswitch_10
    return v0

    .line 113
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 107
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
