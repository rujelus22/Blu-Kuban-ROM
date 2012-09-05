.class public Lorg/apache/commons/httpclient/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final HTTP_ELEMENT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.commons.httpclient.HttpConstants"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpConstants;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "data"

    .prologue
    .line 283
    if-nez p0, :cond_a

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_a
    :try_start_a
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 289
    :catch_11
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .registers 3
    .parameter "data"

    .prologue
    .line 326
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpConstants;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 306
    if-nez p0, :cond_a

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_12

    return-object v1

    .line 312
    :catch_12
    move-exception v0

    .line 313
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "data"

    .prologue
    .line 67
    if-nez p0, :cond_a

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_a
    :try_start_a
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 81
    :goto_10
    return-object v1

    .line 73
    :catch_11
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 76
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 81
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_10
.end method

.method public static getContentBytes(Ljava/lang/String;)[B
    .registers 2
    .parameter "data"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 139
    if-nez p0, :cond_a

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_a
    if-eqz p1, :cond_14

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 144
    :cond_14
    const-string p1, "ISO-8859-1"

    .line 148
    :cond_16
    :try_start_16
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result-object v2

    .line 167
    :goto_1a
    return-object v2

    .line 149
    :catch_1b
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 152
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". HTTP default encoding used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 158
    :cond_42
    :try_start_42
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_47} :catch_49

    move-result-object v2

    goto :goto_1a

    .line 159
    :catch_49
    move-exception v1

    .line 161
    .local v1, e2:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 162
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 167
    :cond_59
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_1a
.end method

.method public static getContentString([B)Ljava/lang/String;
    .registers 2
    .parameter "data"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "charset"

    .prologue
    .line 191
    if-nez p0, :cond_a

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_a
    if-eqz p3, :cond_14

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 196
    :cond_14
    const-string p3, "ISO-8859-1"

    .line 200
    :cond_16
    :try_start_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 217
    :goto_1b
    return-object v2

    .line 201
    :catch_1c
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 204
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". Default HTTP encoding used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 208
    :cond_43
    :try_start_43
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4a} :catch_4b

    goto :goto_1b

    .line 209
    :catch_4b
    move-exception v1

    .line 211
    .local v1, e2:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 212
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 217
    :cond_5b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_1b
.end method

.method public static getContentString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([B)Ljava/lang/String;
    .registers 3
    .parameter "data"

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpConstants;->getString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([BII)Ljava/lang/String;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 97
    if-nez p0, :cond_a

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_12

    .line 111
    :goto_11
    return-object v1

    .line 103
    :catch_12
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 106
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 111
    :cond_22
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_11
.end method
