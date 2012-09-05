.class public Lorg/columba/ristretto/io/ByteBufferSource;
.super Ljava/lang/Object;
.source "ByteBufferSource.java"

# interfaces
.implements Lorg/columba/ristretto/io/Source;


# instance fields
.field private end:I

.field private pos:I

.field private source:[B

.field private start:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->source:[B

    .line 61
    iput v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    .line 62
    iput v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    .line 63
    array-length v0, p1

    iput v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    .line 64
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 4
    .parameter "pos"

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/io/ByteBufferSource;->seek(I)V

    .line 123
    invoke-virtual {p0}, Lorg/columba/ristretto/io/ByteBufferSource;->next()C
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 126
    :goto_7
    return v1

    .line 124
    :catch_8
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->source:[B

    .line 164
    return-void
.end method

.method public deepClose()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/columba/ristretto/io/ByteBufferSource;->close()V

    .line 171
    return-void
.end method

.method public fromActualPosition()Lorg/columba/ristretto/io/Source;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Lorg/columba/ristretto/io/ByteBufferSource;

    iget-object v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->source:[B

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/ByteBufferSource;-><init>([B)V

    .line 71
    .local v0, subsource:Lorg/columba/ristretto/io/ByteBufferSource;
    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    iget v2, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    .line 72
    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    .line 73
    const/4 v1, 0x0

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    .line 74
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    return v0
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public next()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Lorg/columba/ristretto/io/ByteBufferSource;->source:[B

    iget v3, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    iget v4, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    add-int/2addr v3, v4

    aget-byte v1, v2, v3

    .line 98
    .local v1, value:B
    and-int/lit16 v2, v1, 0x80

    and-int/lit8 v3, v1, 0x7f

    add-int v0, v2, v3

    .line 100
    .local v0, trueValue:I
    int-to-char v2, v0

    return v2
.end method

.method public seek(I)V
    .registers 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iput p1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    .line 89
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/columba/ristretto/io/ByteBufferSource;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v0

    return-object v0
.end method

.method public subSource(II)Lorg/columba/ristretto/io/Source;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 134
    new-instance v0, Lorg/columba/ristretto/io/ByteBufferSource;

    iget-object v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->source:[B

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/ByteBufferSource;-><init>([B)V

    .line 135
    .local v0, subsource:Lorg/columba/ristretto/io/ByteBufferSource;
    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    add-int/2addr v1, p1

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    .line 136
    iget v1, p0, Lorg/columba/ristretto/io/ByteBufferSource;->start:I

    add-int/2addr v1, p2

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->end:I

    .line 137
    const/4 v1, 0x0

    iput v1, v0, Lorg/columba/ristretto/io/ByteBufferSource;->pos:I

    .line 138
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/columba/ristretto/io/ByteBufferSource;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 153
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Lorg/columba/ristretto/io/ByteBufferSource;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 154
    invoke-virtual {p0, v1}, Lorg/columba/ristretto/io/ByteBufferSource;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 156
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
