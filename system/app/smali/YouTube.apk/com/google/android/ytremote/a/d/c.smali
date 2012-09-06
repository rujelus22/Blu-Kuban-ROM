.class public final Lcom/google/android/ytremote/a/d/c;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 23
    :try_start_1
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_6} :catch_7

    .line 29
    :cond_6
    return-void

    .line 26
    :catch_7
    move-exception v0

    .line 27
    array-length v1, p2

    if-lez v1, :cond_21

    aget-object v1, p2, v2

    if-eqz v1, :cond_21

    aget-object v1, p2, v2

    const-string v2, "google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 28
    const-string v1, "youtube.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    :cond_21
    throw v0
.end method
