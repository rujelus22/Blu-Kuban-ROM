.class public final Lcom/google/api/client/http/MultipartRelatedContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartRelatedContent.java"


# static fields
.field private static final CONTENT_TRANSFER_ENCODING:[B

.field private static final CONTENT_TYPE:[B

.field private static final CR_LF:[B

.field private static final TWO_DASHES:[B


# instance fields
.field private boundary:Ljava/lang/String;

.field private final parts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/HttpContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    .line 71
    const-string v0, "Content-Type: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    .line 72
    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    .line 74
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/api/client/http/HttpContent;[Lcom/google/api/client/http/HttpContent;)V
    .registers 5
    .parameter "firstPart"
    .parameter "otherParts"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>()V

    .line 59
    const-string v1, "END_OF_PART"

    iput-object v1, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, parts:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/http/HttpContent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iput-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    .line 86
    return-void
.end method


# virtual methods
.method public computeLength()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v9, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 130
    .local v0, boundaryBytes:[B
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    array-length v10, v0

    add-int/2addr v9, v10

    int-to-long v6, v9

    .line 131
    .local v6, result:J
    iget-object v9, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/http/HttpContent;

    .line 132
    .local v5, part:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v3

    .line 133
    .local v3, length:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gez v9, :cond_2d

    .line 134
    const-wide/16 v6, -0x1

    .line 146
    .end local v3           #length:J
    .end local v5           #part:Lcom/google/api/client/http/HttpContent;
    .end local v6           #result:J
    :cond_2c
    return-wide v6

    .line 136
    .restart local v3       #length:J
    .restart local v5       #part:Lcom/google/api/client/http/HttpContent;
    .restart local v6       #result:J
    :cond_2d
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_42

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 139
    .local v8, typeBytes:[B
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v9, v9

    sget-object v10, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    array-length v10, v10

    add-int/2addr v9, v10

    array-length v10, v8

    add-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v6, v9

    .line 141
    .end local v8           #typeBytes:[B
    :cond_42
    invoke-static {v1}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 142
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    array-length v9, v9

    sget-object v10, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v10, v10

    add-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v6, v9

    .line 144
    :cond_51
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    int-to-long v9, v9

    add-long/2addr v9, v3

    sget-object v11, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    array-length v11, v0

    int-to-long v11, v11

    add-long/2addr v9, v11

    add-long/2addr v6, v9

    .line 145
    goto :goto_14
.end method

.method public forRequest(Lcom/google/api/client/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 96
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 97
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setMimeVersion(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/related; boundary=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartRelatedContent;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .registers 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/HttpContent;

    .line 157
    .local v1, onePart:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    const/4 v2, 0x0

    .line 161
    .end local v1           #onePart:Lcom/google/api/client/http/HttpContent;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v5, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, boundaryBytes:[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    iget-object v5, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/HttpContent;

    .line 105
    .local v3, part:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 108
    .local v4, typeBytes:[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 109
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 110
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 112
    .end local v4           #typeBytes:[B
    :cond_37
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 113
    invoke-static {v1}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 114
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 115
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 117
    :cond_4c
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-interface {v3, p1}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 119
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 120
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_14

    .line 123
    .end local v1           #contentType:Ljava/lang/String;
    .end local v3           #part:Lcom/google/api/client/http/HttpContent;
    :cond_62
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 124
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 125
    return-void
.end method
