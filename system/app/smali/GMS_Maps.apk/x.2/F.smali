.class Lx/f;
.super Lx/u;
.source "SourceFile"


# instance fields
.field protected a:[Z


# direct methods
.method constructor <init>(Lx/r;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Lx/u;-><init>(Lx/r;)V

    .line 29
    invoke-virtual {p0}, Lx/f;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lx/f;->a:[Z

    .line 30
    iget-object v0, p0, Lx/f;->a:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 31
    iget-object v0, p0, Lx/f;->a:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 32
    return-void
.end method

.method private a([DIDDII)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    move v0, p7

    :goto_1
    if-ge v0, p8, :cond_19

    .line 230
    mul-int v1, p2, v0

    aget-wide v1, p1, v1

    cmpl-double v1, v1, p3

    if-nez v1, :cond_16

    mul-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aget-wide v1, p1, v1

    cmpl-double v1, v1, p5

    if-nez v1, :cond_16

    .line 234
    :goto_15
    return v0

    .line 229
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method private a(DDDDDD)Z
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    sub-double v0, p1, p5

    .line 245
    sub-double v2, p3, p7

    .line 246
    sub-double v4, p9, p5

    .line 247
    sub-double v6, p11, p7

    .line 249
    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a([I)Lx/u;
    .registers 34
    .parameter

    .prologue
    .line 81
    invoke-virtual/range {p0 .. p0}, Lx/f;->d()I

    move-result v2

    if-nez v2, :cond_7

    .line 219
    :goto_6
    return-object p0

    .line 85
    :cond_7
    const/4 v4, 0x2

    .line 89
    invoke-virtual/range {p0 .. p0}, Lx/f;->e()I

    move-result v2

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/2addr v2, v3

    mul-int/2addr v2, v4

    new-array v3, v2, [D

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lx/a;->g(I)I

    move-result v10

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6, v10}, Lx/a;->a(I[DII)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->a:[Z

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([ZZ)V

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->a:[Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 97
    const/4 v2, 0x0

    move/from16 v24, v2

    :goto_38
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_1cf

    .line 98
    aget v5, p1, v24

    .line 99
    add-int/lit8 v2, v24, 0x1

    aget v6, p1, v2

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    invoke-virtual {v2, v6}, Lx/a;->f(I)I

    move-result v2

    .line 102
    move-object/from16 v0, p0

    iget-object v7, v0, Lx/f;->a:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_1d8

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    invoke-virtual {v2, v5}, Lx/a;->f(I)I

    move-result v2

    move/from16 v25, v2

    move/from16 v26, v5

    move v2, v6

    .line 109
    :goto_62
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lx/a;->g(I)I

    move-result v29

    .line 110
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/f;->b:Lx/a;

    add-int/lit8 v6, v25, 0x1

    invoke-virtual {v5, v6}, Lx/a;->g(I)I

    move-result v30

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/f;->b:Lx/a;

    invoke-virtual {v5, v2}, Lx/a;->a(I)D

    move-result-wide v5

    .line 126
    move-object/from16 v0, p0

    iget-object v7, v0, Lx/f;->b:Lx/a;

    invoke-virtual {v7, v2}, Lx/a;->b(I)D

    move-result-wide v7

    .line 128
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lx/f;->a([DIDDII)I

    move-result v28

    .line 129
    add-int/lit8 v9, v28, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lx/f;->a([DIDDII)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_13d

    .line 131
    const/16 v27, 0x0

    .line 132
    :goto_9a
    if-nez v27, :cond_13d

    .line 134
    add-int/lit8 v2, v28, -0x1

    rem-int/2addr v2, v10

    .line 135
    if-gez v2, :cond_a2

    add-int/2addr v2, v10

    .line 136
    :cond_a2
    add-int/lit8 v9, v28, 0x1

    rem-int/2addr v9, v10

    .line 137
    if-gez v9, :cond_a8

    add-int/2addr v9, v10

    .line 139
    :cond_a8
    mul-int v11, v4, v2

    aget-wide v12, v3, v11

    mul-int v11, v4, v2

    add-int/lit8 v11, v11, 0x1

    aget-wide v14, v3, v11

    mul-int v11, v4, v28

    aget-wide v16, v3, v11

    mul-int v11, v4, v28

    add-int/lit8 v11, v11, 0x1

    aget-wide v18, v3, v11

    mul-int v11, v4, v9

    aget-wide v20, v3, v11

    mul-int v11, v4, v9

    add-int/lit8 v11, v11, 0x1

    aget-wide v22, v3, v11

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v23}, Lx/f;->a(DDDDDD)Z

    move-result v31

    .line 142
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lx/f;->b(I)D

    move-result-wide v12

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lx/f;->c(I)D

    move-result-wide v14

    mul-int v11, v4, v28

    aget-wide v16, v3, v11

    mul-int v11, v4, v28

    add-int/lit8 v11, v11, 0x1

    aget-wide v18, v3, v11

    mul-int v11, v4, v9

    aget-wide v20, v3, v11

    mul-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x1

    aget-wide v22, v3, v9

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v23}, Lx/f;->a(DDDDDD)Z

    move-result v9

    .line 145
    mul-int v11, v4, v2

    aget-wide v12, v3, v11

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v3, v2

    mul-int v2, v4, v28

    aget-wide v16, v3, v2

    mul-int v2, v4, v28

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v3, v2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lx/f;->b(I)D

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lx/f;->c(I)D

    move-result-wide v22

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v23}, Lx/f;->a(DDDDDD)Z

    move-result v2

    .line 150
    if-eqz v31, :cond_135

    if-eqz v9, :cond_139

    if-eqz v2, :cond_139

    .line 152
    :cond_124
    add-int/lit8 v9, v28, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lx/f;->a([DIDDII)I

    move-result v2

    move v9, v2

    move/from16 v2, v27

    :goto_12f
    move/from16 v27, v2

    move/from16 v28, v9

    .line 156
    goto/16 :goto_9a

    .line 150
    :cond_135
    if-nez v9, :cond_124

    if-nez v2, :cond_124

    .line 154
    :cond_139
    const/4 v2, 0x1

    move/from16 v9, v28

    goto :goto_12f

    .line 160
    :cond_13d
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lx/a;->a(I)D

    move-result-wide v11

    cmpl-double v2, v11, v5

    if-nez v2, :cond_159

    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lx/a;->b(I)D

    move-result-wide v5

    cmpl-double v2, v5, v7

    if-eqz v2, :cond_195

    .line 171
    :cond_159
    sub-int v2, v10, v28

    .line 172
    add-int v5, v28, v30

    sub-int v5, v5, v29

    add-int/lit8 v5, v5, 0x2

    .line 174
    mul-int v6, v28, v4

    mul-int/2addr v5, v4

    mul-int/2addr v2, v4

    invoke-static {v3, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    add-int/lit8 v2, v28, 0x1

    .line 178
    sub-int v5, v30, v26

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v26

    invoke-virtual {v6, v0, v3, v2, v5}, Lx/a;->a(I[DII)V

    .line 182
    add-int/2addr v2, v5

    .line 183
    sub-int v5, v26, v29

    add-int/lit8 v5, v5, 0x1

    .line 184
    move-object/from16 v0, p0

    iget-object v6, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v29

    invoke-virtual {v6, v0, v3, v2, v5}, Lx/a;->a(I[DII)V

    .line 186
    sub-int v2, v30, v29

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v10, v2

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->a:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, v25

    .line 97
    :goto_18f
    add-int/lit8 v2, v24, 0x2

    move/from16 v24, v2

    goto/16 :goto_38

    .line 199
    :cond_195
    sub-int v2, v10, v28

    add-int/lit8 v2, v2, -0x1

    .line 200
    add-int v5, v28, v30

    sub-int v5, v5, v29

    .line 202
    add-int/lit8 v6, v28, 0x1

    mul-int/2addr v6, v4

    mul-int/2addr v5, v4

    mul-int/2addr v2, v4

    invoke-static {v3, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/lit8 v2, v28, 0x1

    .line 206
    sub-int v5, v30, v26

    add-int/lit8 v5, v5, -0x1

    .line 207
    move-object/from16 v0, p0

    iget-object v6, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v26

    invoke-virtual {v6, v0, v3, v2, v5}, Lx/a;->a(I[DII)V

    .line 210
    add-int/2addr v2, v5

    .line 211
    sub-int v5, v26, v29

    add-int/lit8 v5, v5, 0x1

    .line 212
    move-object/from16 v0, p0

    iget-object v6, v0, Lx/f;->b:Lx/a;

    move/from16 v0, v29

    invoke-virtual {v6, v0, v3, v2, v5}, Lx/a;->a(I[DII)V

    .line 214
    sub-int v2, v30, v29

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v10, v2

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/f;->a:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, v25

    goto :goto_18f

    .line 219
    :cond_1cf
    new-instance p0, Lx/u;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lx/u;-><init>([D)V

    goto/16 :goto_6

    :cond_1d8
    move/from16 v25, v2

    move/from16 v26, v6

    move v2, v5

    goto/16 :goto_62
.end method

.method public a(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    iget-object v2, p0, Lx/f;->b:Lx/a;

    invoke-virtual {v2, p1}, Lx/a;->f(I)I

    move-result v2

    .line 45
    iget-object v3, p0, Lx/f;->b:Lx/a;

    invoke-virtual {v3, p2}, Lx/a;->f(I)I

    move-result v3

    .line 47
    if-ne v2, v3, :cond_11

    .line 59
    :cond_10
    :goto_10
    return v0

    .line 50
    :cond_11
    iget-object v4, p0, Lx/f;->a:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lx/f;->a:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_10

    .line 53
    :cond_1d
    iget-object v0, p0, Lx/f;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_29

    .line 54
    iget-object v0, p0, Lx/f;->a:[Z

    aput-boolean v1, v0, v3

    move v0, v1

    .line 55
    goto :goto_10

    .line 57
    :cond_29
    iget-object v0, p0, Lx/f;->a:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_35

    .line 58
    iget-object v0, p0, Lx/f;->a:[Z

    aput-boolean v1, v0, v2

    move v0, v1

    .line 59
    goto :goto_10

    .line 62
    :cond_35
    new-instance v0, Lx/j;

    const-string v1, "Some outer chains have not been cut."

    invoke-direct {v0, v1}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 271
    instance-of v0, p1, Lx/f;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    if-ne p1, p0, :cond_5

    .line 266
    :cond_4
    :goto_4
    return v0

    .line 257
    :cond_5
    instance-of v2, p1, Lx/f;

    if-nez v2, :cond_b

    move v0, v1

    .line 258
    goto :goto_4

    .line 260
    :cond_b
    check-cast p1, Lx/f;

    .line 261
    invoke-virtual {p1, p0}, Lx/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-super {p0, p1}, Lx/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lx/f;->a:[Z

    iget-object v3, p1, Lx/f;->a:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_23
    move v0, v1

    .line 263
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 276
    invoke-super {p0}, Lx/u;->hashCode()I

    move-result v0

    iget-object v1, p0, Lx/f;->a:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
