.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "ByteArrayContent.java"


# instance fields
.field private final byteArray:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .parameter "type"
    .parameter "array"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 58
    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .registers 4
    .parameter "type"
    .parameter "contentString"

    .prologue
    .line 80
    new-instance v0, Lcom/google/api/client/http/ByteArrayContent;

    invoke-static {p1}, Lcom/google/api/client/util/Strings;->toBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .registers 3
    .parameter "type"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method
