.class public final Lcom/google/zxing/client/android/g;
.super Lcom/google/zxing/e;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/e;-><init>(II)V

    .line 45
    add-int v0, p4, p6

    if-gt v0, p2, :cond_b

    add-int v0, p5, p7

    if-le v0, p3, :cond_13

    .line 46
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    iput-object p1, p0, Lcom/google/zxing/client/android/g;->a:[B

    .line 50
    iput p2, p0, Lcom/google/zxing/client/android/g;->b:I

    .line 51
    iput p3, p0, Lcom/google/zxing/client/android/g;->c:I

    .line 52
    iput p4, p0, Lcom/google/zxing/client/android/g;->d:I

    .line 53
    iput p5, p0, Lcom/google/zxing/client/android/g;->e:I

    .line 54
    if-eqz p8, :cond_22

    .line 55
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/client/android/g;->a(II)V

    .line 57
    :cond_22
    return-void
.end method

.method private a(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v4, p0, Lcom/google/zxing/client/android/g;->a:[B

    .line 132
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/zxing/client/android/g;->e:I

    iget v2, p0, Lcom/google/zxing/client/android/g;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/client/android/g;->d:I

    add-int/2addr v2, v1

    move v3, v0

    :goto_c
    if-ge v3, p2, :cond_2d

    .line 133
    div-int/lit8 v0, p1, 0x2

    add-int v5, v2, v0

    .line 134
    add-int v0, v2, p1

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_17
    if-ge v1, v5, :cond_26

    .line 135
    aget-byte v6, v4, v1

    .line 136
    aget-byte v7, v4, v0

    aput-byte v7, v4, v1

    .line 137
    aput-byte v6, v4, v0

    .line 134
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 132
    :cond_26
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/google/zxing/client/android/g;->b:I

    add-int/2addr v2, v1

    move v3, v0

    goto :goto_c

    .line 140
    :cond_2d
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->b()I

    move-result v3

    .line 76
    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->c()I

    move-result v4

    .line 80
    iget v0, p0, Lcom/google/zxing/client/android/g;->b:I

    if-ne v3, v0, :cond_14

    iget v0, p0, Lcom/google/zxing/client/android/g;->c:I

    if-ne v4, v0, :cond_14

    .line 81
    iget-object v0, p0, Lcom/google/zxing/client/android/g;->a:[B

    .line 101
    :cond_13
    :goto_13
    return-object v0

    .line 84
    :cond_14
    mul-int v5, v3, v4

    .line 85
    new-array v0, v5, [B

    .line 86
    iget v2, p0, Lcom/google/zxing/client/android/g;->e:I

    iget v6, p0, Lcom/google/zxing/client/android/g;->b:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/google/zxing/client/android/g;->d:I

    add-int/2addr v2, v6

    .line 89
    iget v6, p0, Lcom/google/zxing/client/android/g;->b:I

    if-ne v3, v6, :cond_2a

    .line 90
    iget-object v3, p0, Lcom/google/zxing/client/android/g;->a:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    .line 95
    :cond_2a
    iget-object v5, p0, Lcom/google/zxing/client/android/g;->a:[B

    .line 96
    :goto_2c
    if-ge v1, v4, :cond_13

    .line 97
    mul-int v6, v1, v3

    .line 98
    invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v6, p0, Lcom/google/zxing/client/android/g;->b:I

    add-int/2addr v2, v6

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c
.end method

.method public final a(I[B)[B
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 61
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->c()I

    move-result v0

    if-lt p1, v0, :cond_1d

    .line 62
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested row is outside the image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1d
    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->b()I

    move-result v0

    .line 65
    if-eqz p2, :cond_26

    array-length v1, p2

    if-ge v1, v0, :cond_28

    .line 66
    :cond_26
    new-array p2, v0, [B

    .line 68
    :cond_28
    iget v1, p0, Lcom/google/zxing/client/android/g;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/client/android/g;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/client/android/g;->d:I

    add-int/2addr v1, v2

    .line 69
    iget-object v2, p0, Lcom/google/zxing/client/android/g;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-object p2
.end method

.method public final d()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->b()I

    move-result v3

    .line 111
    invoke-virtual {p0}, Lcom/google/zxing/client/android/g;->c()I

    move-result v7

    .line 112
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 113
    iget-object v6, p0, Lcom/google/zxing/client/android/g;->a:[B

    .line 114
    iget v0, p0, Lcom/google/zxing/client/android/g;->e:I

    iget v4, p0, Lcom/google/zxing/client/android/g;->b:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/google/zxing/client/android/g;->d:I

    add-int/2addr v0, v4

    move v4, v2

    move v5, v0

    .line 116
    :goto_19
    if-ge v4, v7, :cond_3b

    .line 117
    mul-int v8, v4, v3

    move v0, v2

    .line 118
    :goto_1e
    if-ge v0, v3, :cond_34

    .line 119
    add-int v9, v5, v0

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    .line 120
    add-int v10, v8, v0

    const/high16 v11, -0x100

    const v12, 0x10101

    mul-int/2addr v9, v12

    or-int/2addr v9, v11

    aput v9, v1, v10

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 122
    :cond_34
    iget v0, p0, Lcom/google/zxing/client/android/g;->b:I

    add-int/2addr v5, v0

    .line 116
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 125
    :cond_3b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 126
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 127
    return-object v0
.end method
