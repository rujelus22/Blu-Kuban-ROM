.class public Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DiscardAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 4
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5
    .parameter "cookie"
    .parameter "commenturl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v1, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v1, :cond_b

    move-object v0, p1

    .line 53
    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    .line 54
    .local v0, cookie2:Lorg/apache/http/cookie/SetCookie2;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/SetCookie2;->setDiscard(Z)V

    .line 56
    .end local v0           #cookie2:Lorg/apache/http/cookie/SetCookie2;
    :cond_b
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 3
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method