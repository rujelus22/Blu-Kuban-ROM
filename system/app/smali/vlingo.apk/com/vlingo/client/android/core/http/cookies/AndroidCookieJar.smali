.class public Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;
.super Ljava/lang/Object;
.source "AndroidCookieJar.java"

# interfaces
.implements Lcom/vlingo/client/core/http/cookies/CookieJar;


# instance fields
.field protected m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

.field private prefName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "preferenceName"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->prefName:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->load()V

    .line 40
    return-void
.end method

.method private load()V
    .registers 7

    .prologue
    .line 97
    iget-object v4, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->prefName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t call load() on non-persistant AndroidCookieJar"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_c
    iget-object v4, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->prefName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, cookiesString:Ljava/lang/String;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_34

    .line 104
    const/16 v4, 0x7c

    invoke-static {v2, v4}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, cookies:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_22
    array-length v4, v1

    if-ge v3, v4, :cond_31

    .line 107
    :try_start_25
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->deserialize(Ljava/lang/String;)Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    move-result-object v0

    .line 108
    .local v0, c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->addCookie(Lcom/vlingo/client/core/http/cookies/Cookie;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_35

    .line 105
    .end local v0           #c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 114
    :cond_31
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->clearExpired()Z

    .line 116
    .end local v1           #cookies:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_34
    return-void

    .line 110
    .restart local v1       #cookies:[Ljava/lang/String;
    .restart local v3       #i:I
    :catch_35
    move-exception v4

    goto :goto_2e
.end method


# virtual methods
.method public addCookie(Lcom/vlingo/client/core/http/cookies/Cookie;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 43
    move-object v0, p1

    check-cast v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    .line 44
    .local v0, cookie:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 45
    return-void
.end method

.method public addCookiesToHttpRequest(Ljavax/microedition/io/HttpConnection;)V
    .registers 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearExpired()Z
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/BasicCookieStore;->clearExpired(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public getCookieByName(Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;
    .registers 5
    .parameter "name"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    .line 74
    .local v0, c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    .end local v0           #c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getCookies()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/core/http/cookies/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v3, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 58
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 59
    .local v1, cList:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/core/http/cookies/Cookie;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    .line 61
    .local v0, c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 63
    .end local v0           #c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :cond_1f
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V
    .registers 5
    .parameter "srcJar"

    .prologue
    .line 48
    if-eqz p1, :cond_18

    .line 49
    check-cast p1, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    .end local p1
    iget-object v2, p1, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/apache/http/cookie/Cookie;

    .line 51
    .local v0, a:[Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V

    .line 54
    .end local v0           #a:[Lorg/apache/http/cookie/Cookie;
    .end local v1           #l:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_18
    return-void
.end method

.method public removeCookie(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .registers 6

    .prologue
    .line 119
    iget-object v3, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->prefName:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 120
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t call save() on non-persistant AndroidCookieJar"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_c
    iget-object v3, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->m_Store:Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;

    .line 126
    .local v0, c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 130
    .end local v0           #c:Lcom/vlingo/client/android/core/http/cookies/AndroidCookie;
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 135
    :cond_43
    iget-object v3, p0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;->prefName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public saveCookiesFromHttpResponse(Ljavax/microedition/io/HttpConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "??? Is this really an un-used method ???"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
