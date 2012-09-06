.class public Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "GetDoritosCookieOperation.java"


# instance fields
.field private mDoritosCookie:Lorg/apache/http/cookie/Cookie;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 23
    const-string v3, "POST"

    sget-object v0, Lcom/google/android/apps/plus/util/Property;->SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getDoritosCookie()Lorg/apache/http/cookie/Cookie;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;->mDoritosCookie:Lorg/apache/http/cookie/Cookie;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 4
    .parameter "cookie"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 30
    if-eqz p1, :cond_19

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_drt_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;->mDoritosCookie:Lorg/apache/http/cookie/Cookie;

    .line 34
    :cond_19
    return-void
.end method
