.class public final Lcom/google/zxing/c/a;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# static fields
.field static final a:[C

.field static final b:[I

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "0123456789-$:/.+ABCDTN"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/c/a;->a:[C

    .line 42
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/c/a;->b:[I

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/zxing/c/a;->c:[C

    return-void

    .line 42
    nop

    :array_1c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_4c
    .array-data 0x2
        0x45t 0x0t
        0x2at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x54t 0x0t
        0x4et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    return-void
.end method

.method private static a([I)C
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 219
    array-length v6, p0

    .line 222
    const v0, 0x7fffffff

    move v2, v4

    move v1, v4

    .line 223
    :goto_7
    if-ge v2, v6, :cond_18

    .line 224
    aget v3, p0, v2

    if-ge v3, v0, :cond_f

    .line 225
    aget v0, p0, v2

    .line 227
    :cond_f
    aget v3, p0, v2

    if-le v3, v1, :cond_15

    .line 228
    aget v1, p0, v2

    .line 223
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    move v5, v4

    move v2, v4

    move v3, v4

    .line 237
    :goto_1b
    if-ge v5, v6, :cond_2c

    .line 238
    aget v7, p0, v5

    if-le v7, v1, :cond_29

    .line 239
    const/4 v7, 0x1

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v5

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    .line 240
    add-int/lit8 v3, v3, 0x1

    .line 237
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 244
    :cond_2c
    const/4 v5, 0x2

    if-eq v3, v5, :cond_32

    const/4 v5, 0x3

    if-ne v3, v5, :cond_46

    :cond_32
    move v3, v4

    .line 245
    :goto_33
    sget-object v5, Lcom/google/zxing/c/a;->b:[I

    array-length v5, v5

    if-ge v3, v5, :cond_46

    .line 246
    sget-object v5, Lcom/google/zxing/c/a;->b:[I

    aget v5, v5, v3

    if-ne v5, v2, :cond_43

    .line 247
    sget-object v0, Lcom/google/zxing/c/a;->a:[C

    aget-char v0, v0, v3

    .line 253
    :goto_42
    return v0

    .line 245
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 251
    :cond_46
    add-int/lit8 v1, v1, -0x1

    .line 252
    if-gt v1, v0, :cond_18

    .line 253
    const/16 v0, 0x21

    goto :goto_42
.end method

.method private static a([CC)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p0, :cond_c

    move v0, v1

    .line 206
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 207
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_d

    .line 208
    const/4 v1, 0x1

    .line 212
    :cond_c
    return v1

    .line 206
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static a(Lcom/google/zxing/common/a;)[I
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 156
    iget v7, p0, Lcom/google/zxing/common/a;->b:I

    move v0, v5

    .line 158
    :goto_6
    if-ge v0, v7, :cond_11

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 166
    :cond_11
    const/4 v1, 0x7

    new-array v8, v1, [I

    .line 169
    array-length v9, v8

    move v2, v5

    move v1, v5

    move v6, v0

    .line 171
    :goto_18
    if-ge v6, v7, :cond_88

    .line 172
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    .line 173
    xor-int/2addr v3, v2

    if-eqz v3, :cond_33

    .line 174
    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    move v13, v2

    move v2, v1

    move v1, v0

    move v0, v13

    .line 171
    :goto_2b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v13, v1

    move v1, v2

    move v2, v0

    move v0, v13

    goto :goto_18

    .line 176
    :cond_33
    add-int/lit8 v3, v9, -0x1

    if-ne v1, v3, :cond_85

    .line 178
    :try_start_37
    sget-object v3, Lcom/google/zxing/c/a;->c:[C

    invoke-static {v8}, Lcom/google/zxing/c/a;->a([I)C

    move-result v10

    invoke-static {v3, v10}, Lcom/google/zxing/c/a;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 180
    const/4 v3, 0x0

    sub-int v10, v6, v0

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v0, v10}, Lcom/google/zxing/common/a;->a(IIZ)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 181
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v10, 0x0

    aput v0, v3, v10

    const/4 v10, 0x1

    aput v6, v3, v10
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_5e} :catch_5f

    return-object v3

    :catch_5f
    move-exception v3

    .line 187
    :cond_60
    aget v3, v8, v5

    aget v10, v8, v12

    add-int/2addr v3, v10

    add-int/2addr v0, v3

    move v3, v4

    .line 188
    :goto_67
    if-ge v3, v9, :cond_72

    .line 189
    add-int/lit8 v10, v3, -0x2

    aget v11, v8, v3

    aput v11, v8, v10

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 191
    :cond_72
    add-int/lit8 v3, v9, -0x2

    aput v5, v8, v3

    .line 192
    add-int/lit8 v3, v9, -0x1

    aput v5, v8, v3

    .line 193
    add-int/lit8 v1, v1, -0x1

    .line 197
    :goto_7c
    aput v12, v8, v1

    .line 198
    xor-int/lit8 v2, v2, 0x1

    move v13, v2

    move v2, v1

    move v1, v0

    move v0, v13

    goto :goto_2b

    .line 195
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 201
    :cond_88
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p2}, Lcom/google/zxing/c/a;->a(Lcom/google/zxing/common/a;)[I

    move-result-object v4

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v4, v0

    .line 66
    const/4 v0, 0x1

    aget v0, v4, v0

    .line 67
    iget v5, p2, Lcom/google/zxing/common/a;->b:I

    .line 70
    :goto_d
    if-ge v0, v5, :cond_18

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 74
    :cond_18
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    const/4 v1, 0x7

    new-array v7, v1, [I

    .line 79
    :goto_20
    const/4 v1, 0x0

    :goto_21
    array-length v2, v7

    if-ge v1, v2, :cond_2a

    .line 80
    const/4 v2, 0x0

    aput v2, v7, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 82
    :cond_2a
    invoke-static {p2, v0, v7}, Lcom/google/zxing/c/a;->a(Lcom/google/zxing/common/a;I[I)V

    .line 84
    invoke-static {v7}, Lcom/google/zxing/c/a;->a([I)C

    move-result v1

    .line 85
    const/16 v2, 0x21

    if-ne v1, v2, :cond_3a

    .line 86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 88
    :cond_3a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    const/4 v1, 0x0

    move v2, v0

    :goto_3f
    array-length v3, v7

    if-ge v1, v3, :cond_fd

    .line 91
    aget v3, v7, v1

    add-int/2addr v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 95
    :goto_48
    if-ge v1, v5, :cond_53

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_53

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 98
    :cond_53
    if-lt v1, v5, :cond_fa

    .line 101
    const/4 v3, 0x0

    .line 102
    const/4 v2, 0x0

    :goto_57
    array-length v8, v7

    if-ge v2, v8, :cond_60

    .line 103
    aget v8, v7, v2

    add-int/2addr v3, v8

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 106
    :cond_60
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    .line 109
    if-eq v1, v5, :cond_6e

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_6e

    .line 110
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 114
    :cond_6e
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7a

    .line 115
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 118
    :cond_7a
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 119
    sget-object v2, Lcom/google/zxing/c/a;->c:[C

    invoke-static {v2, v3}, Lcom/google/zxing/c/a;->a([CC)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 121
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 125
    :cond_8c
    const/4 v2, 0x1

    :goto_8d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v2, v5, :cond_ac

    .line 126
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_b8

    .line 128
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v5, v7, :cond_b8

    .line 129
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 136
    :cond_ac
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_bb

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 125
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 141
    :cond_bb
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 144
    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v4, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 145
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 146
    new-instance v1, Lcom/google/zxing/h;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/j;

    int-to-float v8, p1

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v2, 0x1

    new-instance v6, Lcom/google/zxing/j;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v5, v2

    sget-object v0, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v1

    :cond_fa
    move v0, v1

    goto/16 :goto_20

    :cond_fd
    move v1, v2

    goto/16 :goto_48
.end method
