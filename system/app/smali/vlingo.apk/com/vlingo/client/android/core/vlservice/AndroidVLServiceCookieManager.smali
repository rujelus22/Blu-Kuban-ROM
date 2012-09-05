.class public Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;
.super Ljava/lang/Object;
.source "AndroidVLServiceCookieManager.java"

# interfaces
.implements Lcom/vlingo/client/core/http/cookies/CookieJarManager;


# instance fields
.field private persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    const-string v1, "cookie_data"

    invoke-direct {v0, v1}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    .line 32
    return-void
.end method


# virtual methods
.method public addAllCookiesToHashtable(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "cookies"
    .parameter "domain"
    .parameter "path"

    .prologue
    .line 38
    iget-object v3, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-virtual {v3}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->clearExpired()Z

    .line 39
    iget-object v3, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-virtual {v3}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/vlingo/client/core/http/cookies/Cookie;>;"
    move-object v2, p1

    .line 44
    .local v2, t:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/http/cookies/Cookie;

    .line 48
    .local v0, c:Lcom/vlingo/client/core/http/cookies/Cookie;
    invoke-interface {v0, p2, p3}, Lcom/vlingo/client/core/http/cookies/Cookie;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 51
    invoke-interface {v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 58
    .end local v0           #c:Lcom/vlingo/client/core/http/cookies/Cookie;
    :cond_2e
    return-void
.end method

.method public addCookie(Lcom/vlingo/client/core/http/cookies/Cookie;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCookie(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 73
    new-instance v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    invoke-direct {v0, p1, p2}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCookieValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cookieName"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-virtual {v1, p1}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->getCookieByName(Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;

    move-result-object v0

    .line 65
    .local v0, c:Lcom/vlingo/client/core/http/cookies/Cookie;
    if-eqz v0, :cond_d

    .line 66
    invoke-interface {v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public mergeCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V
    .registers 3
    .parameter "newCookies"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->mergeCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V

    .line 80
    iget-object v0, p0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;->persistentCookieJar:Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->save()V

    .line 81
    return-void
.end method

.method public removeCookie(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetCookies()V
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
