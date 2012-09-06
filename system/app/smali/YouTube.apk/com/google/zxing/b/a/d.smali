.class public final Lcom/google/zxing/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/a;->f:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    iput-object v0, p0, Lcom/google/zxing/b/a/d;->a:Lcom/google/zxing/common/reedsolomon/c;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;
    .registers 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Lcom/google/zxing/b/a/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/b/a/a;-><init>(Lcom/google/zxing/common/b;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/b/a/a;->a()Lcom/google/zxing/b/a/e;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lcom/google/zxing/b/a/a;->b()[B

    move-result-object v0

    .line 81
    invoke-static {v0, v2}, Lcom/google/zxing/b/a/b;->a([BLcom/google/zxing/b/a/e;)[Lcom/google/zxing/b/a/b;

    move-result-object v3

    .line 83
    array-length v4, v3

    move v0, v1

    move v2, v1

    .line 87
    :goto_15
    if-ge v0, v4, :cond_21

    .line 88
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/google/zxing/b/a/b;->a()I

    move-result v5

    add-int/2addr v2, v5

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 90
    :cond_21
    new-array v5, v2, [B

    move v2, v1

    .line 93
    :goto_24
    if-ge v2, v4, :cond_68

    .line 94
    aget-object v0, v3, v2

    .line 95
    invoke-virtual {v0}, Lcom/google/zxing/b/a/b;->b()[B

    move-result-object v6

    .line 96
    invoke-virtual {v0}, Lcom/google/zxing/b/a/b;->a()I

    move-result v7

    .line 97
    array-length v8, v6

    new-array v9, v8, [I

    move v0, v1

    :goto_34
    if-ge v0, v8, :cond_3f

    aget-byte v10, v6, v0

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_3f
    array-length v0, v6

    sub-int/2addr v0, v7

    :try_start_41
    iget-object v8, p0, Lcom/google/zxing/b/a/d;->a:Lcom/google/zxing/common/reedsolomon/c;

    invoke-virtual {v8, v9, v0}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V
    :try_end_46
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_41 .. :try_end_46} :catch_51

    move v0, v1

    :goto_47
    if-ge v0, v7, :cond_57

    aget v8, v9, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :catch_51
    move-exception v0

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_57
    move v0, v1

    .line 98
    :goto_58
    if-ge v0, v7, :cond_64

    .line 100
    mul-int v8, v0, v4

    add-int/2addr v8, v2

    aget-byte v9, v6, v0

    aput-byte v9, v5, v8

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 93
    :cond_64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    .line 105
    :cond_68
    invoke-static {v5}, Lcom/google/zxing/b/a/c;->a([B)Lcom/google/zxing/common/g;

    move-result-object v0

    return-object v0
.end method
