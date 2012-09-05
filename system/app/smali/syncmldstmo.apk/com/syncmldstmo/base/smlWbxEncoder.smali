.class public Lcom/syncmldstmo/base/smlWbxEncoder;
.super Ljava/lang/Object;
.source "smlWbxEncoder.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field protected m_out:Lcom/syncmldstmo/base/smlByteBuffer;

.field markpos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    .line 5
    return-void
.end method


# virtual methods
.method public _smlwbxEncAddContent(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 122
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 130
    :cond_8
    :goto_8
    return v0

    .line 125
    :cond_9
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->add(I)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 130
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public _smlwbxEncAddOpaque([CI)Z
    .registers 6
    .parameter "buf"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    const/16 v2, 0xc3

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 146
    :cond_9
    :goto_9
    return v1

    .line 138
    :cond_a
    invoke-virtual {p0, p2}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendMbUINT32(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-lt v0, p2, :cond_15

    .line 146
    const/4 v1, 0x1

    goto :goto_9

    .line 143
    :cond_15
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/smlByteBuffer;->add(C)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public _smlwbxEncAddSwitchpage(I)Z
    .registers 4
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 112
    :cond_7
    :goto_7
    return v0

    .line 109
    :cond_8
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public _smlwbxEncAppendByte(I)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0, p1}, Lcom/syncmldstmo/base/smlByteBuffer;->add(I)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public _smlwbxEncAppendMbUINT32(I)Z
    .registers 8
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 173
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 174
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 178
    .local v1, idx:I
    :goto_5
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 179
    shr-int/lit8 p1, p1, 0x7

    .line 180
    if-nez p1, :cond_28

    move v1, v2

    .line 182
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_11
    if-gt v1, v5, :cond_1c

    .line 187
    iget-object v3, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/base/smlByteBuffer;->add(B)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 189
    return v5

    .line 184
    :cond_1c
    iget-object v3, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    add-int/lit8 v1, v1, -0x1

    aget-byte v4, v0, v1

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/base/smlByteBuffer;->add(I)Lcom/syncmldstmo/base/smlByteBuffer;

    goto :goto_11

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_28
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_5
.end method

.method public _smlwbxEncAppendToBuffer(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlByteBuffer;->add([B)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public _smlwbxEncEndDocument()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public _smlwbxEncEndElement()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v0

    return v0
.end method

.method public _smlwbxEncInit(Lcom/syncmldstmo/base/smlByteBuffer;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 35
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlByteBuffer;->clear()V

    .line 36
    return-void
.end method

.method public _smlwbxEncStartDocument(IILjava/lang/String;I)Z
    .registers 7
    .parameter "pid"
    .parameter "charset"
    .parameter "stringtable"
    .parameter "stsize"

    .prologue
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 66
    :cond_8
    :goto_8
    return v0

    .line 48
    :cond_9
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    if-nez p1, :cond_17

    .line 53
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    :cond_17
    invoke-virtual {p0, p2}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p0, p4}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    invoke-virtual {p0, p3}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 66
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public _smlwbxEncStartElement(IZ)Z
    .registers 5
    .parameter "index"
    .parameter "content"

    .prologue
    .line 86
    move v0, p1

    .line 88
    .local v0, token:I
    if-eqz p2, :cond_5

    .line 89
    or-int/lit8 v0, v0, 0x40

    .line 91
    :cond_5
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAppendByte(I)Z

    move-result v1

    return v1
.end method

.method public smlenc_mark()Z
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public smlenc_reset()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 18
    iget v1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    if-nez v1, :cond_6

    .line 28
    :goto_5
    return v0

    .line 21
    :cond_6
    iget v1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v2

    if-eq v1, v2, :cond_20

    .line 23
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->m_out:Lcom/syncmldstmo/base/smlByteBuffer;

    iget v2, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/smlByteBuffer;->setLength(I)V

    .line 24
    iput v0, p0, Lcom/syncmldstmo/base/smlWbxEncoder;->markpos:I

    .line 25
    const/high16 v0, 0x4

    const-string v1, "*******CAREFUL*** NOT TEST smlenc_reset by DK"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 28
    :cond_20
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public wbxenc_add_content(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncAddContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wbxenc_end_document()Z
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncEndDocument()Z

    move-result v0

    return v0
.end method

.method public wbxenc_end_element()Z
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncEndElement()Z

    move-result v0

    return v0
.end method

.method public wbxenc_start_element(IZ)Z
    .registers 4
    .parameter "index"
    .parameter "content"

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/syncmldstmo/base/smlWbxEncoder;->_smlwbxEncStartElement(IZ)Z

    move-result v0

    return v0
.end method
