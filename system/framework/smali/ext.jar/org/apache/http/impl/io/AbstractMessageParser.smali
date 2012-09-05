.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# instance fields
.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .parameter "buffer"
    .parameter "parser"
    .parameter "params"

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_e

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_e
    if-nez p3, :cond_18

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_18
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 76
    const-string v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 78
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 80
    if-eqz p2, :cond_2f

    .end local p2
    :goto_2c
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 81
    return-void

    .line 80
    .restart local p2
    :cond_2f
    sget-object p2, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    goto :goto_2c
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .registers 15
    .parameter "inbuffer"
    .parameter "maxHeaderCount"
    .parameter "maxLineLen"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p0, :cond_a

    .line 107
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Session input buffer may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 109
    :cond_a
    if-nez p3, :cond_e

    .line 110
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 112
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, headerLines:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 115
    .local v2, current:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v8, 0x0

    .line 117
    .local v8, previous:Lorg/apache/http/util/CharArrayBuffer;
    :cond_15
    if-nez v2, :cond_48

    .line 118
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    .end local v2           #current:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v9, 0x40

    invoke-direct {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 122
    .restart local v2       #current:Lorg/apache/http/util/CharArrayBuffer;
    :goto_1e
    invoke-interface {p0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v7

    .line 123
    .local v7, l:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2c

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_4c

    .line 156
    :cond_2c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Lorg/apache/http/Header;

    .line 157
    .local v5, headers:[Lorg/apache/http/Header;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_bc

    .line 158
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/util/CharArrayBuffer;

    .line 160
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    :try_start_3f
    invoke-interface {p3, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v9

    aput-object v9, v5, v6
    :try_end_45
    .catch Lorg/apache/http/ParseException; {:try_start_3f .. :try_end_45} :catch_b1

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 120
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v5           #headers:[Lorg/apache/http/Header;
    .end local v6           #i:I
    .end local v7           #l:I
    :cond_48
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_1e

    .line 130
    .restart local v7       #l:I
    :cond_4c
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5e

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_ab

    :cond_5e
    if-eqz v8, :cond_ab

    .line 133
    const/4 v6, 0x0

    .line 134
    .restart local v6       #i:I
    :goto_61
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    if-ge v6, v9, :cond_73

    .line 135
    invoke-virtual {v2, v6}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 136
    .local v1, ch:C
    const/16 v9, 0x20

    if-eq v1, v9, :cond_8b

    const/16 v9, 0x9

    if-eq v1, v9, :cond_8b

    .line 141
    .end local v1           #ch:C
    :cond_73
    if-lez p2, :cond_8e

    invoke-virtual {v8}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v6

    if-le v9, p2, :cond_8e

    .line 143
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Maximum line length limit exceeded"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 139
    .restart local v1       #ch:C
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    .line 140
    goto :goto_61

    .line 145
    .end local v1           #ch:C
    :cond_8e
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 146
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v8, v2, v6, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 152
    .end local v6           #i:I
    :goto_9b
    if-lez p1, :cond_15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, p1, :cond_15

    .line 153
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Maximum header count exceeded"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 148
    :cond_ab
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    move-object v8, v2

    .line 150
    const/4 v2, 0x0

    goto :goto_9b

    .line 161
    .restart local v0       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v5       #headers:[Lorg/apache/http/Header;
    .restart local v6       #i:I
    :catch_b1
    move-exception v3

    .line 162
    .local v3, ex:Lorg/apache/http/ParseException;
    new-instance v9, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 165
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v3           #ex:Lorg/apache/http/ParseException;
    :cond_bc
    return-object v5
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, message:Lorg/apache/http/HttpMessage;
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    :try_end_6
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_6} :catch_17

    move-result-object v1

    .line 178
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 183
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-interface {v1, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 184
    return-object v1

    .line 175
    .end local v0           #headers:[Lorg/apache/http/Header;
    :catch_17
    move-exception v2

    .line 176
    .local v2, px:Lorg/apache/http/ParseException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
