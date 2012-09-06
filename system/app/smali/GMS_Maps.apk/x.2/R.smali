.class Lx/r;
.super Lx/a;
.source "SourceFile"


# instance fields
.field protected final b:[D


# direct methods
.method protected constructor <init>([D)V
    .registers 4
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lx/a;-><init>()V

    .line 114
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create PolygonVertexList from incomplete array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_10
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lx/r;->a:I

    .line 118
    iput-object p1, p0, Lx/r;->b:[D

    .line 119
    return-void
.end method

.method static a([D)Lx/r;
    .registers 2
    .parameter

    .prologue
    .line 69
    new-instance v0, Lx/r;

    invoke-direct {v0, p0}, Lx/r;-><init>([D)V

    return-object v0
.end method

.method static a([D[I)Lx/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 79
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    array-length v0, p1

    if-lt v0, v2, :cond_1a

    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_1a

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_22

    .line 84
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChainStartIndices for PolygonVertexList.create invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_22
    array-length v0, p1

    if-ne v0, v2, :cond_2b

    .line 87
    new-instance v0, Lx/r;

    invoke-direct {v0, p0}, Lx/r;-><init>([D)V

    .line 89
    :goto_2a
    return-object v0

    :cond_2b
    new-instance v0, Lx/s;

    invoke-direct {v0, p0, p1}, Lx/s;-><init>([D[I)V

    goto :goto_2a
.end method

.method private a(IIII)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lx/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1e

    .line 719
    invoke-virtual {p0, p1, p2, p4}, Lx/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1c

    invoke-virtual {p0, p2, p3, p4}, Lx/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1d

    :cond_1c
    move v0, v1

    .line 721
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0, p1, p2, p4}, Lx/r;->a(III)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    invoke-virtual {p0, p2, p3, p4}, Lx/r;->a(III)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    :goto_2e
    move v0, v1

    goto :goto_1d

    :cond_30
    move v1, v0

    goto :goto_2e
.end method

.method private a(Lx/u;ILx/d;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 747
    invoke-virtual {p1, p2}, Lx/u;->j(I)I

    move-result v1

    .line 748
    invoke-virtual {p1, v1}, Lx/u;->d(I)I

    move-result v2

    .line 749
    invoke-virtual {p1, v1}, Lx/u;->e(I)I

    move-result v3

    .line 751
    invoke-virtual {p1, v2, v1}, Lx/u;->g(II)I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {p1, v1, v3}, Lx/u;->g(II)I

    move-result v4

    if-nez v4, :cond_1a

    .line 756
    :cond_19
    :goto_19
    return v0

    .line 754
    :cond_1a
    invoke-virtual {p0, v1}, Lx/r;->e(I)Lx/c;

    move-result-object v4

    .line 756
    sget-object v5, Lx/c;->d:Lx/c;

    if-ne v4, v5, :cond_2e

    invoke-virtual {p3, v2, v1}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p3, v1, v3}, Lx/d;->b(II)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_2e
    sget-object v5, Lx/c;->c:Lx/c;

    if-ne v4, v5, :cond_3e

    invoke-virtual {p3, v1, v3}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p3, v2, v1}, Lx/d;->b(II)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_3e
    sget-object v5, Lx/c;->a:Lx/c;

    if-ne v4, v5, :cond_4e

    invoke-virtual {p3, v2, v1}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p3, v1, v3}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_4e
    sget-object v5, Lx/c;->b:Lx/c;

    if-ne v4, v5, :cond_5e

    invoke-virtual {p3, v1, v3}, Lx/d;->b(II)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p3, v2, v1}, Lx/d;->b(II)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_5e
    sget-object v5, Lx/c;->e:Lx/c;

    if-ne v4, v5, :cond_6e

    invoke-virtual {p3, v1, v3}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p3, v2, v1}, Lx/d;->a(II)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_6e
    sget-object v5, Lx/c;->f:Lx/c;

    if-ne v4, v5, :cond_7e

    invoke-virtual {p3, v2, v1}, Lx/d;->b(II)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p3, v1, v3}, Lx/d;->b(II)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_7e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private c(II)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 670
    invoke-virtual {p0, p1}, Lx/r;->c(I)I

    move-result v3

    .line 671
    invoke-virtual {p0, p1}, Lx/r;->d(I)I

    move-result v2

    .line 672
    invoke-virtual {p0, p2}, Lx/r;->c(I)I

    move-result v5

    .line 673
    invoke-virtual {p0, p2}, Lx/r;->d(I)I

    move-result v4

    .line 674
    invoke-virtual {p0, v3, p1}, Lx/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0, p1, v2}, Lx/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0, v5, p2}, Lx/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0, p2, v4}, Lx/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0, p1, v3, v2}, Lx/r;->c(III)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, p1, v3, v5}, Lx/r;->c(III)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, p1, v3, v4}, Lx/r;->c(III)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, p1, v2, v5}, Lx/r;->c(III)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, p1, v2, v4}, Lx/r;->c(III)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, p1, v5, v4}, Lx/r;->c(III)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4d
    move v0, v6

    .line 682
    :goto_4e
    return v0

    :cond_4f
    invoke-direct {p0, v3, p1, v2, v5}, Lx/r;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-direct {p0, v3, p1, v2, v4}, Lx/r;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_65

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lx/r;->a(IIIII)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    goto :goto_4e

    :cond_65
    move v0, v6

    goto :goto_4e
.end method

.method private c(III)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0, p2, p3}, Lx/r;->a(II)I

    move-result v2

    if-nez v2, :cond_9

    .line 736
    :cond_8
    :goto_8
    return v0

    .line 730
    :cond_9
    invoke-virtual {p0, p1, p2}, Lx/r;->a(II)I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0, p1, p3}, Lx/r;->a(II)I

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    .line 731
    goto :goto_8

    .line 733
    :cond_17
    invoke-virtual {p0, p1, p2}, Lx/r;->a(II)I

    move-result v2

    invoke-virtual {p0, p1, p3}, Lx/r;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_23

    move v0, v1

    .line 734
    goto :goto_8

    .line 736
    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Lx/r;->a(III)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method public a(I)D
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lx/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method a(I[DII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lx/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, p3, 0x2

    mul-int/lit8 v3, p4, 0x2

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 897
    instance-of v0, p1, Lx/r;

    return v0
.end method

.method public b(I)D
    .registers 4
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lx/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method protected b(II)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    const-string v0, "[("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    iget-object v0, p0, Lx/r;->b:[D

    mul-int/lit8 v2, p1, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 930
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    iget-object v0, p0, Lx/r;->b:[D

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 932
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    add-int/lit8 v0, p1, 0x1

    :goto_2a
    if-ge v0, p2, :cond_52

    .line 934
    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    iget-object v2, p0, Lx/r;->b:[D

    mul-int/lit8 v3, v0, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 936
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget-object v2, p0, Lx/r;->b:[D

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 938
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 940
    :cond_52
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lx/z;
    .registers 2

    .prologue
    .line 125
    new-instance v0, Lx/z;

    invoke-direct {v0, p0}, Lx/z;-><init>(Lx/a;)V

    return-object v0
.end method

.method public c(I)I
    .registers 3
    .parameter

    .prologue
    .line 152
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lx/r;->h(I)I

    move-result v0

    return v0
.end method

.method public c()Lx/u;
    .registers 2

    .prologue
    .line 130
    new-instance v0, Lx/u;

    invoke-direct {v0, p0}, Lx/u;-><init>(Lx/r;)V

    return-object v0
.end method

.method public d(I)I
    .registers 3
    .parameter

    .prologue
    .line 157
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lx/r;->h(I)I

    move-result v0

    return v0
.end method

.method public d()Lx/f;
    .registers 2

    .prologue
    .line 135
    new-instance v0, Lx/f;

    invoke-direct {v0, p0}, Lx/f;-><init>(Lx/r;)V

    return-object v0
.end method

.method public e()D
    .registers 6

    .prologue
    .line 243
    const-wide/16 v1, 0x0

    .line 244
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lx/r;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_13

    .line 245
    invoke-virtual {p0, v0}, Lx/r;->i(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 247
    :cond_13
    return-wide v1
.end method

.method public e(I)Lx/c;
    .registers 19
    .parameter

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p1}, Lx/r;->c(I)I

    move-result v9

    .line 165
    invoke-virtual/range {p0 .. p1}, Lx/r;->d(I)I

    move-result v10

    .line 166
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1, v10}, Lx/r;->a(III)D

    move-result-wide v11

    .line 167
    const-wide/16 v2, 0x0

    cmpg-double v2, v11, v2

    if-gez v2, :cond_86

    const/4 v2, 0x1

    .line 168
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/r;->b:[D

    mul-int/lit8 v4, p1, 0x2

    aget-wide v13, v3, v4

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/r;->b:[D

    mul-int/lit8 v4, v9, 0x2

    aget-wide v4, v3, v4

    .line 171
    cmpg-double v3, v4, v13

    if-gez v3, :cond_88

    const/4 v6, 0x1

    .line 172
    :goto_2c
    cmpl-double v3, v4, v13

    if-nez v3, :cond_8a

    const/4 v3, 0x1

    move v8, v3

    .line 173
    :goto_32
    cmpl-double v3, v4, v13

    if-lez v3, :cond_8d

    const/4 v3, 0x1

    .line 175
    :goto_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, v10, 0x2

    aget-wide v15, v4, v5

    .line 176
    cmpg-double v4, v15, v13

    if-gez v4, :cond_8f

    const/4 v5, 0x1

    .line 177
    :goto_44
    cmpl-double v4, v15, v13

    if-nez v4, :cond_91

    const/4 v4, 0x1

    move v7, v4

    .line 178
    :goto_4a
    cmpl-double v4, v15, v13

    if-lez v4, :cond_94

    const/4 v4, 0x1

    .line 180
    :goto_4f
    if-eqz v8, :cond_b7

    if-eqz v7, :cond_b7

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_99

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_96

    sget-object v2, Lx/c;->f:Lx/c;

    .line 221
    :goto_85
    return-object v2

    .line 167
    :cond_86
    const/4 v2, 0x0

    goto :goto_17

    .line 171
    :cond_88
    const/4 v6, 0x0

    goto :goto_2c

    .line 172
    :cond_8a
    const/4 v3, 0x0

    move v8, v3

    goto :goto_32

    .line 173
    :cond_8d
    const/4 v3, 0x0

    goto :goto_37

    .line 176
    :cond_8f
    const/4 v5, 0x0

    goto :goto_44

    .line 177
    :cond_91
    const/4 v4, 0x0

    move v7, v4

    goto :goto_4a

    .line 178
    :cond_94
    const/4 v4, 0x0

    goto :goto_4f

    .line 182
    :cond_96
    sget-object v2, Lx/c;->d:Lx/c;

    goto :goto_85

    .line 185
    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b4

    sget-object v2, Lx/c;->e:Lx/c;

    goto :goto_85

    :cond_b4
    sget-object v2, Lx/c;->c:Lx/c;

    goto :goto_85

    .line 191
    :cond_b7
    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_dc

    if-nez v8, :cond_c1

    if-eqz v7, :cond_dc

    .line 193
    :cond_c1
    if-eqz v8, :cond_e9

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v9, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v11, p1, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-wide v11, v2, v11

    cmpg-double v2, v9, v11

    if-gez v2, :cond_e7

    move v2, v4

    .line 202
    :cond_dc
    :goto_dc
    if-eqz v2, :cond_10f

    .line 203
    if-eqz v3, :cond_105

    if-nez v4, :cond_e4

    if-eqz v7, :cond_105

    .line 204
    :cond_e4
    sget-object v2, Lx/c;->a:Lx/c;

    goto :goto_85

    :cond_e7
    move v2, v5

    .line 194
    goto :goto_dc

    .line 197
    :cond_e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v9, v10, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v9, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    mul-int/lit8 v11, p1, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-wide v11, v2, v11

    cmpg-double v2, v9, v11

    if-gez v2, :cond_103

    move v2, v6

    goto :goto_dc

    :cond_103
    move v2, v3

    goto :goto_dc

    .line 206
    :cond_105
    if-eqz v6, :cond_123

    if-nez v5, :cond_10b

    if-eqz v7, :cond_123

    .line 207
    :cond_10b
    sget-object v2, Lx/c;->b:Lx/c;

    goto/16 :goto_85

    .line 210
    :cond_10f
    if-nez v3, :cond_113

    if-eqz v8, :cond_119

    :cond_113
    if-eqz v4, :cond_119

    .line 211
    sget-object v2, Lx/c;->e:Lx/c;

    goto/16 :goto_85

    .line 213
    :cond_119
    if-nez v6, :cond_11d

    if-eqz v8, :cond_123

    :cond_11d
    if-eqz v5, :cond_123

    .line 214
    sget-object v2, Lx/c;->f:Lx/c;

    goto/16 :goto_85

    .line 218
    :cond_123
    if-nez v6, :cond_127

    if-eqz v8, :cond_12f

    :cond_127
    if-nez v4, :cond_12b

    if-eqz v7, :cond_12f

    .line 219
    :cond_12b
    sget-object v2, Lx/c;->c:Lx/c;

    goto/16 :goto_85

    .line 221
    :cond_12f
    sget-object v2, Lx/c;->d:Lx/c;

    goto/16 :goto_85
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 879
    if-ne p1, p0, :cond_5

    .line 889
    :cond_4
    :goto_4
    return v0

    .line 882
    :cond_5
    instance-of v2, p1, Lx/r;

    if-nez v2, :cond_b

    move v0, v1

    .line 883
    goto :goto_4

    .line 885
    :cond_b
    check-cast p1, Lx/r;

    .line 886
    invoke-virtual {p1, p0}, Lx/r;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lx/r;->b:[D

    iget-object v3, p1, Lx/r;->b:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    .line 887
    goto :goto_4
.end method

.method public f()Z
    .registers 15

    .prologue
    .line 285
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    iget v0, p0, Lx/r;->a:I

    if-ge v8, v0, :cond_40

    .line 286
    invoke-virtual {p0, v8}, Lx/r;->c(I)I

    move-result v2

    .line 287
    invoke-virtual {p0, v8}, Lx/r;->d(I)I

    move-result v9

    .line 288
    invoke-virtual {p0, v2, v8, v9}, Lx/r;->a(III)D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_72

    .line 289
    invoke-virtual {p0, v2}, Lx/r;->a(I)D

    move-result-wide v0

    .line 290
    invoke-virtual {p0, v2}, Lx/r;->b(I)D

    move-result-wide v2

    .line 291
    invoke-virtual {p0, v8}, Lx/r;->a(I)D

    move-result-wide v4

    .line 292
    invoke-virtual {p0, v8}, Lx/r;->b(I)D

    move-result-wide v6

    .line 293
    invoke-virtual {p0, v9}, Lx/r;->a(I)D

    move-result-wide v10

    .line 294
    invoke-virtual {p0, v9}, Lx/r;->b(I)D

    move-result-wide v12

    .line 295
    cmpl-double v9, v0, v4

    if-eqz v9, :cond_38

    cmpl-double v9, v10, v4

    if-nez v9, :cond_42

    :cond_38
    cmpl-double v9, v0, v4

    if-nez v9, :cond_40

    cmpl-double v9, v10, v4

    if-eqz v9, :cond_42

    .line 309
    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0

    .line 299
    :cond_42
    invoke-static/range {v0 .. v7}, Lx/y;->a(DDDD)I

    move-result v9

    if-ltz v9, :cond_52

    invoke-static/range {v0 .. v7}, Lx/y;->a(DDDD)I

    move-result v0

    if-nez v0, :cond_6d

    cmpg-double v0, v2, v6

    if-gez v0, :cond_6d

    :cond_52
    const/4 v0, 0x1

    move v9, v0

    :goto_54
    move-wide v0, v10

    move-wide v2, v12

    .line 301
    invoke-static/range {v0 .. v7}, Lx/y;->a(DDDD)I

    move-result v0

    if-ltz v0, :cond_68

    move-wide v0, v10

    move-wide v2, v12

    invoke-static/range {v0 .. v7}, Lx/y;->a(DDDD)I

    move-result v0

    if-gez v0, :cond_70

    cmpg-double v0, v12, v6

    if-gez v0, :cond_70

    :cond_68
    const/4 v0, 0x1

    .line 304
    :goto_69
    if-ne v9, v0, :cond_72

    .line 305
    const/4 v0, 0x1

    goto :goto_41

    .line 299
    :cond_6d
    const/4 v0, 0x0

    move v9, v0

    goto :goto_54

    .line 301
    :cond_70
    const/4 v0, 0x0

    goto :goto_69

    .line 285
    :cond_72
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2
.end method

.method public g()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Lx/r;->i(I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public h()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 319
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lx/r;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_18

    .line 320
    invoke-virtual {p0, v0}, Lx/r;->i(I)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_15

    .line 324
    :goto_14
    return v1

    .line 319
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 324
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lx/r;->b:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method protected i(I)D
    .registers 19
    .parameter

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p1}, Lx/r;->g(I)I

    move-result v1

    .line 256
    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lx/r;->g(I)I

    move-result v12

    .line 257
    sub-int v2, v12, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_14

    .line 258
    const-wide/16 v1, 0x0

    .line 276
    :goto_13
    return-wide v1

    .line 261
    :cond_14
    const-wide/16 v6, 0x0

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    add-int/lit8 v3, v12, -0x1

    mul-int/lit8 v3, v3, 0x2

    aget-wide v13, v2, v3

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/r;->b:[D

    add-int/lit8 v3, v12, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v15, v2, v3

    .line 267
    const-wide/16 v4, 0x0

    .line 268
    const-wide/16 v2, 0x0

    move-wide v10, v6

    move-wide v6, v4

    .line 269
    :goto_32
    if-ge v1, v12, :cond_54

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, v1, 0x2

    aget-wide v4, v4, v5

    sub-double v8, v4, v13

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/r;->b:[D

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    sub-double/2addr v4, v15

    .line 274
    mul-double/2addr v6, v4

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    add-double/2addr v2, v10

    .line 269
    add-int/lit8 v1, v1, 0x1

    move-wide v6, v8

    move-wide v10, v2

    move-wide v2, v4

    goto :goto_32

    .line 276
    :cond_54
    const-wide/high16 v1, 0x4000

    div-double v1, v10, v1

    goto :goto_13
.end method

.method public i()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 338
    invoke-virtual {p0}, Lx/r;->c()Lx/u;

    move-result-object v1

    .line 339
    new-instance v2, Lx/d;

    invoke-direct {v2, p0}, Lx/d;-><init>(Lx/r;)V

    move v0, v6

    .line 341
    :goto_c
    iget v3, v1, Lx/u;->d:I

    if-ge v0, v3, :cond_1b

    .line 342
    invoke-direct {p0, v1, v0, v2}, Lx/r;->a(Lx/u;ILx/d;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v6, v7

    .line 361
    :cond_17
    :goto_17
    return v6

    .line 341
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 347
    :cond_1b
    const/16 v0, 0x8

    new-array v0, v0, [I

    move v1, v6

    .line 348
    :goto_20
    iget v0, p0, Lx/r;->a:I

    if-ge v1, v0, :cond_17

    .line 349
    add-int/lit8 v0, v1, 0x1

    :goto_26
    iget v2, p0, Lx/r;->a:I

    if-ge v0, v2, :cond_56

    .line 350
    invoke-virtual {p0, v1, v0}, Lx/r;->a(II)I

    move-result v2

    if-nez v2, :cond_53

    .line 351
    invoke-virtual {p0, v1}, Lx/r;->c(I)I

    move-result v2

    .line 352
    invoke-virtual {p0, v1}, Lx/r;->d(I)I

    move-result v4

    .line 353
    if-eq v2, v0, :cond_51

    if-eq v4, v0, :cond_51

    invoke-direct {p0, v1, v0}, Lx/r;->c(II)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p0, v0}, Lx/r;->c(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lx/r;->d(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx/r;->a(IIIII)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_51
    move v6, v7

    .line 355
    goto :goto_17

    .line 349
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 348
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 907
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lx/r;->g(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lx/r;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
