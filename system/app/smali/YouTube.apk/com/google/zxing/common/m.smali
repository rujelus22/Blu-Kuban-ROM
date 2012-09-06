.class public final Lcom/google/zxing/common/m;
.super Lcom/google/zxing/common/k;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/zxing/common/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/e;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/zxing/common/k;-><init>(Lcom/google/zxing/e;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    .line 50
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/zxing/common/b;
    .registers 19

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    if-eqz v1, :cond_b

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    .line 81
    :goto_a
    return-object v1

    .line 59
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/m;->a()Lcom/google/zxing/e;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/zxing/e;->b()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_14b

    invoke-virtual {v1}, Lcom/google/zxing/e;->c()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_14b

    .line 61
    invoke-virtual {v1}, Lcom/google/zxing/e;->a()[B

    move-result-object v14

    .line 62
    invoke-virtual {v1}, Lcom/google/zxing/e;->b()I

    move-result v15

    .line 63
    invoke-virtual {v1}, Lcom/google/zxing/e;->c()I

    move-result v16

    .line 64
    shr-int/lit8 v1, v15, 0x3

    .line 65
    and-int/lit8 v2, v15, 0x7

    if-eqz v2, :cond_160

    .line 66
    add-int/lit8 v1, v1, 0x1

    move v13, v1

    .line 68
    :goto_34
    shr-int/lit8 v1, v16, 0x3

    .line 69
    and-int/lit8 v2, v16, 0x7

    if-eqz v2, :cond_15d

    .line 70
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 72
    :goto_3d
    filled-new-array {v2, v13}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v3, 0x0

    move v12, v3

    :goto_4b
    if-ge v12, v2, :cond_aa

    shl-int/lit8 v3, v12, 0x3

    add-int/lit8 v4, v3, 0x8

    move/from16 v0, v16

    if-lt v4, v0, :cond_57

    add-int/lit8 v3, v16, -0x8

    :cond_57
    const/4 v4, 0x0

    move v11, v4

    :goto_59
    if-ge v11, v13, :cond_a6

    shl-int/lit8 v4, v11, 0x3

    add-int/lit8 v5, v4, 0x8

    if-lt v5, v15, :cond_63

    add-int/lit8 v4, v15, -0x8

    :cond_63
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v10, v5

    :goto_69
    const/16 v5, 0x8

    if-ge v10, v5, :cond_8f

    add-int v5, v3, v10

    mul-int/2addr v5, v15

    add-int v17, v5, v4

    const/4 v5, 0x0

    move v9, v8

    move v8, v5

    :goto_75
    const/16 v5, 0x8

    if-ge v8, v5, :cond_8a

    add-int v5, v17, v8

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v9, v5

    if-ge v5, v7, :cond_83

    move v7, v5

    :cond_83
    if-le v5, v6, :cond_15a

    :goto_85
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    goto :goto_75

    :cond_8a
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v8, v9

    goto :goto_69

    :cond_8f
    sub-int v4, v6, v7

    const/16 v5, 0x18

    if-le v4, v5, :cond_9f

    shr-int/lit8 v4, v8, 0x6

    :goto_97
    aget-object v5, v1, v12

    aput v4, v5, v11

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_59

    :cond_9f
    if-nez v6, :cond_a3

    const/4 v4, 0x1

    goto :goto_97

    :cond_a3
    shr-int/lit8 v4, v7, 0x1

    goto :goto_97

    :cond_a6
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_4b

    .line 74
    :cond_aa
    new-instance v11, Lcom/google/zxing/common/b;

    move/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lcom/google/zxing/common/b;-><init>(II)V

    .line 75
    const/4 v3, 0x0

    move v5, v3

    :goto_b3
    if-ge v5, v2, :cond_141

    shl-int/lit8 v3, v5, 0x3

    add-int/lit8 v4, v3, 0x8

    move/from16 v0, v16

    if-lt v4, v0, :cond_154

    add-int/lit8 v3, v16, -0x8

    move v4, v3

    :goto_c0
    const/4 v9, 0x0

    :goto_c1
    if-ge v9, v13, :cond_13c

    shl-int/lit8 v3, v9, 0x3

    add-int/lit8 v6, v3, 0x8

    if-lt v6, v15, :cond_157

    add-int/lit8 v3, v15, -0x8

    move v10, v3

    :goto_cc
    const/4 v3, 0x1

    if-le v9, v3, :cond_104

    move v3, v9

    :goto_d0
    add-int/lit8 v6, v13, -0x2

    if-ge v3, v6, :cond_106

    move v8, v3

    :goto_d5
    const/4 v3, 0x1

    if-le v5, v3, :cond_10a

    move v3, v5

    :goto_d9
    add-int/lit8 v6, v2, -0x2

    if-ge v3, v6, :cond_10c

    :goto_dd
    const/4 v7, 0x0

    const/4 v6, -0x2

    :goto_df
    const/4 v12, 0x2

    if-gt v6, v12, :cond_10f

    add-int v12, v3, v6

    aget-object v12, v1, v12

    add-int/lit8 v17, v8, -0x2

    aget v17, v12, v17

    add-int v7, v7, v17

    add-int/lit8 v17, v8, -0x1

    aget v17, v12, v17

    add-int v7, v7, v17

    aget v17, v12, v8

    add-int v7, v7, v17

    add-int/lit8 v17, v8, 0x1

    aget v17, v12, v17

    add-int v7, v7, v17

    add-int/lit8 v17, v8, 0x2

    aget v12, v12, v17

    add-int/2addr v7, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_df

    :cond_104
    const/4 v3, 0x2

    goto :goto_d0

    :cond_106
    add-int/lit8 v3, v13, -0x3

    move v8, v3

    goto :goto_d5

    :cond_10a
    const/4 v3, 0x2

    goto :goto_d9

    :cond_10c
    add-int/lit8 v3, v2, -0x3

    goto :goto_dd

    :cond_10f
    div-int/lit8 v7, v7, 0x19

    const/4 v3, 0x0

    move v6, v3

    :goto_113
    const/16 v3, 0x8

    if-ge v6, v3, :cond_139

    add-int v3, v4, v6

    mul-int/2addr v3, v15

    add-int v8, v3, v10

    const/4 v3, 0x0

    :goto_11d
    const/16 v12, 0x8

    if-ge v3, v12, :cond_135

    add-int v12, v8, v3

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    if-ge v12, v7, :cond_132

    add-int v12, v10, v3

    add-int v17, v4, v6

    move/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Lcom/google/zxing/common/b;->b(II)V

    :cond_132
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    :cond_135
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_113

    :cond_139
    add-int/lit8 v9, v9, 0x1

    goto :goto_c1

    :cond_13c
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_b3

    .line 76
    :cond_141
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    .line 81
    :goto_145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    goto/16 :goto_a

    .line 79
    :cond_14b
    invoke-super/range {p0 .. p0}, Lcom/google/zxing/common/k;->b()Lcom/google/zxing/common/b;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/zxing/common/m;->a:Lcom/google/zxing/common/b;

    goto :goto_145

    :cond_154
    move v4, v3

    goto/16 :goto_c0

    :cond_157
    move v10, v3

    goto/16 :goto_cc

    :cond_15a
    move v5, v6

    goto/16 :goto_85

    :cond_15d
    move v2, v1

    goto/16 :goto_3d

    :cond_160
    move v13, v1

    goto/16 :goto_34
.end method
