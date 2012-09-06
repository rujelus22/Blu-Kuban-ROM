.class public final Lcom/google/android/feeds/ContentHandlerUtils;
.super Ljava/lang/Object;
.source "ContentHandlerUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 7
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 51
    new-instance v2, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v2}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    .line 52
    .local v2, parser:Lorg/apache/http/message/HeaderValueParser;
    invoke-static {v0, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 53
    .local v3, values:[Lorg/apache/http/HeaderElement;
    array-length v4, v3

    if-lez v4, :cond_22

    .line 54
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-interface {v4, v5}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 55
    .local v1, param:Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_22

    .line 56
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 61
    .end local v1           #param:Lorg/apache/http/NameValuePair;
    .end local v2           #parser:Lorg/apache/http/message/HeaderValueParser;
    .end local v3           #values:[Lorg/apache/http/HeaderElement;
    :goto_21
    return-object v4

    .line 60
    :cond_22
    instance-of v4, p0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_29

    .line 61
    const-string v4, "ISO-8859-1"

    goto :goto_21

    .line 63
    :cond_29
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unabled to determine character encoding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, source:Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, encoding:Ljava/lang/String;
    const-string v4, "gzip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 76
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    :goto_15
    return-object v4

    .line 77
    :cond_16
    const-string v4, "deflate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 78
    const/4 v2, 0x1

    .line 79
    .local v2, noHeader:Z
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 80
    .local v1, inflater:Ljava/util/zip/Inflater;
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v3, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_15

    .end local v1           #inflater:Ljava/util/zip/Inflater;
    .end local v2           #noHeader:Z
    :cond_2a
    move-object v4, v3

    .line 82
    goto :goto_15
.end method

.method public static toString(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p0, :cond_a

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URLConnection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_a
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 94
    if-gez v0, :cond_12

    .line 95
    const/16 v0, 0x1000

    .line 97
    :cond_12
    invoke-static {p0}, Lcom/google/android/feeds/ContentHandlerUtils;->getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {p0}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 100
    :try_start_1a
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 103
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    :goto_2c
    const/4 v5, -0x1

    if-eq v4, v5, :cond_38

    .line 104
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    goto :goto_2c

    .line 106
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_40

    move-result-object v0

    .line 108
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_40
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
.end method
