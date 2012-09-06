.class public abstract Lcom/google/zxing/c/n;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I


# instance fields
.field private final a:Ljava/lang/StringBuffer;

.field private final f:Lcom/google/zxing/c/m;

.field private final g:Lcom/google/zxing/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 52
    new-array v2, v6, [I

    fill-array-data v2, :array_a0

    sput-object v2, Lcom/google/zxing/c/n;->b:[I

    .line 57
    new-array v2, v7, [I

    fill-array-data v2, :array_aa

    sput-object v2, Lcom/google/zxing/c/n;->c:[I

    .line 62
    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_b8

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_c4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_d0

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_dc

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_e8

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_f4

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_100

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_10c

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_118

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_124

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/c/n;->d:[[I

    .line 81
    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lcom/google/zxing/c/n;->e:[[I

    move v2, v1

    .line 82
    :goto_6d
    if-ge v2, v0, :cond_7a

    .line 83
    sget-object v3, Lcom/google/zxing/c/n;->e:[[I

    sget-object v4, Lcom/google/zxing/c/n;->d:[[I

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_7a
    move v2, v0

    .line 85
    :goto_7b
    const/16 v0, 0x14

    if-ge v2, v0, :cond_9f

    .line 86
    sget-object v0, Lcom/google/zxing/c/n;->d:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    .line 87
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 88
    :goto_89
    array-length v5, v3

    if-ge v0, v5, :cond_97

    .line 89
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 91
    :cond_97
    sget-object v0, Lcom/google/zxing/c/n;->e:[[I

    aput-object v4, v0, v2

    .line 85
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7b

    .line 93
    :cond_9f
    return-void

    .line 52
    :array_a0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_aa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_b8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_dc
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_f4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_100
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_10c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_118
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_124
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/c/n;->a:Ljava/lang/StringBuffer;

    .line 101
    new-instance v0, Lcom/google/zxing/c/m;

    invoke-direct {v0}, Lcom/google/zxing/c/m;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/n;->f:Lcom/google/zxing/c/m;

    .line 102
    new-instance v0, Lcom/google/zxing/c/g;

    invoke-direct {v0}, Lcom/google/zxing/c/g;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/n;->g:Lcom/google/zxing/c/g;

    .line 103
    return-void
.end method

.method static a(Lcom/google/zxing/common/a;[II[[I)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-static {p0, p2, p1}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;I[I)V

    .line 317
    const/16 v3, 0x6b

    .line 318
    const/4 v0, -0x1

    .line 319
    array-length v4, p3

    .line 320
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_19

    .line 321
    aget-object v2, p3, v1

    .line 322
    const/16 v5, 0xb3

    invoke-static {p1, v2, v5}, Lcom/google/zxing/c/n;->a([I[II)I

    move-result v2

    .line 323
    if-ge v2, v3, :cond_21

    move v0, v1

    .line 320
    :goto_15
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_8

    .line 328
    :cond_19
    if-ltz v0, :cond_1c

    .line 329
    return v0

    .line 331
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_21
    move v2, v3

    goto :goto_15
.end method

.method static a(Lcom/google/zxing/common/a;)[I
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x0

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 109
    :cond_5
    :goto_5
    if-nez v0, :cond_1d

    .line 110
    sget-object v3, Lcom/google/zxing/c/n;->b:[I

    invoke-static {p0, v1, v2, v3}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v3

    .line 111
    aget v4, v3, v2

    .line 112
    const/4 v1, 0x1

    aget v1, v3, v1

    .line 116
    sub-int v5, v1, v4

    sub-int v5, v4, v5

    .line 117
    if-ltz v5, :cond_5

    .line 118
    invoke-virtual {p0, v5, v4, v2}, Lcom/google/zxing/common/a;->a(IIZ)Z

    move-result v0

    goto :goto_5

    .line 121
    :cond_1d
    return-object v3
.end method

.method static a(Lcom/google/zxing/common/a;IZ[I)[I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    array-length v5, p3

    .line 263
    new-array v6, v5, [I

    .line 264
    iget v7, p0, Lcom/google/zxing/common/a;->b:I

    .line 265
    const/4 v0, 0x0

    move v1, p1

    .line 266
    :goto_7
    if-ge v1, v7, :cond_17

    .line 267
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 268
    :goto_10
    if-eq p2, v0, :cond_17

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 267
    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    .line 274
    :cond_17
    const/4 v2, 0x0

    move v4, v1

    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    .line 276
    :goto_1d
    if-ge v4, v7, :cond_74

    .line 277
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    .line 278
    xor-int/2addr v3, v2

    if-eqz v3, :cond_30

    .line 279
    aget v3, v6, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v1

    .line 276
    :goto_2c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1d

    .line 281
    :cond_30
    add-int/lit8 v3, v5, -0x1

    if-ne v1, v3, :cond_6f

    .line 282
    const/16 v3, 0xb3

    invoke-static {v6, p3, v3}, Lcom/google/zxing/c/n;->a([I[II)I

    move-result v3

    const/16 v8, 0x6b

    if-ge v3, v8, :cond_48

    .line 283
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v4, v1, v0

    return-object v1

    .line 285
    :cond_48
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    .line 286
    const/4 v3, 0x2

    :goto_51
    if-ge v3, v5, :cond_5c

    .line 287
    add-int/lit8 v8, v3, -0x2

    aget v9, v6, v3

    aput v9, v6, v8

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 289
    :cond_5c
    add-int/lit8 v3, v5, -0x2

    const/4 v8, 0x0

    aput v8, v6, v3

    .line 290
    add-int/lit8 v3, v5, -0x1

    const/4 v8, 0x0

    aput v8, v6, v3

    .line 291
    add-int/lit8 v1, v1, -0x1

    .line 295
    :goto_68
    const/4 v3, 0x1

    aput v3, v6, v1

    .line 296
    if-nez v2, :cond_72

    const/4 v2, 0x1

    goto :goto_2c

    .line 293
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 296
    :cond_72
    const/4 v2, 0x0

    goto :goto_2c

    .line 299
    :cond_74
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I
.end method

.method public a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static {p2}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/c/n;->a(ILcom/google/zxing/common/a;[ILjava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/zxing/common/a;[ILjava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p4, :cond_62

    const/4 v0, 0x0

    .line 140
    :goto_3
    if-eqz v0, :cond_19

    .line 141
    new-instance v1, Lcom/google/zxing/j;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 146
    :cond_19
    iget-object v1, p0, Lcom/google/zxing/c/n;->a:Ljava/lang/StringBuffer;

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 148
    invoke-virtual {p0, p2, p3, v1}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I

    move-result v2

    .line 150
    if-eqz v0, :cond_2f

    .line 151
    new-instance v3, Lcom/google/zxing/j;

    int-to-float v4, v2

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 156
    :cond_2f
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;I)[I

    move-result-object v2

    .line 158
    if-eqz v0, :cond_49

    .line 159
    new-instance v3, Lcom/google/zxing/j;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 167
    :cond_49
    const/4 v0, 0x1

    aget v0, v2, v0

    .line 168
    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v0

    .line 169
    iget v4, p2, Lcom/google/zxing/common/a;->b:I

    if-ge v3, v4, :cond_5d

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v3, v4}, Lcom/google/zxing/common/a;->a(IIZ)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 170
    :cond_5d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 137
    :cond_62
    sget-object v0, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {p4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/k;

    goto :goto_3

    .line 173
    :cond_6b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/zxing/c/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 175
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 178
    :cond_7a
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v3, 0x0

    aget v3, p3, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 179
    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 180
    invoke-virtual {p0}, Lcom/google/zxing/c/n;->b()Lcom/google/zxing/a;

    move-result-object v4

    .line 181
    new-instance v5, Lcom/google/zxing/h;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/j;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/j;

    int-to-float v10, p1

    invoke-direct {v9, v1, v10}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v1, 0x1

    new-instance v8, Lcom/google/zxing/j;

    int-to-float v9, p1

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v8, v7, v1

    invoke-direct {v5, v0, v6, v7, v4}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 189
    :try_start_af
    iget-object v1, p0, Lcom/google/zxing/c/n;->f:Lcom/google/zxing/c/m;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/zxing/c/m;->a(ILcom/google/zxing/common/a;I)Lcom/google/zxing/h;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/zxing/h;->d()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/zxing/h;->a(Ljava/util/Hashtable;)V

    .line 191
    invoke-virtual {v1}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/zxing/h;->a([Lcom/google/zxing/j;)V
    :try_end_c6
    .catch Lcom/google/zxing/ReaderException; {:try_start_af .. :try_end_c6} :catch_e4

    .line 196
    :goto_c6
    sget-object v1, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    sget-object v1, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 197
    :cond_d6
    iget-object v1, p0, Lcom/google/zxing/c/n;->g:Lcom/google/zxing/c/g;

    invoke-virtual {v1, v0}, Lcom/google/zxing/c/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_e3

    .line 199
    sget-object v1, Lcom/google/zxing/i;->g:Lcom/google/zxing/i;

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 203
    :cond_e3
    return-object v5

    .line 192
    :catch_e4
    move-exception v1

    goto :goto_c6
.end method

.method a(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3f

    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_c
    if-ltz v1, :cond_21

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_18

    if-le v4, v5, :cond_1d

    :cond_18
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1d
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_c

    :cond_21
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v3, -0x1

    :goto_25
    if-ltz v1, :cond_3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_31

    if-le v3, v5, :cond_36

    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_36
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_25

    :cond_3a
    rem-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    return v0
.end method

.method a(Lcom/google/zxing/common/a;I)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/c/n;->b:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/zxing/a;
.end method
