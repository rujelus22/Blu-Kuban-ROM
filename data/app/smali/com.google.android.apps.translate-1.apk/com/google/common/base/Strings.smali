.class public final Lcom/google/common/base/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonPrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 193
    .local v0, maxPrefixLength:I
    const/4 v1, 0x0

    .line 194
    .local v1, p:I
    :goto_13
    if-ge v1, v0, :cond_22

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_22

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 197
    :cond_22
    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_32

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 198
    :cond_32
    add-int/lit8 v1, v1, -0x1

    .line 200
    :cond_34
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static commonSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 212
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    .local v0, maxSuffixLength:I
    const/4 v1, 0x0

    .line 218
    .local v1, s:I
    :goto_13
    if-ge v1, v0, :cond_30

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_30

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 221
    :cond_30
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 223
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    .line 225
    :cond_4c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    .end local p0
    :cond_7
    return-object p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 75
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 47
    if-nez p0, :cond_4

    const-string p0, ""

    .end local p0
    :cond_4
    return-object p0
.end method

.method public static padEnd(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .parameter "string"
    .parameter "minLength"
    .parameter "padChar"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_a

    .line 139
    .end local p0
    :goto_9
    return-object p0

    .line 134
    .restart local p0
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :goto_16
    if-ge v0, p1, :cond_1e

    .line 137
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 139
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static padStart(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .parameter "string"
    .parameter "minLength"
    .parameter "padChar"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_a

    .line 107
    .end local p0
    :goto_9
    return-object p0

    .line 102
    .restart local p0
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :goto_13
    if-ge v0, p1, :cond_1b

    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 106
    :cond_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .parameter "string"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 154
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-gt p1, v7, :cond_1e

    .line 157
    if-ltz p1, :cond_1c

    move v6, v7

    :goto_a
    const-string v9, "invalid count: %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v9, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-nez p1, :cond_1b

    const-string p0, ""

    .line 177
    .end local p0
    :cond_1b
    :goto_1b
    return-object p0

    .restart local p0
    :cond_1c
    move v6, v8

    .line 157
    goto :goto_a

    .line 162
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 163
    .local v1, len:I
    int-to-long v6, v1

    int-to-long v9, p1

    mul-long v2, v6, v9

    .line 164
    .local v2, longSize:J
    long-to-int v5, v2

    .line 165
    .local v5, size:I
    int-to-long v6, v5

    cmp-long v6, v6, v2

    if-eqz v6, :cond_49

    .line 166
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required array size too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_49
    new-array v0, v5, [C

    .line 171
    .local v0, array:[C
    invoke-virtual {p0, v8, v1, v0, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 173
    move v4, v1

    .local v4, n:I
    :goto_4f
    sub-int v6, v5, v4

    if-ge v4, v6, :cond_59

    .line 174
    invoke-static {v0, v8, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    shl-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 176
    :cond_59
    sub-int v6, v5, v4

    invoke-static {v0, v8, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_1b
.end method

.method static validSurrogatePairAt(Ljava/lang/CharSequence;I)Z
    .registers 3
    .parameter "string"
    .parameter "index"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 234
    if-ltz p1, :cond_22

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_22

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
