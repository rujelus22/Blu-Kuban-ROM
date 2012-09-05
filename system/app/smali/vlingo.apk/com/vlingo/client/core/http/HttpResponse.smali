.class public Lcom/vlingo/client/core/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;

.field private final data:[B

.field public final responseCode:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 4
    .parameter "responseCode"
    .parameter "data"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/core/http/HttpResponse;-><init>(I[BLcom/vlingo/client/core/http/cookies/CookieJar;)V

    .line 30
    return-void
.end method

.method public constructor <init>(I[BLcom/vlingo/client/core/http/cookies/CookieJar;)V
    .registers 4
    .parameter "responseCode"
    .parameter "data"
    .parameter "cookies"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    .line 34
    iput-object p2, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    .line 35
    iput-object p3, p0, Lcom/vlingo/client/core/http/HttpResponse;->cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;

    .line 36
    return-void
.end method


# virtual methods
.method public getCookies()Lcom/vlingo/client/core/http/cookies/CookieJar;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpResponse;->cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;

    return-object v0
.end method

.method public getDataAsBytes()[B
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "encoding"

    .prologue
    .line 57
    const-string v0, ""

    .line 59
    .local v0, result:Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    if-eqz v2, :cond_d

    .line 60
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    invoke-direct {v0, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_d} :catch_e

    .line 67
    .restart local v0       #result:Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v0

    .line 63
    .end local v0           #result:Ljava/lang/String;
    :catch_e
    move-exception v1

    .line 65
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_d
.end method

.method public getDataLength()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    if-eqz v0, :cond_8

    .line 44
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpResponse;->data:[B

    array-length v0, v0

    .line 45
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
