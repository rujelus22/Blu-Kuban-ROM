.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static areEqual([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v1

    .line 82
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 84
    goto :goto_4

    .line 87
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 89
    goto :goto_4

    .line 92
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, p0

    if-eq v0, v3, :cond_4

    .line 94
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 96
    goto :goto_4

    .line 92
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static areEqual([C[C)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_5

    .line 70
    :cond_4
    :goto_4
    return v1

    .line 52
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 54
    goto :goto_4

    .line 57
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 59
    goto :goto_4

    .line 62
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, p0

    if-eq v0, v3, :cond_4

    .line 64
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 66
    goto :goto_4

    .line 62
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static areEqual([I[I)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_5

    .line 167
    :cond_4
    :goto_4
    return v1

    .line 149
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 151
    goto :goto_4

    .line 154
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 156
    goto :goto_4

    .line 159
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, p0

    if-eq v0, v3, :cond_4

    .line 161
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 163
    goto :goto_4

    .line 159
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static areEqual([Z[Z)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    if-ne p0, p1, :cond_5

    .line 40
    :cond_4
    :goto_4
    return v1

    .line 22
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 24
    goto :goto_4

    .line 27
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 29
    goto :goto_4

    .line 32
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, p0

    if-eq v0, v3, :cond_4

    .line 34
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 36
    goto :goto_4

    .line 32
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static clone([B)[B
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 221
    if-nez p0, :cond_5

    .line 223
    const/4 v0, 0x0

    .line 229
    :goto_4
    return-object v0

    .line 225
    :cond_5
    array-length v1, p0

    new-array v0, v1, [B

    .line 227
    .local v0, copy:[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public static clone([I)[I
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 234
    if-nez p0, :cond_5

    .line 236
    const/4 v0, 0x0

    .line 242
    :goto_4
    return-object v0

    .line 238
    :cond_5
    array-length v1, p0

    new-array v0, v1, [I

    .line 240
    .local v0, copy:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public static constantTimeAreEqual([B[B)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    if-ne p0, p1, :cond_5

    .line 137
    :cond_4
    :goto_4
    return v2

    .line 120
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 122
    goto :goto_4

    .line 125
    :cond_b
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_11

    move v2, v3

    .line 127
    goto :goto_4

    .line 130
    :cond_11
    const/4 v1, 0x0

    .line 132
    .local v1, nonEqual:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v4, p0

    if-eq v0, v4, :cond_1f

    .line 134
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 137
    :cond_1f
    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_4
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 176
    aput-byte p1, p0, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_9
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 186
    aput-wide p1, p0, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_9
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 196
    aput-short p1, p0, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 4
    .parameter "data"

    .prologue
    .line 202
    if-nez p0, :cond_4

    .line 204
    const/4 v0, 0x0

    .line 216
    :cond_3
    return v0

    .line 207
    :cond_4
    array-length v1, p0

    .line 208
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 210
    .local v0, hc:I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 212
    mul-int/lit16 v0, v0, 0x101

    .line 213
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7
.end method
