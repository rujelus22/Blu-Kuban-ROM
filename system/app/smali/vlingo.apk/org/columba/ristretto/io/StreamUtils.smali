.class public Lorg/columba/ristretto/io/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field private static final BUFFERSIZE:I = 0x1f40

.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "org.columba.ristretto.message.io"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/io/StreamUtils;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInString(Ljava/io/InputStream;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 107
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 109
    .local v0, read:I
    :goto_d
    if-lez v0, :cond_18

    .line 110
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_d

    .line 114
    :cond_18
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 116
    return-object v1
.end method

.method public static streamClone(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4
    .parameter "from"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/columba/ristretto/io/StreamUtils;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 129
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4
    .parameter "_isInput"
    .parameter "_osOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/16 v0, 0x1f40

    invoke-static {p0, p1, v0}, Lorg/columba/ristretto/io/StreamUtils;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 10
    .parameter "_isInput"
    .parameter "_osOutput"
    .parameter "_iBufSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-array v0, p2, [B

    .line 74
    .local v0, _aBuffer:[B
    const-wide/16 v2, 0x0

    .line 75
    .local v2, _lBytesCopied:J
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, _iBytesRead:I
    if-lez v1, :cond_14

    .line 76
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 78
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    .line 80
    :cond_14
    sget-object v4, Lorg/columba/ristretto/io/StreamUtils;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Copied "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 82
    return-wide v2
.end method
