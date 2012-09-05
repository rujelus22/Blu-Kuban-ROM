.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cookie2VersionAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .registers 2
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .registers 4
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .registers 8
    .parameter "cookie"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1059
    if-nez p1, :cond_a

    .line 1060
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1062
    :cond_a
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_34

    move-object v0, p1

    .line 1063
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 1064
    .local v0, cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    if-nez p2, :cond_1b

    .line 1065
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Missing value for version attribute"

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1068
    :cond_1b
    const/4 v2, -0x1

    .line 1070
    .local v2, version:I
    :try_start_1c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1f} :catch_2a

    move-result v2

    .line 1074
    :goto_20
    if-gez v2, :cond_2d

    .line 1075
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Invalid cookie version."

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1071
    :catch_2a
    move-exception v1

    .line 1072
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_20

    .line 1077
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2d
    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersion(I)V

    .line 1078
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersionAttributeSpecified(Z)V

    .line 1080
    .end local v0           #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2           #version:I
    :cond_34
    return-void
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .registers 6
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1087
    if-nez p1, :cond_a

    .line 1088
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1090
    :cond_a
    instance-of v1, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 1091
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 1092
    .local v0, cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isVersionAttributeSpecified()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1093
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v2, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    .end local v0           #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_1f
    return-void
.end method
