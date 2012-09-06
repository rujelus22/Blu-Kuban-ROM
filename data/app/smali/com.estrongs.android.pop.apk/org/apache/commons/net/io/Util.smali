.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 4

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .registers 9

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .registers 13

    new-array v6, p2, [C

    const-wide/16 v1, 0x0

    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual {p0, v6}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_13

    if-nez v3, :cond_2e

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    if-gez v3, :cond_14

    :cond_13
    return-wide v1

    :cond_14
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    if-eqz p5, :cond_4

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_4

    :catch_25
    move-exception v0

    new-instance v3, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v3

    :cond_2e
    const/4 v0, 0x0

    :try_start_2f
    invoke-virtual {p1, v6, v0, v3}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    int-to-long v4, v3

    add-long/2addr v1, v4

    if-eqz p5, :cond_4

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_25

    goto :goto_4
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 9

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .registers 14

    new-array v6, p2, [B

    const-wide/16 v1, 0x0

    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_13

    if-nez v3, :cond_31

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_14

    :cond_13
    return-wide v1

    :cond_14
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    if-eqz p6, :cond_1c

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_1c
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    if-eqz p5, :cond_4

    const/4 v3, 0x1

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_27} :catch_28

    goto :goto_4

    :catch_28
    move-exception v0

    new-instance v3, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v3

    :cond_31
    const/4 v0, 0x0

    :try_start_32
    invoke-virtual {p1, v6, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p6, :cond_3a

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_3a
    int-to-long v4, v3

    add-long/2addr v1, v4

    if-eqz p5, :cond_4

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_43} :catch_28

    goto :goto_4
.end method
