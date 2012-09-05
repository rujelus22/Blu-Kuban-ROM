.class public Lorg/apache/commons/httpclient/Cookie;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "Cookie.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;


# instance fields
.field private cookieComment:Ljava/lang/String;

.field private cookieDomain:Ljava/lang/String;

.field private cookieExpiryDate:Ljava/util/Date;

.field private cookiePath:Ljava/lang/String;

.field private cookieVersion:I

.field private hasDomainAttribute:Z

.field private hasPathAttribute:Z

.field private isSecure:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 533
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.commons.httpclient.Cookie"

    invoke-static {v0}, Lorg/apache/commons/httpclient/Cookie;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v2, "noname"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "domain"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 14
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "path"
    .parameter "maxAge"
    .parameter "secure"

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 138
    const/4 v0, -0x1

    if-ge p5, v0, :cond_2a

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid max age:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2a
    if-ltz p5, :cond_3d

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 144
    :cond_3d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .registers 9
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "path"
    .parameter "expires"
    .parameter "secure"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    .line 525
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    .line 528
    iput v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    .line 107
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter Cookie(String, String, String, String, Date, boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 108
    if-nez p2, :cond_1b

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2f
    invoke-virtual {p0, p4}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p5}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 117
    invoke-virtual {p0, p6}, Lorg/apache/commons/httpclient/Cookie;->setSecure(Z)V

    .line 118
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 533
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    .line 456
    sget-object v3, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter Cookie.compare(Object, Object)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 458
    instance-of v3, p1, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_1a

    .line 459
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_1a
    instance-of v3, p2, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_2c

    .line 462
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    move-object v0, p1

    .line 464
    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .local v0, c1:Lorg/apache/commons/httpclient/Cookie;
    move-object v1, p2

    .line 465
    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 466
    .local v1, c2:Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3f

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 483
    :cond_3e
    :goto_3e
    return v2

    .line 468
    :cond_3f
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    .line 470
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 473
    const/4 v2, -0x1

    goto :goto_3e

    .line 475
    :cond_53
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_67

    .line 477
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 480
    const/4 v2, 0x1

    goto :goto_3e

    .line 483
    :cond_67
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_3e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    if-nez p1, :cond_5

    .line 425
    :cond_4
    :goto_4
    return v2

    .line 418
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    goto :goto_4

    .line 419
    :cond_9
    instance-of v3, p1, Lorg/apache/commons/httpclient/Cookie;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 420
    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .line 421
    .local v0, that:Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    :goto_32
    move v2, v1

    goto :goto_4

    :cond_34
    move v1, v2

    goto :goto_32
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->isSecure:Z

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 403
    const/16 v0, 0x11

    .line 404
    .local v0, hash:I
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 406
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 407
    return v0
.end method

.method public isDomainAttributeSpecified()Z
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    return v0
.end method

.method public isExpired()Z
    .registers 5

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 6
    .parameter "now"

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isPathAttributeSpecified()Z
    .registers 2

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieComment:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 4
    .parameter "domain"

    .prologue
    .line 232
    if-eqz p1, :cond_16

    .line 233
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, ndx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 237
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    .line 239
    .end local v0           #ndx:I
    :cond_16
    return-void
.end method

.method public setDomainAttributeSpecified(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 381
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    .line 382
    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .registers 2
    .parameter "expiryDate"

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    .line 198
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 262
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setPathAttributeSpecified(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 351
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    .line 352
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .parameter "secure"

    .prologue
    .line 286
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->isSecure:Z

    .line 287
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 311
    iput p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    .line 312
    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, spec:Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    if-lez v1, :cond_10

    .line 438
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 442
    :goto_b
    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_10
    const-string v1, "netscape"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
