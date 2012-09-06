.class public final Lcom/google/zxing/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/c;->a:[B

    .line 40
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/zxing/common/c;->b:I

    return v0
.end method

.method public final a(I)I
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 56
    if-lez p1, :cond_b

    const/16 v0, 0x20

    if-le p1, v0, :cond_11

    .line 57
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_11
    iget v0, p0, Lcom/google/zxing/common/c;->c:I

    if-lez v0, :cond_71

    .line 64
    iget v0, p0, Lcom/google/zxing/common/c;->c:I

    rsub-int/lit8 v1, v0, 0x8

    .line 65
    if-ge p1, v1, :cond_57

    move v0, p1

    .line 66
    :goto_1c
    sub-int/2addr v1, v0

    .line 67
    rsub-int/lit8 v3, v0, 0x8

    shr-int v3, v7, v3

    shl-int/2addr v3, v1

    .line 68
    iget-object v4, p0, Lcom/google/zxing/common/c;->a:[B

    iget v5, p0, Lcom/google/zxing/common/c;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shr-int v1, v3, v1

    .line 69
    sub-int/2addr p1, v0

    .line 70
    iget v3, p0, Lcom/google/zxing/common/c;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/zxing/common/c;->c:I

    .line 71
    iget v0, p0, Lcom/google/zxing/common/c;->c:I

    if-ne v0, v6, :cond_3d

    .line 72
    iput v2, p0, Lcom/google/zxing/common/c;->c:I

    .line 73
    iget v0, p0, Lcom/google/zxing/common/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/c;->b:I

    :cond_3d
    move v0, v1

    move v1, p1

    .line 78
    :goto_3f
    if-lez v1, :cond_70

    .line 79
    :goto_41
    if-lt v1, v6, :cond_59

    .line 80
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/google/zxing/common/c;->a:[B

    iget v3, p0, Lcom/google/zxing/common/c;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 81
    iget v2, p0, Lcom/google/zxing/common/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/zxing/common/c;->b:I

    .line 82
    add-int/lit8 v1, v1, -0x8

    goto :goto_41

    :cond_57
    move v0, v1

    .line 65
    goto :goto_1c

    .line 86
    :cond_59
    if-lez v1, :cond_70

    .line 87
    rsub-int/lit8 v2, v1, 0x8

    .line 88
    shr-int v3, v7, v2

    shl-int/2addr v3, v2

    .line 89
    shl-int/2addr v0, v1

    iget-object v4, p0, Lcom/google/zxing/common/c;->a:[B

    iget v5, p0, Lcom/google/zxing/common/c;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shr-int v2, v3, v2

    or-int/2addr v0, v2

    .line 90
    iget v2, p0, Lcom/google/zxing/common/c;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/zxing/common/c;->c:I

    .line 94
    :cond_70
    return v0

    :cond_71
    move v0, v2

    move v1, p1

    goto :goto_3f
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/zxing/common/c;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/c;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/c;->c:I

    sub-int/2addr v0, v1

    return v0
.end method
