.class Ljava/math/Multiplication;
.super Ljava/lang/Object;
.source "Multiplication.java"


# static fields
.field static final bigFivePows:[Ljava/math/BigInteger;

.field static final bigTenPows:[Ljava/math/BigInteger;

.field static final fivePows:[I

.field static final tenPows:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v4, 0x20

    .line 40
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    sput-object v3, Ljava/math/Multiplication;->tenPows:[I

    .line 48
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_80

    sput-object v3, Ljava/math/Multiplication;->fivePows:[I

    .line 57
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    .line 63
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .line 69
    const-wide/16 v0, 0x1

    .line 71
    .local v0, fivePow:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    const/16 v3, 0x12

    if-gt v2, v3, :cond_3b

    .line 72
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 73
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    shl-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 74
    const-wide/16 v3, 0x5

    mul-long/2addr v0, v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 76
    :cond_3b
    :goto_3b
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v2, v3, :cond_66

    .line 77
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 78
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 80
    :cond_66
    return-void

    .line 40
    nop

    :array_68
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

    .line 48
    :array_80
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t
        0xe1t 0xf5t 0x5t 0x0t
        0x65t 0xcdt 0x1dt 0x0t
        0xf9t 0x2t 0x95t 0x0t
        0xddt 0xet 0xe9t 0x2t
        0x51t 0x4at 0x8dt 0xet
        0x95t 0x73t 0xc2t 0x48t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "exp"

    .prologue
    .line 183
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 184
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    aget v0, v0, p1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 188
    :goto_d
    return-object v0

    .line 185
    :cond_e
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge p1, v0, :cond_1c

    .line 186
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_d

    .line 188
    :cond_1c
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_d
.end method

.method static multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .parameter "val"
    .parameter "factor"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 93
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->multiplyByPositiveInt(I)V

    .line 94
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method static multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .registers 5
    .parameter "val"
    .parameter "exp"

    .prologue
    .line 106
    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    long-to-int v1, p1

    aget v0, v0, v1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {p1, p2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_11
.end method

.method static powerOf10(J)Ljava/math/BigInteger;
    .registers 15
    .parameter "exp"

    .prologue
    .line 120
    long-to-int v2, p0

    .line 122
    .local v2, intExp:I
    sget-object v7, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v7, v7

    int-to-long v7, v7

    cmp-long v7, p0, v7

    if-gez v7, :cond_e

    .line 124
    sget-object v7, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    aget-object v6, v7, v2

    .line 171
    :goto_d
    return-object v6

    .line 125
    :cond_e
    const-wide/16 v7, 0x32

    cmp-long v7, p0, v7

    if-gtz v7, :cond_1b

    .line 127
    sget-object v7, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_d

    .line 128
    :cond_1b
    const-wide/16 v7, 0x3e8

    cmp-long v7, p0, v7

    if-gtz v7, :cond_2f

    .line 130
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_d

    .line 137
    :cond_2f
    const-wide/16 v7, 0x1

    long-to-double v9, p0

    const-wide v11, 0x40034413509f79ffL

    div-double/2addr v9, v11

    double-to-long v9, v9

    add-long v0, v7, v9

    .line 139
    .local v0, byteArraySize:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-lez v7, :cond_4d

    .line 140
    new-instance v7, Ljava/lang/ArithmeticException;

    invoke-direct {v7}, Ljava/lang/ArithmeticException;-><init>()V

    throw v7

    .line 142
    :cond_4d
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, p0, v7

    if-gtz v7, :cond_62

    .line 144
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_d

    .line 153
    :cond_62
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 154
    .local v5, powerOfFive:Ljava/math/BigInteger;
    move-object v6, v5

    .line 155
    .local v6, res:Ljava/math/BigInteger;
    const-wide/32 v7, 0x7fffffff

    sub-long v3, p0, v7

    .line 157
    .local v3, longExp:J
    const-wide/32 v7, 0x7fffffff

    rem-long v7, p0, v7

    long-to-int v2, v7

    .line 158
    :goto_7a
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v3, v7

    if-lez v7, :cond_8a

    .line 159
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 160
    const-wide/32 v7, 0x7fffffff

    sub-long/2addr v3, v7

    goto :goto_7a

    .line 162
    :cond_8a
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 164
    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 165
    const-wide/32 v7, 0x7fffffff

    sub-long v3, p0, v7

    .line 166
    :goto_a3
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v3, v7

    if-lez v7, :cond_b6

    .line 167
    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 168
    const-wide/32 v7, 0x7fffffff

    sub-long/2addr v3, v7

    goto :goto_a3

    .line 170
    :cond_b6
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 171
    goto/16 :goto_d
.end method
