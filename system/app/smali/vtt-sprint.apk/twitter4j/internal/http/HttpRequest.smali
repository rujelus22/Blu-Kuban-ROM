.class public final Ltwitter4j/internal/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter; = null

.field private static final serialVersionUID:J = -0x3011286b2699f78dL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/internal/http/RequestMethod;

.field private final parameters:[Ltwitter4j/internal/http/HttpParameter;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    sput-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
    .registers 8
    .parameter "method"
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            "Ltwitter4j/auth/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p5, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    .line 56
    sget-object v0, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    if-eq p1, v0, :cond_34

    if-eqz p3, :cond_34

    array-length v0, p3

    if-eqz v0, :cond_34

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 58
    sget-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    .line 63
    :goto_2f
    iput-object p4, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    .line 64
    iput-object p5, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    .line 65
    return-void

    .line 60
    :cond_34
    iput-object p2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    goto :goto_2f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_5

    .line 104
    :cond_4
    :goto_4
    return v1

    .line 90
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 92
    check-cast v0, Ltwitter4j/internal/http/HttpRequest;

    .line 94
    .local v0, that:Ltwitter4j/internal/http/HttpRequest;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 95
    goto :goto_4

    .line 94
    :cond_26
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-nez v3, :cond_24

    .line 96
    :cond_2a
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    move v1, v2

    goto :goto_4

    .line 97
    :cond_36
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_46

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_44
    move v1, v2

    .line 98
    goto :goto_4

    .line 97
    :cond_46
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_44

    .line 99
    :cond_4a
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_58
    move v1, v2

    .line 100
    goto :goto_4

    .line 99
    :cond_5a
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-nez v3, :cond_58

    .line 101
    :cond_5e
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_6c
    move v1, v2

    .line 102
    goto :goto_4

    .line 101
    :cond_6e
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_6c
.end method

.method public getAuthorization()Ltwitter4j/auth/Authorization;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public getMethod()Ltwitter4j/internal/http/RequestMethod;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    return-object v0
.end method

.method public getParameters()[Ltwitter4j/internal/http/HttpParameter;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v2, :cond_44

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v2}, Ltwitter4j/internal/http/RequestMethod;->hashCode()I

    move-result v0

    .line 110
    .local v0, result:I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 111
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_48

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 112
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_41

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_41
    add-int v0, v2, v1

    .line 114
    return v0

    .end local v0           #result:I
    :cond_44
    move v0, v1

    .line 109
    goto :goto_b

    .restart local v0       #result:I
    :cond_46
    move v2, v1

    .line 110
    goto :goto_17

    :cond_48
    move v2, v1

    .line 111
    goto :goto_25

    :cond_4a
    move v2, v1

    .line 112
    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpRequest{requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-nez v0, :cond_55

    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_55
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2e
.end method
