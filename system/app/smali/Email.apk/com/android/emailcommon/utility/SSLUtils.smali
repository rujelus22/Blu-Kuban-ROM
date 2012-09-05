.class public Lcom/android/emailcommon/utility/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .parameter "insecure"

    .prologue
    .line 35
    const-class v1, Lcom/android/emailcommon/utility/SSLUtils;

    monitor-enter v1

    if-eqz p0, :cond_15

    .line 36
    :try_start_5
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_11

    .line 37
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    :cond_11
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_24

    .line 44
    :goto_13
    monitor-exit v1

    return-object v0

    .line 41
    :cond_15
    :try_start_15
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_21

    .line 42
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 44
    :cond_21
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 35
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method
