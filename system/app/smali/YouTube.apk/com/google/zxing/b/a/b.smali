.class final Lcom/google/zxing/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/b/a/b;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/b/a/b;->b:[B

    .line 34
    return-void
.end method

.method static a([BLcom/google/zxing/b/a/e;)[Lcom/google/zxing/b/a/b;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/b/a/e;->g()Lcom/google/zxing/b/a/g;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/google/zxing/b/a/g;->b()[Lcom/google/zxing/b/a/f;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 54
    :goto_b
    array-length v3, v6

    if-ge v0, v3, :cond_18

    .line 55
    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/google/zxing/b/a/f;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 59
    :cond_18
    new-array v8, v2, [Lcom/google/zxing/b/a/b;

    move v0, v1

    move v2, v1

    .line 61
    :goto_1c
    array-length v3, v6

    if-ge v0, v3, :cond_45

    .line 62
    aget-object v7, v6, v0

    move v3, v1

    .line 63
    :goto_22
    invoke-virtual {v7}, Lcom/google/zxing/b/a/f;->a()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 64
    invoke-virtual {v7}, Lcom/google/zxing/b/a/f;->b()I

    move-result v9

    .line 65
    invoke-virtual {v5}, Lcom/google/zxing/b/a/g;->a()I

    move-result v4

    add-int v10, v4, v9

    .line 66
    add-int/lit8 v4, v2, 0x1

    new-instance v11, Lcom/google/zxing/b/a/b;

    new-array v10, v10, [B

    invoke-direct {v11, v9, v10}, Lcom/google/zxing/b/a/b;-><init>(I[B)V

    aput-object v11, v8, v2

    .line 63
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_22

    .line 61
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 73
    :cond_45
    aget-object v0, v8, v1

    iget-object v0, v0, Lcom/google/zxing/b/a/b;->b:[B

    array-length v0, v0

    .line 76
    invoke-virtual {v5}, Lcom/google/zxing/b/a/g;->a()I

    move-result v3

    sub-int v4, v0, v3

    .line 77
    add-int/lit8 v7, v4, -0x1

    move v0, v1

    move v3, v1

    .line 81
    :goto_54
    if-ge v0, v7, :cond_6b

    move v6, v1

    .line 82
    :goto_57
    if-ge v6, v2, :cond_68

    .line 83
    aget-object v5, v8, v6

    iget-object v9, v5, Lcom/google/zxing/b/a/b;->b:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v9, v0

    .line 82
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v5

    goto :goto_57

    .line 81
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 88
    :cond_6b
    invoke-virtual {p1}, Lcom/google/zxing/b/a/e;->a()I

    move-result v0

    const/16 v5, 0x18

    if-ne v0, v5, :cond_8d

    const/4 v0, 0x1

    move v7, v0

    .line 89
    :goto_75
    if-eqz v7, :cond_8f

    const/16 v0, 0x8

    :goto_79
    move v6, v1

    .line 90
    :goto_7a
    if-ge v6, v0, :cond_91

    .line 91
    aget-object v5, v8, v6

    iget-object v9, v5, Lcom/google/zxing/b/a/b;->b:[B

    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v9, v10

    .line 90
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v5

    goto :goto_7a

    :cond_8d
    move v7, v1

    .line 88
    goto :goto_75

    :cond_8f
    move v0, v2

    .line 89
    goto :goto_79

    .line 95
    :cond_91
    aget-object v0, v8, v1

    iget-object v0, v0, Lcom/google/zxing/b/a/b;->b:[B

    array-length v9, v0

    move v0, v3

    move v3, v4

    .line 96
    :goto_98
    if-ge v3, v9, :cond_ba

    move v4, v0

    move v6, v1

    .line 97
    :goto_9c
    if-ge v6, v2, :cond_b6

    .line 98
    if-eqz v7, :cond_b4

    const/4 v0, 0x7

    if-le v6, v0, :cond_b4

    add-int/lit8 v0, v3, -0x1

    .line 99
    :goto_a5
    aget-object v5, v8, v6

    iget-object v10, v5, Lcom/google/zxing/b/a/b;->b:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v10, v0

    .line 97
    add-int/lit8 v0, v6, 0x1

    move v4, v5

    move v6, v0

    goto :goto_9c

    :cond_b4
    move v0, v3

    .line 98
    goto :goto_a5

    .line 96
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_98

    .line 103
    :cond_ba
    array-length v1, p0

    if-eq v0, v1, :cond_c3

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_c3
    return-object v8
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/zxing/b/a/b;->a:I

    return v0
.end method

.method final b()[B
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/b/a/b;->b:[B

    return-object v0
.end method
