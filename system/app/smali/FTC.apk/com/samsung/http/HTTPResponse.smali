.class public Lcom/samsung/http/HTTPResponse;
.super Lcom/samsung/http/HTTPPacket;
.source "HTTPResponse.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/http/HTTPPacket;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    .line 59
    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/samsung/http/HTTPServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPResponse;->setServer(Ljava/lang/String;)V

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPResponse;->setContent(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPResponse;)V
    .registers 3
    .parameter "httpRes"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/http/HTTPPacket;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPResponse;->set(Lcom/samsung/http/HTTPPacket;)V

    .line 67
    return-void
.end method

.method public static buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;
    .registers 5
    .parameter "req"

    .prologue
    .line 70
    new-instance v1, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v1}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 72
    .local v1, resp:Lcom/samsung/http/HTTPResponse;
    if-nez p0, :cond_9

    .line 73
    const/4 v1, 0x0

    .line 79
    .end local v1           #resp:Lcom/samsung/http/HTTPResponse;
    :cond_8
    :goto_8
    return-object v1

    .line 75
    .restart local v1       #resp:Lcom/samsung/http/HTTPResponse;
    :cond_9
    const-string v2, "Accept-Language"

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 76
    .local v0, acceptLanguage:Lcom/samsung/http/HTTPHeader;
    if-eqz v0, :cond_8

    .line 77
    const-string v2, "Content-Language"

    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 124
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v3, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getNHeaders()I

    move-result v2

    .line 126
    .local v2, nHeaders:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_a
    if-lt v1, v2, :cond_11

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 127
    :cond_11
    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPResponse;->getHeader(I)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 128
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public getStatusCode()I
    .registers 3

    .prologue
    .line 105
    iget v1, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    if-eqz v1, :cond_7

    .line 106
    iget v1, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    .line 108
    :goto_6
    return v1

    .line 107
    :cond_7
    new-instance v0, Lcom/samsung/http/HTTPStatus;

    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, httpStatus:Lcom/samsung/http/HTTPStatus;
    invoke-virtual {v0}, Lcom/samsung/http/HTTPStatus;->getStatusCode()I

    move-result v1

    goto :goto_6
.end method

.method public getStatusLineString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    invoke-static {v1}, Lcom/samsung/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public print()V
    .registers 4

    .prologue
    .line 165
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTPResponse"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 100
    iput p1, p0, Lcom/samsung/http/HTTPResponse;->statusCode:I

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0}, Lcom/samsung/http/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
