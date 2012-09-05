.class public Lgnu/inet/util/GetLocalHostAction;
.super Ljava/lang/Object;
.source "GetLocalHostAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 62
    :goto_4
    return-object v0

    .line 60
    :catch_5
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_4
.end method
