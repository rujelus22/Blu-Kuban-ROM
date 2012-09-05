.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# virtual methods
.method public close()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 53
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 54
    return-void
.end method

.method public mark(I)V
    .registers 3
    .parameter "readAheadLimit"

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 63
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 82
    const/4 v0, -0x1

    .line 84
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_b
.end method

.method public read([CII)I
    .registers 10
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, -0x1

    .line 97
    iget v4, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v5, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_d

    move v1, v3

    .line 116
    :cond_c
    return v1

    .line 100
    :cond_d
    if-nez p1, :cond_17

    .line 101
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Character array is missing"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_17
    if-ltz p3, :cond_1e

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_4c

    .line 104
    :cond_1e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_4c
    const/4 v1, 0x0

    .line 108
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4e
    if-ge v2, p3, :cond_c

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v0

    .line 110
    .local v0, c:I
    if-eq v0, v3, :cond_c

    .line 113
    add-int v4, p2, v2

    int-to-char v5, v0

    aput-char v5, p1, v4

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 125
    return-void
.end method

.method public skip(J)J
    .registers 9
    .parameter "n"

    .prologue
    .line 134
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1f

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of characters to skip is less than zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1f
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_2c

    .line 139
    const-wide/16 v2, -0x1

    .line 144
    :goto_2b
    return-wide v2

    .line 141
    :cond_2c
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 142
    .local v1, dest:I
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int v0, v1, v2

    .line 143
    .local v0, count:I
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 144
    int-to-long v2, v0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method