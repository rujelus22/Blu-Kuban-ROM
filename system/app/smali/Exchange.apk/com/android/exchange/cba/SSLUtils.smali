.class public Lcom/android/exchange/cba/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .parameter "insecure"

    .prologue
    .line 107
    const-class v1, Lcom/android/exchange/cba/SSLUtils;

    monitor-enter v1

    if-eqz p0, :cond_18

    .line 109
    :try_start_5
    sget-object v0, Lcom/android/exchange/cba/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_14

    .line 113
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcom/android/exchange/cba/SSLCBAClient;->getSSLSocketFactory(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/cba/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 117
    :cond_14
    sget-object v0, Lcom/android/exchange/cba/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2a

    .line 129
    :goto_16
    monitor-exit v1

    return-object v0

    .line 121
    :cond_18
    :try_start_18
    sget-object v0, Lcom/android/exchange/cba/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_27

    .line 125
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcom/android/exchange/cba/SSLCBAClient;->getSSLSocketFactory(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/cba/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    :cond_27
    sget-object v0, Lcom/android/exchange/cba/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2a

    goto :goto_16

    .line 107
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
