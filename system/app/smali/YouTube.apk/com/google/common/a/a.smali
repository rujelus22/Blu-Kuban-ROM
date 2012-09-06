.class public final Lcom/google/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 150
    new-array v0, v1, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/common/a/a;->a:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/common/a/a;->b:[I

    .line 443
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/google/common/a/a;->c:[I

    .line 491
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/a/a;->d:[I

    return-void

    .line 150
    nop

    :array_24
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0xe1t 0xf5t 0x5t
        0x0t 0xcat 0x9at 0x3bt
    .end array-data

    .line 154
    :array_3c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
        0x5at 0xct 0x0t 0x0t
        0x86t 0x7bt 0x0t 0x0t
        0x43t 0xd3t 0x4t 0x0t
        0xa5t 0x40t 0x30t 0x0t
        0x78t 0x86t 0xe2t 0x1t
        0xb6t 0x40t 0xd9t 0x12t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data

    .line 443
    :array_54
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0xb0t 0x13t 0x0t 0x0t
        0x80t 0x9dt 0x0t 0x0t
        0x80t 0x89t 0x5t 0x0t
        0x0t 0x5ft 0x37t 0x0t
        0x0t 0x15t 0x61t 0x2t
        0x0t 0xfct 0x8ct 0x1ct
    .end array-data

    .line 491
    :array_72
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0x0t 0x0t 0x1t 0x0t
        0x29t 0x9t 0x0t 0x0t
        0xddt 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 356
    int-to-long v0, p0

    int-to-long v2, p1

    add-long v1, v0, v2

    .line 357
    long-to-int v0, v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    .line 358
    :cond_17
    long-to-int v0, v1

    return v0
.end method

.method public static a(IILjava/math/RoundingMode;)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    div-int/lit8 v2, p0, 0x40

    .line 255
    mul-int/lit8 v3, v2, 0x40

    sub-int v3, p0, v3

    .line 257
    if-nez v3, :cond_f

    move v0, v2

    .line 302
    :goto_e
    return v0

    .line 268
    :cond_f
    xor-int/lit8 v4, p0, 0x40

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    .line 270
    sget-object v4, Lcom/google/common/a/b;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_6e

    .line 300
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :pswitch_26
    if-nez v3, :cond_32

    :goto_28
    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move v0, v1

    goto :goto_28

    :cond_34
    :pswitch_34
    move v0, v1

    .line 302
    :cond_35
    :goto_35
    :pswitch_35
    if-eqz v0, :cond_6c

    add-int v0, v2, v5

    goto :goto_e

    .line 281
    :pswitch_3a
    if-gtz v5, :cond_35

    move v0, v1

    goto :goto_35

    .line 284
    :pswitch_3e
    if-ltz v5, :cond_35

    move v0, v1

    goto :goto_35

    .line 289
    :pswitch_42
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 290
    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    .line 293
    if-nez v3, :cond_68

    .line 294
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_61

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_64

    move v4, v0

    :goto_59
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_66

    move v3, v0

    :goto_5e
    and-int/2addr v3, v4

    if-eqz v3, :cond_62

    :cond_61
    move v1, v0

    :cond_62
    move v0, v1

    goto :goto_35

    :cond_64
    move v4, v1

    goto :goto_59

    :cond_66
    move v3, v1

    goto :goto_5e

    .line 296
    :cond_68
    if-gtz v3, :cond_35

    move v0, v1

    goto :goto_35

    :cond_6c
    move v0, v2

    .line 302
    goto :goto_e

    .line 270
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_34
        :pswitch_3e
        :pswitch_35
        :pswitch_3a
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method
