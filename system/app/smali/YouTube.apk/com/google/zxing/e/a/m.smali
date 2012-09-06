.class public final Lcom/google/zxing/e/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/a;->e:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    iput-object v0, p0, Lcom/google/zxing/e/a/m;->a:Lcom/google/zxing/common/reedsolomon/c;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/common/b;Ljava/util/Hashtable;)Lcom/google/zxing/common/g;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Lcom/google/zxing/e/a/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/e/a/a;-><init>(Lcom/google/zxing/common/b;)V

    .line 85
    invoke-virtual {v0}, Lcom/google/zxing/e/a/a;->b()Lcom/google/zxing/e/a/q;

    move-result-object v5

    .line 86
    invoke-virtual {v0}, Lcom/google/zxing/e/a/a;->a()Lcom/google/zxing/e/a/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/e/a/o;->a()Lcom/google/zxing/e/a/n;

    move-result-object v6

    .line 89
    invoke-virtual {v0}, Lcom/google/zxing/e/a/a;->c()[B

    move-result-object v0

    .line 91
    invoke-static {v0, v5, v6}, Lcom/google/zxing/e/a/b;->a([BLcom/google/zxing/e/a/q;Lcom/google/zxing/e/a/n;)[Lcom/google/zxing/e/a/b;

    move-result-object v7

    move v0, v1

    move v2, v1

    .line 95
    :goto_1c
    array-length v3, v7

    if-ge v0, v3, :cond_29

    .line 96
    aget-object v3, v7, v0

    invoke-virtual {v3}, Lcom/google/zxing/e/a/b;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 98
    :cond_29
    new-array v8, v2, [B

    move v0, v1

    move v2, v1

    .line 102
    :goto_2d
    array-length v3, v7

    if-ge v0, v3, :cond_72

    .line 103
    aget-object v3, v7, v0

    .line 104
    invoke-virtual {v3}, Lcom/google/zxing/e/a/b;->b()[B

    move-result-object v9

    .line 105
    invoke-virtual {v3}, Lcom/google/zxing/e/a/b;->a()I

    move-result v10

    .line 106
    array-length v4, v9

    new-array v11, v4, [I

    move v3, v1

    :goto_3e
    if-ge v3, v4, :cond_49

    aget-byte v12, v9, v3

    and-int/lit16 v12, v12, 0xff

    aput v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_49
    array-length v3, v9

    sub-int/2addr v3, v10

    :try_start_4b
    iget-object v4, p0, Lcom/google/zxing/e/a/m;->a:Lcom/google/zxing/common/reedsolomon/c;

    invoke-virtual {v4, v11, v3}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V
    :try_end_50
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_4b .. :try_end_50} :catch_5b

    move v3, v1

    :goto_51
    if-ge v3, v10, :cond_61

    aget v4, v11, v3

    int-to-byte v4, v4

    aput-byte v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_61
    move v3, v1

    .line 107
    :goto_62
    if-ge v3, v10, :cond_6f

    .line 108
    add-int/lit8 v4, v2, 0x1

    aget-byte v11, v9, v3

    aput-byte v11, v8, v2

    .line 107
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_62

    .line 102
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 113
    :cond_72
    invoke-static {v8, v5, v6, p2}, Lcom/google/zxing/e/a/l;->a([BLcom/google/zxing/e/a/q;Lcom/google/zxing/e/a/n;Ljava/util/Hashtable;)Lcom/google/zxing/common/g;

    move-result-object v0

    return-object v0
.end method
