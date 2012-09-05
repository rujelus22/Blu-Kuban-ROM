.class public interface abstract Lcom/vlingo/client/core/http/cookies/CookieJarManager;
.super Ljava/lang/Object;
.source "CookieJarManager.java"


# virtual methods
.method public abstract addAllCookiesToHashtable(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addCookie(Lcom/vlingo/client/core/http/cookies/Cookie;)V
.end method

.method public abstract createCookie(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;
.end method

.method public abstract getCookieValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mergeCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V
.end method

.method public abstract removeCookie(Ljava/lang/String;)V
.end method

.method public abstract save()V
.end method
