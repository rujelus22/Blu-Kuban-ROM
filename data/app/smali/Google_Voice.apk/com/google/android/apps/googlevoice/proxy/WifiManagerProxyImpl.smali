.class public Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;
.super Ljava/lang/Object;
.source "WifiManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxy;


# instance fields
.field private final delegate:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;->delegate:Landroid/net/wifi/WifiManager;

    .line 19
    return-void
.end method


# virtual methods
.method public getDelegate()Landroid/net/wifi/WifiManager;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;->delegate:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public getIpAddress()I
    .registers 3

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;->delegate:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 29
    .local v0, connectionInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_a

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_9
.end method
