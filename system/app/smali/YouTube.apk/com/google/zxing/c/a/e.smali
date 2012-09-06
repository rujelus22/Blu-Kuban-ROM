.class public final Lcom/google/zxing/c/a/e;
.super Lcom/google/zxing/c/a/a;
.source "SourceFile"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/Vector;

.field private final o:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/google/zxing/c/a/e;->g:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/zxing/c/a/e;->h:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/google/zxing/c/a/e;->i:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/google/zxing/c/a/e;->j:[I

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/google/zxing/c/a/e;->k:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/google/zxing/c/a/e;->l:[I

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_f8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_104

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_11c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_128

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/c/a/e;->m:[[I

    return-void

    .line 36
    :array_7a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_88
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_94
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0x9bt 0xat 0x0t 0x0t
    .end array-data

    .line 39
    :array_a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xect 0x5t 0x0t 0x0t
    .end array-data

    .line 40
    :array_ae
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_bc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_c8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_ec
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_104
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_110
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_11c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_128
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/zxing/c/a/a;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/Vector;

    .line 61
    return-void
.end method

.method private a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v3, p0, Lcom/google/zxing/c/a/e;->b:[I

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 193
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 194
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 195
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 196
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 197
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 198
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 200
    if-eqz p3, :cond_62

    .line 201
    invoke-virtual {p2}, Lcom/google/zxing/c/a/c;->b()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/c/a/e;->b(Lcom/google/zxing/common/a;I[I)V

    .line 212
    :cond_2e
    if-eqz p3, :cond_81

    const/16 v0, 0x10

    .line 213
    :goto_32
    invoke-static {v3}, Lcom/google/zxing/c/a/e;->a([I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v4, v1, v2

    .line 215
    iget-object v6, p0, Lcom/google/zxing/c/a/e;->e:[I

    .line 216
    iget-object v7, p0, Lcom/google/zxing/c/a/e;->f:[I

    .line 217
    iget-object v5, p0, Lcom/google/zxing/c/a/e;->c:[F

    .line 218
    iget-object v8, p0, Lcom/google/zxing/c/a/e;->d:[F

    .line 220
    const/4 v1, 0x0

    :goto_43
    array-length v2, v3

    if-ge v1, v2, :cond_93

    .line 221
    aget v2, v3, v1

    int-to-float v2, v2

    div-float v9, v2, v4

    .line 222
    const/high16 v2, 0x3f00

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 223
    if-gtz v2, :cond_84

    .line 224
    const/4 v2, 0x1

    .line 228
    :cond_52
    :goto_52
    shr-int/lit8 v10, v1, 0x1

    .line 229
    and-int/lit8 v11, v1, 0x1

    if-nez v11, :cond_8b

    .line 230
    aput v2, v6, v10

    .line 231
    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v5, v10

    .line 220
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 203
    :cond_62
    invoke-virtual {p2}, Lcom/google/zxing/c/a/c;->b()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;I[I)V

    .line 205
    const/4 v1, 0x0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_72
    if-ge v1, v0, :cond_2e

    .line 206
    aget v2, v3, v1

    .line 207
    aget v4, v3, v0

    aput v4, v3, v1

    .line 208
    aput v2, v3, v0

    .line 205
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_72

    .line 212
    :cond_81
    const/16 v0, 0xf

    goto :goto_32

    .line 225
    :cond_84
    const/16 v10, 0x8

    if-le v2, v10, :cond_52

    .line 226
    const/16 v2, 0x8

    goto :goto_52

    .line 233
    :cond_8b
    aput v2, v7, v10

    .line 234
    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v8, v10

    goto :goto_5f

    .line 238
    :cond_93
    iget-object v1, p0, Lcom/google/zxing/c/a/e;->e:[I

    invoke-static {v1}, Lcom/google/zxing/c/a/e;->a([I)I

    move-result v8

    iget-object v1, p0, Lcom/google/zxing/c/a/e;->f:[I

    invoke-static {v1}, Lcom/google/zxing/c/a/e;->a([I)I

    move-result v9

    add-int v1, v8, v9

    sub-int v10, v1, v0

    and-int/lit8 v1, v8, 0x1

    if-eqz p3, :cond_cf

    const/4 v0, 0x1

    :goto_a8
    if-ne v1, v0, :cond_d1

    const/4 v0, 0x1

    move v5, v0

    :goto_ac
    and-int/lit8 v0, v9, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d4

    const/4 v0, 0x1

    move v4, v0

    :goto_b3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_e1

    const/16 v11, 0xc

    if-le v8, v11, :cond_d7

    const/4 v2, 0x1

    :cond_be
    :goto_be
    const/16 v11, 0xc

    if-le v9, v11, :cond_dc

    const/4 v0, 0x1

    :cond_c3
    :goto_c3
    const/4 v11, 0x1

    if-ne v10, v11, :cond_109

    if-eqz v5, :cond_100

    if-eqz v4, :cond_f6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_cf
    const/4 v0, 0x0

    goto :goto_a8

    :cond_d1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_ac

    :cond_d4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_b3

    :cond_d7
    const/4 v11, 0x4

    if-ge v8, v11, :cond_be

    const/4 v3, 0x1

    goto :goto_be

    :cond_dc
    const/4 v11, 0x4

    if-ge v9, v11, :cond_c3

    const/4 v1, 0x1

    goto :goto_c3

    :cond_e1
    const/16 v11, 0xb

    if-le v8, v11, :cond_ec

    const/4 v2, 0x1

    :cond_e6
    :goto_e6
    const/16 v11, 0xa

    if-le v9, v11, :cond_f1

    const/4 v0, 0x1

    goto :goto_c3

    :cond_ec
    const/4 v11, 0x5

    if-ge v8, v11, :cond_e6

    const/4 v3, 0x1

    goto :goto_e6

    :cond_f1
    const/4 v11, 0x4

    if-ge v9, v11, :cond_c3

    const/4 v1, 0x1

    goto :goto_c3

    :cond_f6
    const/4 v2, 0x1

    :cond_f7
    :goto_f7
    if-eqz v3, :cond_146

    if-eqz v2, :cond_13f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_100
    if-nez v4, :cond_107

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_107
    const/4 v0, 0x1

    goto :goto_f7

    :cond_109
    const/4 v11, -0x1

    if-ne v10, v11, :cond_120

    if-eqz v5, :cond_117

    if-eqz v4, :cond_115

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_115
    const/4 v3, 0x1

    goto :goto_f7

    :cond_117
    if-nez v4, :cond_11e

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11e
    const/4 v1, 0x1

    goto :goto_f7

    :cond_120
    if-nez v10, :cond_13a

    if-eqz v5, :cond_133

    if-nez v4, :cond_12b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12b
    if-ge v8, v9, :cond_130

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto :goto_f7

    :cond_130
    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_f7

    :cond_133
    if-eqz v4, :cond_f7

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13f
    iget-object v3, p0, Lcom/google/zxing/c/a/e;->e:[I

    iget-object v4, p0, Lcom/google/zxing/c/a/e;->c:[F

    invoke-static {v3, v4}, Lcom/google/zxing/c/a/e;->a([I[F)V

    :cond_146
    if-eqz v2, :cond_14f

    iget-object v2, p0, Lcom/google/zxing/c/a/e;->e:[I

    iget-object v3, p0, Lcom/google/zxing/c/a/e;->c:[F

    invoke-static {v2, v3}, Lcom/google/zxing/c/a/e;->b([I[F)V

    :cond_14f
    if-eqz v1, :cond_15f

    if-eqz v0, :cond_158

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_158
    iget-object v1, p0, Lcom/google/zxing/c/a/e;->f:[I

    iget-object v2, p0, Lcom/google/zxing/c/a/e;->c:[F

    invoke-static {v1, v2}, Lcom/google/zxing/c/a/e;->a([I[F)V

    :cond_15f
    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/google/zxing/c/a/e;->f:[I

    iget-object v1, p0, Lcom/google/zxing/c/a/e;->d:[F

    invoke-static {v0, v1}, Lcom/google/zxing/c/a/e;->b([I[F)V

    .line 240
    :cond_168
    const/4 v2, 0x0

    .line 241
    const/4 v1, 0x0

    .line 242
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    :goto_16f
    if-ltz v0, :cond_17e

    .line 243
    mul-int/lit8 v1, v3, 0x9

    .line 244
    aget v2, v6, v0

    add-int/2addr v1, v2

    .line 245
    aget v2, v6, v0

    add-int/2addr v2, v4

    .line 242
    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    goto :goto_16f

    .line 247
    :cond_17e
    const/4 v1, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_183
    if-ltz v2, :cond_190

    .line 250
    mul-int/lit8 v1, v1, 0x9

    .line 251
    aget v5, v7, v2

    add-int/2addr v1, v5

    .line 252
    aget v5, v7, v2

    add-int/2addr v0, v5

    .line 249
    add-int/lit8 v2, v2, -0x1

    goto :goto_183

    .line 254
    :cond_190
    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    .line 256
    if-eqz p3, :cond_1ca

    .line 257
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_1a0

    const/16 v0, 0xc

    if-gt v4, v0, :cond_1a0

    const/4 v0, 0x4

    if-ge v4, v0, :cond_1a5

    .line 258
    :cond_1a0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 260
    :cond_1a5
    rsub-int/lit8 v0, v4, 0xc

    div-int/lit8 v0, v0, 0x2

    .line 261
    sget-object v2, Lcom/google/zxing/c/a/e;->k:[I

    aget v2, v2, v0

    .line 262
    rsub-int/lit8 v3, v2, 0x9

    .line 263
    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Lcom/google/zxing/c/a/f;->a([IIZ)I

    move-result v2

    .line 264
    const/4 v4, 0x1

    invoke-static {v7, v3, v4}, Lcom/google/zxing/c/a/f;->a([IIZ)I

    move-result v3

    .line 265
    sget-object v4, Lcom/google/zxing/c/a/e;->g:[I

    aget v4, v4, v0

    .line 266
    sget-object v5, Lcom/google/zxing/c/a/e;->i:[I

    aget v5, v5, v0

    .line 267
    new-instance v0, Lcom/google/zxing/c/a/b;

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/c/a/b;-><init>(II)V

    .line 279
    :goto_1c9
    return-object v0

    .line 269
    :cond_1ca
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1d5

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1d5

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1da

    .line 270
    :cond_1d5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 272
    :cond_1da
    rsub-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x2

    .line 273
    sget-object v2, Lcom/google/zxing/c/a/e;->l:[I

    aget v2, v2, v0

    .line 274
    rsub-int/lit8 v3, v2, 0x9

    .line 275
    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Lcom/google/zxing/c/a/f;->a([IIZ)I

    move-result v2

    .line 276
    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Lcom/google/zxing/c/a/f;->a([IIZ)I

    move-result v3

    .line 277
    sget-object v4, Lcom/google/zxing/c/a/e;->h:[I

    aget v4, v4, v0

    .line 278
    sget-object v5, Lcom/google/zxing/c/a/e;->j:[I

    aget v5, v5, v0

    .line 279
    new-instance v0, Lcom/google/zxing/c/a/b;

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/c/a/b;-><init>(II)V

    goto :goto_1c9
.end method

.method private a(Lcom/google/zxing/common/a;ZILjava/util/Hashtable;)Lcom/google/zxing/c/a/d;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v1, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/google/zxing/c/a/e;->a:[I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x3

    const/4 v2, 0x0

    aput v2, v5, v0

    iget v6, p1, Lcom/google/zxing/common/a;->b:I

    const/4 v0, 0x0

    :goto_16
    if-ge v1, v6, :cond_26

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1f
    if-eq p2, v0, :cond_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f

    :cond_26
    const/4 v2, 0x0

    move v4, v1

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2b
    if-ge v4, v6, :cond_9e

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_44

    aget v3, v5, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v0

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_3d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v8, v1

    move v1, v2

    move v2, v8

    goto :goto_2b

    :cond_44
    const/4 v3, 0x3

    if-ne v0, v3, :cond_97

    invoke-static {v5}, Lcom/google/zxing/c/a/e;->b([I)Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v4, v6, v0

    .line 163
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    :goto_62
    if-ltz v0, :cond_a6

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_a6

    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    .line 162
    :cond_6e
    const/4 v3, 0x0

    aget v3, v5, v3

    const/4 v7, 0x1

    aget v7, v5, v7

    add-int/2addr v3, v7

    add-int/2addr v3, v1

    const/4 v1, 0x0

    const/4 v7, 0x2

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x1

    const/4 v7, 0x3

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x2

    const/4 v7, 0x0

    aput v7, v5, v1

    const/4 v1, 0x3

    const/4 v7, 0x0

    aput v7, v5, v1

    add-int/lit8 v1, v0, -0x1

    :goto_8c
    const/4 v0, 0x1

    aput v0, v5, v1

    if-nez v2, :cond_9c

    const/4 v0, 0x1

    :goto_92
    move v2, v3

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_3d

    :cond_97
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_8c

    :cond_9c
    const/4 v0, 0x0

    goto :goto_92

    :cond_9e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 183
    :catch_a3
    move-exception v0

    const/4 v0, 0x0

    :goto_a5
    return-object v0

    .line 163
    :cond_a6
    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int v1, v0, v5

    iget-object v2, p0, Lcom/google/zxing/c/a/e;->a:[I

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_b2
    if-lez v0, :cond_bd

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b2

    :cond_bd
    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v0, Lcom/google/zxing/c/a/e;->m:[[I

    invoke-static {v2, v0}, Lcom/google/zxing/c/a/e;->a([I[[I)I

    move-result v1

    const/4 v0, 0x1

    aget v4, v6, v0

    if-eqz p2, :cond_13e

    iget v0, p1, Lcom/google/zxing/common/a;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v5

    iget v0, p1, Lcom/google/zxing/common/a;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :goto_d7
    new-instance v0, Lcom/google/zxing/c/a/c;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v7, 0x0

    aput v5, v2, v7

    const/4 v5, 0x1

    const/4 v7, 0x1

    aget v7, v6, v7

    aput v7, v2, v5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/c/a/c;-><init>(I[IIII)V

    .line 165
    if-nez p4, :cond_134

    const/4 v1, 0x0

    move-object v2, v1

    .line 168
    :goto_ed
    if-eqz v2, :cond_10c

    .line 169
    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v3, 0x1

    aget v3, v6, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 170
    if-eqz p2, :cond_103

    .line 172
    iget v3, p1, Lcom/google/zxing/common/a;->b:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float v1, v3, v1

    .line 174
    :cond_103
    new-instance v3, Lcom/google/zxing/j;

    int-to-float v4, p3

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 177
    :cond_10c
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;

    move-result-object v2

    .line 178
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;

    move-result-object v3

    .line 179
    new-instance v1, Lcom/google/zxing/c/a/d;

    invoke-virtual {v2}, Lcom/google/zxing/c/a/b;->a()I

    move-result v4

    mul-int/lit16 v4, v4, 0x63d

    invoke-virtual {v3}, Lcom/google/zxing/c/a/b;->a()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/c/a/b;->b()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/zxing/c/a/b;->b()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-direct {v1, v4, v2, v0}, Lcom/google/zxing/c/a/d;-><init>(IILcom/google/zxing/c/a/c;)V

    move-object v0, v1

    goto/16 :goto_a5

    .line 165
    :cond_134
    sget-object v1, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {p4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/k;
    :try_end_13c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_13c} :catch_a3

    move-object v2, v1

    goto :goto_ed

    :cond_13e
    move v3, v5

    goto :goto_d7
.end method

.method private static a(Ljava/util/Vector;Lcom/google/zxing/c/a/d;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p1, :cond_3

    .line 105
    :cond_2
    :goto_2
    return-void

    .line 92
    :cond_3
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 93
    const/4 v1, 0x0

    .line 94
    :cond_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 95
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/c/a/d;

    .line 96
    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/c/a/d;->a()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 97
    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->e()V

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_22
    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_28
    move v0, v1

    goto :goto_22
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p2, v3, p1, p3}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;ZILjava/util/Hashtable;)Lcom/google/zxing/c/a/d;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/google/zxing/c/a/e;->a(Ljava/util/Vector;Lcom/google/zxing/c/a/d;)V

    .line 66
    invoke-virtual {p2}, Lcom/google/zxing/common/a;->a()V

    .line 67
    invoke-direct {p0, p2, v6, p1, p3}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;ZILjava/util/Hashtable;)Lcom/google/zxing/c/a/d;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/google/zxing/c/a/e;->a(Ljava/util/Vector;Lcom/google/zxing/c/a/d;)V

    .line 69
    invoke-virtual {p2}, Lcom/google/zxing/common/a;->a()V

    .line 70
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    .line 71
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    move v5, v3

    .line 72
    :goto_27
    if-ge v5, v7, :cond_119

    .line 73
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/c/a/d;

    .line 74
    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->d()I

    move-result v1

    if-le v1, v6, :cond_114

    move v4, v3

    .line 75
    :goto_38
    if-ge v4, v8, :cond_114

    .line 76
    iget-object v1, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/c/a/d;

    .line 77
    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->d()I

    move-result v2

    if-le v2, v6, :cond_10f

    .line 78
    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/c/a/c;->a()I

    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/c/a/c;->a()I

    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->b()I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    add-int/2addr v2, v9

    rem-int/lit8 v9, v2, 0x4f

    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/c/a/c;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/c/a/c;->a()I

    move-result v10

    add-int/2addr v2, v10

    const/16 v10, 0x48

    if-le v2, v10, :cond_7c

    add-int/lit8 v2, v2, -0x1

    :cond_7c
    const/16 v10, 0x8

    if-le v2, v10, :cond_82

    add-int/lit8 v2, v2, -0x1

    :cond_82
    if-ne v9, v2, :cond_b1

    move v2, v6

    :goto_85
    if-eqz v2, :cond_10f

    .line 79
    const-wide/32 v4, 0x453af5

    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->a()I

    move-result v2

    int-to-long v7, v2

    mul-long/2addr v4, v7

    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->a()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v2, 0xe

    invoke-direct {v7, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xd

    :goto_a7
    if-lez v2, :cond_b3

    const/16 v5, 0x30

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_a7

    :cond_b1
    move v2, v3

    .line 78
    goto :goto_85

    .line 79
    :cond_b3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v3

    move v5, v3

    :goto_b8
    const/16 v2, 0xd

    if-ge v4, v2, :cond_cd

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    and-int/lit8 v8, v4, 0x1

    if-nez v8, :cond_c8

    mul-int/lit8 v2, v2, 0x3

    :cond_c8
    add-int/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b8

    :cond_cd
    rem-int/lit8 v2, v5, 0xa

    rsub-int/lit8 v2, v2, 0xa

    const/16 v4, 0xa

    if-ne v2, v4, :cond_d6

    move v2, v3

    :cond_d6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/c/a/c;->c()[Lcom/google/zxing/j;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/zxing/c/a/d;->c()Lcom/google/zxing/c/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/c/a/c;->c()[Lcom/google/zxing/j;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/h;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/j;

    aget-object v8, v0, v3

    aput-object v8, v7, v3

    aget-object v0, v0, v6

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aget-object v3, v1, v3

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aget-object v1, v1, v6

    aput-object v1, v7, v0

    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-direct {v2, v4, v5, v7, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v2

    .line 75
    :cond_10f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_38

    .line 72
    :cond_114
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_27

    .line 85
    :cond_119
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 110
    return-void
.end method
