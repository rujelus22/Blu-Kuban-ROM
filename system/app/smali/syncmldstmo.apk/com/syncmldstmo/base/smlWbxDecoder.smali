.class public Lcom/syncmldstmo/base/smlWbxDecoder;
.super Ljava/lang/Object;
.source "smlWbxDecoder.java"


# instance fields
.field protected m_in:Lcom/syncmldstmo/base/smlByteBuffer;

.field public stringT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->stringT:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 6
    return-void
.end method


# virtual methods
.method public _smlwbxDecInit(Lcom/syncmldstmo/base/smlByteBuffer;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 14
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlByteBuffer;->setPosition(I)V

    .line 15
    return-void
.end method

.method public _smlwbxDecParseExtension(I)Ljava/lang/String;
    .registers 8
    .parameter "type"

    .prologue
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    const/16 v5, 0xc3

    if-ne p1, v5, :cond_10

    .line 99
    :try_start_9
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_20

    move-result v3

    .line 101
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-lt v1, v3, :cond_15

    .line 112
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_10
    :goto_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 103
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferByte()I

    move-result v2

    .line 104
    .local v2, j:I
    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_20

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 108
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #len:I
    :catch_20
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10
.end method

.method _smlwbxDecParseStartdoc(Lcom/syncmldstmo/base/smlParser;)V
    .registers 5
    .parameter "parser"

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferByte()I

    move-result v1

    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_version:I

    .line 22
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_puid:I

    .line 24
    iget v1, p1, Lcom/syncmldstmo/base/smlParser;->_puid:I

    if-nez v1, :cond_13

    .line 26
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I

    .line 29
    :cond_13
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_charset:I

    .line 31
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecParseStringtable()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/syncmldstmo/base/smlParser;->_stringtable:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/syncmldstmo/base/smlParser;->_stringtable:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->stringT:Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    .line 38
    :goto_28
    return-void

    .line 34
    :catch_29
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public _smlwbxDecParseStr_i()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    :goto_5
    iget-object v2, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlByteBuffer;->read()I

    move-result v0

    .line 75
    .local v0, i:I
    if-nez v0, :cond_12

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 80
    :cond_12
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    .line 82
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected EOF wbxdec_parse_str_i"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_1d
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public _smlwbxDecParseStr_t()Ljava/lang/String;
    .registers 8

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 44
    .local v4, len:I
    const/4 v2, 0x0

    .line 45
    .local v2, i:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_7
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I

    move-result v4

    .line 50
    move v2, v4

    .line 51
    :goto_c
    iget-object v6, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->stringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_2a

    move-result v6

    if-nez v6, :cond_1e

    .line 63
    :goto_14
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 64
    .local v5, str:Ljava/lang/String;
    return-object v5

    .line 53
    .end local v5           #str:Ljava/lang/String;
    :cond_1e
    :try_start_1e
    iget-object v6, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->stringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 54
    .local v3, j:I
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2a

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 58
    .end local v3           #j:I
    :catch_2a
    move-exception v1

    .line 60
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public _smlwbxDecParseStringtable()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    :try_start_5
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferMbUINT32()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_1c

    move-result v3

    .line 126
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-lt v1, v3, :cond_11

    .line 137
    .end local v1           #i:I
    .end local v3           #len:I
    :goto_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 128
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferByte()I

    move-result v2

    .line 129
    .local v2, j:I
    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1c

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 132
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #len:I
    :catch_1c
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public _smlwbxDecReadBufferByte()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->read()I

    move-result v0

    .line 156
    .local v0, data:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 157
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF wbxdec_buffer_read_byte"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_11
    return v0
.end method

.method public _smlwbxDecReadBufferMbUINT32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 147
    .local v1, result:I
    :cond_1
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;->_smlwbxDecReadBufferByte()I

    move-result v0

    .line 148
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 149
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    .line 150
    return v1
.end method
