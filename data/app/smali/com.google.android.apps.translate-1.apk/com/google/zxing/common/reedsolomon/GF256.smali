.class public final Lcom/google/zxing/common/reedsolomon/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

.field public static final QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

.field private final zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 8
    .parameter "primitive"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x100

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    .line 48
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    .line 49
    const/4 v1, 0x1

    .line 50
    .local v1, x:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v3, :cond_1f

    .line 51
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aput v1, v2, v0

    .line 52
    shl-int/lit8 v1, v1, 0x1

    .line 53
    if-lt v1, v3, :cond_1c

    .line 54
    xor-int/2addr v1, p1

    .line 50
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 57
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2f

    .line 58
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 61
    :cond_2f
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v3, v5, [I

    aput v4, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 62
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 63
    return-void
.end method

.method static addOrSubtract(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 94
    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 5
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 77
    if-gez p1, :cond_8

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 80
    :cond_8
    if-nez p2, :cond_d

    .line 81
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 85
    :goto_c
    return-object v1

    .line 83
    :cond_d
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 84
    .local v0, coefficients:[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 85
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    goto :goto_c
.end method

.method exp(I)I
    .registers 3
    .parameter "a"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .registers 4
    .parameter "a"

    .prologue
    .line 118
    if-nez p1, :cond_8

    .line 119
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method log(I)I
    .registers 3
    .parameter "a"

    .prologue
    .line 108
    if-nez p1, :cond_8

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v0, v0, p1

    return v0
.end method

.method multiply(II)I
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 130
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 131
    :cond_4
    const/4 v1, 0x0

    .line 136
    :goto_5
    return v1

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v2, v2, p2

    add-int v0, v1, v2

    .line 136
    .local v0, logSum:I
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    and-int/lit16 v2, v0, 0xff

    ushr-int/lit8 v3, v0, 0x8

    add-int/2addr v2, v3

    aget v1, v1, v2

    goto :goto_5
.end method
