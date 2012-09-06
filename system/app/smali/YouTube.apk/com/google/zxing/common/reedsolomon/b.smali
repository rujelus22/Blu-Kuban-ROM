.class final Lcom/google/zxing/common/reedsolomon/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/a;

.field private final b:[I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/a;[I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v1, p2

    if-nez v1, :cond_e

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_e
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    .line 47
    array-length v1, p2

    .line 48
    if-le v1, v0, :cond_39

    aget v2, p2, v3

    if-nez v2, :cond_39

    .line 51
    :goto_17
    if-ge v0, v1, :cond_20

    aget v2, p2, v0

    if-nez v2, :cond_20

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 54
    :cond_20
    if-ne v0, v1, :cond_2b

    .line 55
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 67
    :goto_2a
    return-void

    .line 57
    :cond_2b
    sub-int/2addr v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 58
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    .line 65
    :cond_39
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    goto :goto_2a
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method final a(I)I
    .registers 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method final a(II)Lcom/google/zxing/common/reedsolomon/b;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 186
    if-gez p1, :cond_8

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_8
    if-nez p2, :cond_11

    .line 190
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v0

    .line 197
    :goto_10
    return-object v0

    .line 192
    :cond_11
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v1, v0

    .line 193
    add-int v0, v1, p1

    new-array v2, v0, [I

    .line 194
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2a

    .line 195
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v3

    aput v3, v2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 197
    :cond_2a
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    goto :goto_10
.end method

.method final a(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 145
    :goto_19
    return-object p1

    .line 125
    :cond_1a
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object p1, p0

    .line 126
    goto :goto_19

    .line 129
    :cond_22
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 130
    iget-object v0, p1, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 131
    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_4f

    .line 136
    :goto_2a
    array-length v2, v1

    new-array v4, v2, [I

    .line 137
    array-length v2, v1

    array-length v3, v0

    sub-int v3, v2, v3

    .line 139
    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    .line 141
    :goto_35
    array-length v5, v1

    if-ge v2, v5, :cond_47

    .line 142
    sub-int v5, v2, v3

    aget v5, v0, v5

    aget v6, v1, v2

    invoke-static {v5, v6}, Lcom/google/zxing/common/reedsolomon/a;->b(II)I

    move-result v5

    aput v5, v4, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 145
    :cond_47
    new-instance p1, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p1, v0, v4}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    goto :goto_19

    :cond_4f
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2a
.end method

.method final b(I)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_9

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v0

    .line 115
    :cond_8
    return v0

    .line 102
    :cond_9
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v3, v2

    .line 103
    if-ne p1, v0, :cond_1e

    move v0, v1

    .line 106
    :goto_f
    if-ge v1, v3, :cond_8

    .line 107
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/google/zxing/common/reedsolomon/a;->b(II)I

    move-result v2

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_f

    .line 111
    :cond_1e
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v1, v2, v1

    move v4, v0

    move v0, v1

    move v1, v4

    .line 112
    :goto_25
    if-ge v1, v3, :cond_8

    .line 113
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v2, p1, v0}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/google/zxing/common/reedsolomon/a;->b(II)I

    move-result v2

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_25
.end method

.method final b(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;
    .registers 15
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    iget-object v2, p1, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 153
    :cond_1f
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v0

    .line 167
    :goto_25
    return-object v0

    .line 155
    :cond_26
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 156
    array-length v4, v3

    .line 157
    iget-object v5, p1, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    .line 158
    array-length v6, v5

    .line 159
    add-int v0, v4, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    move v2, v1

    .line 160
    :goto_33
    if-ge v2, v4, :cond_55

    .line 161
    aget v8, v3, v2

    move v0, v1

    .line 162
    :goto_38
    if-ge v0, v6, :cond_51

    .line 163
    add-int v9, v2, v0

    add-int v10, v2, v0

    aget v10, v7, v10

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    aget v12, v5, v0

    invoke-virtual {v11, v8, v12}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/google/zxing/common/reedsolomon/a;->b(II)I

    move-result v10

    aput v10, v7, v9

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 160
    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33

    .line 167
    :cond_55
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    goto :goto_25
.end method

.method final b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final c(I)Lcom/google/zxing/common/reedsolomon/b;
    .registers 7
    .parameter

    .prologue
    .line 171
    if-nez p1, :cond_9

    .line 172
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object p0

    .line 182
    :cond_8
    :goto_8
    return-object p0

    .line 174
    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 177
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v1, v0

    .line 178
    new-array v2, v1, [I

    .line 179
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_23

    .line 180
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v3

    aput v3, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 182
    :cond_23
    new-instance v0, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 227
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 228
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/b;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_13
    if-ltz v1, :cond_67

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v0

    .line 230
    if-eqz v0, :cond_3d

    .line 231
    if-gez v0, :cond_41

    .line 232
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    neg-int v0, v0

    .line 239
    :cond_23
    :goto_23
    if-eqz v1, :cond_27

    if-eq v0, v4, :cond_34

    .line 240
    :cond_27
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/b;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v3, v0}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v0

    .line 241
    if-nez v0, :cond_4d

    .line 242
    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    :cond_34
    :goto_34
    if-eqz v1, :cond_3d

    .line 251
    if-ne v1, v4, :cond_5e

    .line 252
    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_13

    .line 235
    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 236
    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 243
    :cond_4d
    if-ne v0, v4, :cond_55

    .line 244
    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 246
    :cond_55
    const-string v3, "a^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 254
    :cond_5e
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3d

    .line 260
    :cond_67
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
