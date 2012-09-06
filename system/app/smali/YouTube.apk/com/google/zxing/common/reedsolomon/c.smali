.class public final Lcom/google/zxing/common/reedsolomon/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/a;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/a;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    .line 47
    return-void
.end method


# virtual methods
.method public final a([II)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v4, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    move-object/from16 v0, p1

    invoke-direct {v4, v1, v0}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    .line 60
    move/from16 v0, p2

    new-array v5, v0, [I

    .line 61
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    sget-object v2, Lcom/google/zxing/common/reedsolomon/a;->f:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v2, 0x0

    :goto_17
    move/from16 v0, p2

    if-ge v2, v0, :cond_38

    .line 65
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    if-eqz v8, :cond_36

    add-int/lit8 v1, v2, 0x1

    :goto_21
    invoke-virtual {v6, v1}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/b;->b(I)I

    move-result v1

    .line 66
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aput v1, v5, v6

    .line 67
    if-eqz v1, :cond_1dc

    .line 68
    const/4 v1, 0x0

    .line 63
    :goto_32
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_17

    :cond_36
    move v1, v2

    .line 65
    goto :goto_21

    .line 71
    :cond_38
    if-eqz v3, :cond_3b

    .line 88
    :cond_3a
    return-void

    .line 74
    :cond_3b
    new-instance v2, Lcom/google/zxing/common/reedsolomon/b;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v2, v1, v5}, Lcom/google/zxing/common/reedsolomon/b;-><init>(Lcom/google/zxing/common/reedsolomon/a;[I)V

    .line 75
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Lcom/google/zxing/common/reedsolomon/a;->a(II)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v4

    if-ge v3, v4, :cond_1d7

    :goto_55
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->b()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v6

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v5

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v4

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->b()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v3

    move-object v7, v1

    move-object v1, v2

    :goto_6f
    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v2

    div-int/lit8 v9, p2, 0x2

    if-lt v2, v9, :cond_ec

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v2

    if-eqz v2, :cond_85

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "r_{i-1} was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_85
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/a;->a()Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v10, v9}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v9

    :goto_99
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v10

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v11

    if-lt v10, v11, :cond_d3

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/b;->b()Z

    move-result v10

    if-nez v10, :cond_d3

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v10

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v11

    iget-object v12, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v12, v10, v11}, Lcom/google/zxing/common/reedsolomon/a;->a(II)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/zxing/common/reedsolomon/b;->a(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v2

    invoke-virtual {v7, v10, v11}, Lcom/google/zxing/common/reedsolomon/b;->a(II)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/zxing/common/reedsolomon/b;->a(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v1

    goto :goto_99

    :cond_d3
    invoke-virtual {v2, v5}, Lcom/google/zxing/common/reedsolomon/b;->b(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/zxing/common/reedsolomon/b;->a(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v6

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/reedsolomon/b;->b(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/reedsolomon/b;->a(Lcom/google/zxing/common/reedsolomon/b;)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    move-object v14, v7

    move-object v7, v1

    move-object v1, v14

    goto :goto_6f

    :cond_ec
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v1

    if-nez v1, :cond_fb

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "sigmaTilde(0) was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_fb
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/reedsolomon/b;->c(I)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v2

    invoke-virtual {v7, v1}, Lcom/google/zxing/common/reedsolomon/b;->c(I)Lcom/google/zxing/common/reedsolomon/b;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/common/reedsolomon/b;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 77
    const/4 v1, 0x0

    aget-object v4, v3, v1

    .line 78
    const/4 v1, 0x1

    aget-object v6, v3, v1

    .line 79
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/b;->a()I

    move-result v5

    const/4 v1, 0x1

    if-ne v5, v1, :cond_159

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/b;->a(I)I

    move-result v3

    aput v3, v1, v2

    .line 80
    :goto_12a
    array-length v7, v1

    new-array v9, v7, [I

    const/4 v2, 0x0

    move v4, v2

    :goto_12f
    if-ge v4, v7, :cond_1ab

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v10

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v5, v2

    :goto_13c
    if-ge v5, v7, :cond_189

    if-eq v4, v5, :cond_1d4

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    aget v11, v1, v5

    invoke-virtual {v2, v11, v10}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v2

    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_186

    or-int/lit8 v2, v2, 0x1

    :goto_14e
    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v11, v3, v2}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v2

    :goto_154
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_13c

    .line 79
    :cond_159
    new-array v3, v5, [I

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_15d
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->c()I

    move-result v7

    if-ge v1, v7, :cond_17a

    if-ge v2, v5, :cond_17a

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/b;->b(I)I

    move-result v7

    if-nez v7, :cond_177

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v7, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v7

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_177
    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    :cond_17a
    if-eq v2, v5, :cond_184

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "Error locator degree does not match number of roots"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_184
    move-object v1, v3

    goto :goto_12a

    .line 80
    :cond_186
    and-int/lit8 v2, v2, -0x2

    goto :goto_14e

    :cond_189
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v6, v10}, Lcom/google/zxing/common/reedsolomon/b;->b(I)I

    move-result v5

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    invoke-virtual {v11, v3}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v2

    aput v2, v9, v4

    if-eqz v8, :cond_1a7

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    aget v3, v9, v4

    invoke-virtual {v2, v3, v10}, Lcom/google/zxing/common/reedsolomon/a;->c(II)I

    move-result v2

    aput v2, v9, v4

    :cond_1a7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12f

    .line 81
    :cond_1ab
    const/4 v2, 0x0

    :goto_1ac
    array-length v3, v1

    if-ge v2, v3, :cond_3a

    .line 82
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/c;->a:Lcom/google/zxing/common/reedsolomon/a;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 83
    if-gez v3, :cond_1c7

    .line 84
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "Bad error location"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1c7
    aget v4, p1, v3

    aget v5, v9, v2

    invoke-static {v4, v5}, Lcom/google/zxing/common/reedsolomon/a;->b(II)I

    move-result v4

    aput v4, p1, v3

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ac

    :cond_1d4
    move v2, v3

    goto/16 :goto_154

    :cond_1d7
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_55

    :cond_1dc
    move v1, v3

    goto/16 :goto_32
.end method
