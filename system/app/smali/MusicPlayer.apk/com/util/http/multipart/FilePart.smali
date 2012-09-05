.class public Lcom/util/http/multipart/FilePart;
.super Lcom/util/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private final source:Lcom/util/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/util/http/multipart/FilePart;

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/util/http/multipart/PartSource;)V
    .registers 4
    .parameter "name"
    .parameter "partSource"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/util/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/util/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/util/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "partSource"
    .parameter "contentType"
    .parameter "charset"

    .prologue
    .line 92
    if-nez p3, :cond_4

    const-string p3, "application/octet-stream"

    .end local p3
    :cond_4
    if-nez p4, :cond_8

    const-string p4, "ISO-8859-1"

    .end local p4
    :cond_8
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/util/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p2, :cond_17

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_17
    iput-object p2, p0, Lcom/util/http/multipart/FilePart;->source:Lcom/util/http/multipart/PartSource;

    .line 99
    return-void
.end method


# virtual methods
.method protected lengthOfData()J
    .registers 3

    .prologue
    .line 241
    sget-object v0, Lcom/util/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/util/http/multipart/FilePart;->source:Lcom/util/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/util/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v3, Lcom/util/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter sendData(OutputStream out)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/util/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 206
    sget-object v3, Lcom/util/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "No data to send."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 221
    :goto_18
    return-void

    .line 210
    :cond_19
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 211
    .local v2, tmp:[B
    iget-object v3, p0, Lcom/util/http/multipart/FilePart;->source:Lcom/util/http/multipart/PartSource;

    invoke-interface {v3}, Lcom/util/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 214
    .local v0, instream:Ljava/io/InputStream;
    :goto_23
    :try_start_23
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_33

    .line 215
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    goto :goto_23

    .line 219
    .end local v1           #len:I
    :catchall_2e
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #len:I
    :cond_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_18
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v1, Lcom/util/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 181
    invoke-super {p0, p1}, Lcom/util/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 182
    iget-object v1, p0, Lcom/util/http/multipart/FilePart;->source:Lcom/util/http/multipart/PartSource;

    invoke-interface {v1}, Lcom/util/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 184
    sget-object v1, Lcom/util/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    sget-object v1, Lcom/util/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 186
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 187
    sget-object v1, Lcom/util/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 189
    :cond_28
    return-void
.end method
