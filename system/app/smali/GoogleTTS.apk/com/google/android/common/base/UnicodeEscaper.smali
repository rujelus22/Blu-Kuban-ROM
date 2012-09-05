.class public abstract Lcom/google/android/common/base/UnicodeEscaper;
.super Lcom/google/android/common/base/Escaper;
.source "UnicodeEscaper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/common/base/Escaper;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "seq"
    .parameter "index"
    .parameter "end"

    .prologue
    .line 376
    if-ge p1, p2, :cond_87

    .line 377
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, index:I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 378
    .local v0, c1:C
    const v3, 0xd800

    if-lt v0, v3, :cond_12

    const v3, 0xdfff

    if-le v0, v3, :cond_13

    .line 390
    .end local v0           #c1:C
    :cond_12
    :goto_12
    return v0

    .line 382
    .restart local v0       #c1:C
    :cond_13
    const v3, 0xdbff

    if-gt v0, v3, :cond_58

    .line 384
    if-ne v2, p2, :cond_1c

    .line 385
    neg-int v0, v0

    goto :goto_12

    .line 388
    :cond_1c
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 389
    .local v1, c2:C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_12

    .line 392
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected low surrogate but got char \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    .end local v1           #c2:C
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected low surrogate character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 401
    .end local v0           #c1:C
    .end local v2           #index:I
    .restart local p1
    :cond_87
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final growBuffer([CII)[C
    .registers 5
    .parameter "dest"
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 410
    new-array v0, p2, [C

    .line 411
    .local v0, copy:[C
    if-lez p1, :cond_8

    .line 412
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_8
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 133
    .local v0, end:I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 134
    .local v1, index:I
    if-ne v1, v0, :cond_f

    .end local p1
    :goto_e
    return-object p1

    .restart local p1
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/google/android/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .parameter "s"
    .parameter "index"

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 158
    .local v5, end:I
    invoke-static {}, Lcom/google/android/common/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 159
    .local v2, dest:[C
    const/4 v3, 0x0

    .line 160
    .local v3, destIndex:I
    const/4 v10, 0x0

    .line 162
    .local v10, unescapedChunkStart:I
    :goto_a
    if-ge p2, v5, :cond_54

    .line 163
    invoke-static {p1, p2, v5}, Lcom/google/android/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 164
    .local v1, cp:I
    if-gez v1, :cond_1a

    .line 165
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Trailing high surrogate at end of input"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 171
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/android/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 172
    .local v7, escaped:[C
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_52

    const/4 v11, 0x2

    :goto_25
    add-int v8, p2, v11

    .line 173
    .local v8, nextIndex:I
    if-eqz v7, :cond_4d

    .line 174
    sub-int v0, p2, v10

    .line 178
    .local v0, charsSkipped:I
    add-int v11, v3, v0

    array-length v12, v7

    add-int v9, v11, v12

    .line 179
    .local v9, sizeNeeded:I
    array-length v11, v2

    if-ge v11, v9, :cond_3c

    .line 180
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 181
    .local v4, destLength:I
    invoke-static {v2, v3, v4}, Lcom/google/android/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 184
    .end local v4           #destLength:I
    :cond_3c
    if-lez v0, :cond_42

    .line 185
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 186
    add-int/2addr v3, v0

    .line 188
    :cond_42
    array-length v11, v7

    if-lez v11, :cond_4c

    .line 189
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    array-length v11, v7

    add-int/2addr v3, v11

    .line 193
    :cond_4c
    move v10, v8

    .line 195
    .end local v0           #charsSkipped:I
    .end local v9           #sizeNeeded:I
    :cond_4d
    invoke-virtual {p0, p1, v8, v5}, Lcom/google/android/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 196
    goto :goto_a

    .line 172
    .end local v8           #nextIndex:I
    :cond_52
    const/4 v11, 0x1

    goto :goto_25

    .line 200
    .end local v1           #cp:I
    .end local v7           #escaped:[C
    :cond_54
    sub-int v0, v5, v10

    .line 201
    .restart local v0       #charsSkipped:I
    if-lez v0, :cond_65

    .line 202
    add-int v6, v3, v0

    .line 203
    .local v6, endIndex:I
    array-length v11, v2

    if-ge v11, v6, :cond_61

    .line 204
    invoke-static {v2, v3, v6}, Lcom/google/android/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 206
    :cond_61
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 207
    move v3, v6

    .line 209
    .end local v6           #endIndex:I
    :cond_65
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v11
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 95
    move v1, p2

    .line 96
    .local v1, index:I
    :goto_1
    if-ge v1, p3, :cond_f

    .line 97
    invoke-static {p1, v1, p3}, Lcom/google/android/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 98
    .local v0, cp:I
    if-ltz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/android/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_10

    .line 103
    .end local v0           #cp:I
    :cond_f
    return v1

    .line 101
    .restart local v0       #cp:I
    :cond_10
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x2

    :goto_17
    add-int/2addr v1, v2

    .line 102
    goto :goto_1

    .line 101
    :cond_19
    const/4 v2, 0x1

    goto :goto_17
.end method
