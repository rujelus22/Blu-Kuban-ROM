.class public Lcom/google/android/common/http/FilePart;
.super Lcom/google/android/common/http/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private source:Lcom/google/android/common/http/PartSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    if-nez p3, :cond_17

    const-string v0, "application/octet-stream"

    :goto_4
    if-nez p4, :cond_19

    const-string v1, "ISO-8859-1"

    :goto_8
    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/common/http/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p2, :cond_1b

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v0, p3

    .line 93
    goto :goto_4

    :cond_19
    move-object v1, p4

    goto :goto_8

    .line 103
    :cond_1b
    iput-object p2, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    new-instance v0, Lcom/google/android/common/http/FilePartSource;

    invoke-direct {v0, p2}, Lcom/google/android/common/http/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/common/http/FilePartSource;

    invoke-direct {v0, p2}, Lcom/google/android/common/http/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Lcom/google/android/common/http/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/google/android/common/http/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/common/http/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/google/android/common/http/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected getSource()Lcom/google/android/common/http/PartSource;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v0}, Lcom/google/android/common/http/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/common/http/FilePart;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 231
    :goto_a
    return-void

    .line 220
    :cond_b
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 221
    iget-object v1, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v1}, Lcom/google/android/common/http/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 224
    :goto_15
    :try_start_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_25

    .line 225
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    goto :goto_15

    .line 229
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_a
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/google/android/common/http/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v0}, Lcom/google/android/common/http/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_21

    .line 195
    sget-object v1, Lcom/google/android/common/http/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    sget-object v1, Lcom/google/android/common/http/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 198
    sget-object v0, Lcom/google/android/common/http/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 200
    :cond_21
    return-void
.end method
