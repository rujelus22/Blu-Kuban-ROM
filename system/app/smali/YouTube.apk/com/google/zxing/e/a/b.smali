.class final Lcom/google/zxing/e/a/b;
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
    iput p1, p0, Lcom/google/zxing/e/a/b;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/e/a/b;->b:[B

    .line 34
    return-void
.end method

.method static a([BLcom/google/zxing/e/a/q;Lcom/google/zxing/e/a/n;)[Lcom/google/zxing/e/a/b;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lcom/google/zxing/e/a/q;->c()I

    move-result v2

    if-eq v0, v2, :cond_e

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_e
    invoke-virtual {p1, p2}, Lcom/google/zxing/e/a/q;->a(Lcom/google/zxing/e/a/n;)Lcom/google/zxing/e/a/s;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/google/zxing/e/a/s;->b()[Lcom/google/zxing/e/a/r;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 62
    :goto_18
    array-length v3, v6

    if-ge v0, v3, :cond_25

    .line 63
    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/google/zxing/e/a/r;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 67
    :cond_25
    new-array v8, v2, [Lcom/google/zxing/e/a/b;

    move v0, v1

    move v2, v1

    .line 69
    :goto_29
    array-length v3, v6

    if-ge v0, v3, :cond_52

    .line 70
    aget-object v7, v6, v0

    move v3, v1

    .line 71
    :goto_2f
    invoke-virtual {v7}, Lcom/google/zxing/e/a/r;->a()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 72
    invoke-virtual {v7}, Lcom/google/zxing/e/a/r;->b()I

    move-result v9

    .line 73
    invoke-virtual {v5}, Lcom/google/zxing/e/a/s;->a()I

    move-result v4

    add-int v10, v4, v9

    .line 74
    add-int/lit8 v4, v2, 0x1

    new-instance v11, Lcom/google/zxing/e/a/b;

    new-array v10, v10, [B

    invoke-direct {v11, v9, v10}, Lcom/google/zxing/e/a/b;-><init>(I[B)V

    aput-object v11, v8, v2

    .line 71
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2f

    .line 69
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 80
    :cond_52
    aget-object v0, v8, v1

    iget-object v0, v0, Lcom/google/zxing/e/a/b;->b:[B

    array-length v3, v0

    .line 81
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    .line 82
    :goto_5a
    if-ltz v0, :cond_66

    .line 83
    aget-object v4, v8, v0

    iget-object v4, v4, Lcom/google/zxing/e/a/b;->b:[B

    array-length v4, v4

    .line 84
    if-eq v4, v3, :cond_66

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 88
    goto :goto_5a

    .line 89
    :cond_66
    add-int/lit8 v7, v0, 0x1

    .line 91
    invoke-virtual {v5}, Lcom/google/zxing/e/a/s;->a()I

    move-result v0

    sub-int/2addr v3, v0

    move v4, v1

    move v0, v1

    .line 95
    :goto_6f
    if-ge v4, v3, :cond_89

    move v5, v0

    move v6, v1

    .line 96
    :goto_73
    if-ge v6, v2, :cond_84

    .line 97
    aget-object v0, v8, v6

    iget-object v9, v0, Lcom/google/zxing/e/a/b;->b:[B

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v9, v4

    .line 96
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v0

    goto :goto_73

    .line 95
    :cond_84
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_6f

    :cond_89
    move v4, v7

    .line 101
    :goto_8a
    if-ge v4, v2, :cond_9b

    .line 102
    aget-object v5, v8, v4

    iget-object v6, v5, Lcom/google/zxing/e/a/b;->b:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v6, v3

    .line 101
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_8a

    .line 105
    :cond_9b
    aget-object v4, v8, v1

    iget-object v4, v4, Lcom/google/zxing/e/a/b;->b:[B

    array-length v9, v4

    .line 106
    :goto_a0
    if-ge v3, v9, :cond_bf

    move v4, v0

    move v6, v1

    .line 107
    :goto_a4
    if-ge v6, v2, :cond_bb

    .line 108
    if-ge v6, v7, :cond_b8

    move v0, v3

    .line 109
    :goto_a9
    aget-object v5, v8, v6

    iget-object v10, v5, Lcom/google/zxing/e/a/b;->b:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v10, v0

    .line 107
    add-int/lit8 v0, v6, 0x1

    move v4, v5

    move v6, v0

    goto :goto_a4

    .line 108
    :cond_b8
    add-int/lit8 v0, v3, 0x1

    goto :goto_a9

    .line 106
    :cond_bb
    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_a0

    .line 112
    :cond_bf
    return-object v8
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/google/zxing/e/a/b;->a:I

    return v0
.end method

.method final b()[B
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/zxing/e/a/b;->b:[B

    return-object v0
.end method
