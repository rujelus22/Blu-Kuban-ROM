.class final Lcom/google/zxing/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/zxing/d/a/b;->a:[C

    .line 58
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_94

    sput-object v0, Lcom/google/zxing/d/a/b;->b:[C

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000000000000000000000000000000001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "000000000000000000000000000000000000000000900"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "000000000000000000000000000000000000000810000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000000000000000000000000000000000000729000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "000000000000000000000000000000000656100000000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "000000000000000000000000000000590490000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000000000000000000000000000531441000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000000000000000000000000478296900000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "000000000000000000000430467210000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "000000000000000000387420489000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "000000000000000348678440100000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "000000000000313810596090000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "000000000282429536481000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "000000254186582832900000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "000228767924549610000000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "205891132094649000000000000000000000000000000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/d/a/b;->c:[Ljava/lang/String;

    return-void

    .line 54
    nop

    :array_72
    .array-data 0x2
        0x3bt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x7dt 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7et 0x0t
        0x21t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x7ct 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x27t 0x0t
    .end array-data

    .line 58
    nop

    :array_94
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x26t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
    .end array-data
.end method

.method private static a(I[IILjava/lang/StringBuffer;)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    const/16 v0, 0x385

    if-ne p0, v0, :cond_75

    .line 346
    const/4 v3, 0x0

    .line 347
    const-wide/16 v1, 0x0

    .line 348
    const/4 v0, 0x6

    new-array v5, v0, [C

    .line 349
    const/4 v0, 0x6

    new-array v6, v0, [I

    .line 350
    const/4 v0, 0x0

    .line 351
    :cond_e
    :goto_e
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_66

    if-nez v0, :cond_66

    .line 352
    add-int/lit8 v4, p2, 0x1

    aget v7, p1, p2

    .line 353
    const/16 v8, 0x384

    if-ge v7, v8, :cond_41

    .line 354
    aput v7, v6, v3

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 357
    const-wide/16 v8, 0x384

    mul-long/2addr v1, v8

    int-to-long v7, v7

    add-long/2addr v1, v7

    move p2, v4

    .line 370
    :goto_27
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_e

    if-lez v3, :cond_e

    .line 373
    const/4 v3, 0x0

    :goto_2e
    const/4 v4, 0x6

    if-ge v3, v4, :cond_61

    .line 374
    rsub-int/lit8 v4, v3, 0x5

    const-wide/16 v7, 0x100

    rem-long v7, v1, v7

    long-to-int v7, v7

    int-to-char v7, v7

    aput-char v7, v5, v4

    .line 375
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 359
    :cond_41
    const/16 v8, 0x384

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x385

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x386

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x39c

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x3a0

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x39b

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x39a

    if-ne v7, v8, :cond_da

    .line 366
    :cond_5d
    add-int/lit8 p2, v4, -0x1

    .line 367
    const/4 v0, 0x1

    goto :goto_27

    .line 377
    :cond_61
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 378
    const/4 v3, 0x0

    goto :goto_e

    .line 384
    :cond_66
    div-int/lit8 v0, v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_6a
    if-ge v0, v3, :cond_d7

    .line 385
    aget v1, v6, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 388
    :cond_75
    const/16 v0, 0x39c

    if-ne p0, v0, :cond_d7

    .line 391
    const/4 v3, 0x0

    .line 392
    const-wide/16 v0, 0x0

    .line 393
    const/4 v2, 0x0

    .line 394
    :cond_7d
    :goto_7d
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_d7

    if-nez v2, :cond_d7

    .line 395
    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    .line 396
    const/16 v6, 0x384

    if-ge v5, v6, :cond_b3

    .line 397
    add-int/lit8 v3, v3, 0x1

    .line 399
    const-wide/16 v6, 0x384

    mul-long/2addr v0, v6

    int-to-long v5, v5

    add-long/2addr v0, v5

    move p2, v4

    .line 412
    :goto_94
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_7d

    if-lez v3, :cond_7d

    .line 415
    const/4 v4, 0x6

    new-array v7, v4, [C

    .line 416
    const/4 v4, 0x0

    :goto_9e
    const/4 v5, 0x6

    if-ge v4, v5, :cond_d3

    .line 417
    rsub-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    and-long/2addr v8, v0

    long-to-int v6, v8

    int-to-char v6, v6

    aput-char v6, v7, v5

    .line 418
    const/16 v5, 0x8

    shr-long v5, v0, v5

    .line 416
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v5

    goto :goto_9e

    .line 401
    :cond_b3
    const/16 v6, 0x384

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x385

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x386

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x39c

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x3a0

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x39b

    if-eq v5, v6, :cond_cf

    const/16 v6, 0x39a

    if-ne v5, v6, :cond_d8

    .line 408
    :cond_cf
    add-int/lit8 p2, v4, -0x1

    .line 409
    const/4 v2, 0x1

    goto :goto_94

    .line 420
    :cond_d3
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_7d

    .line 424
    :cond_d7
    return p2

    :cond_d8
    move p2, v4

    goto :goto_94

    :cond_da
    move p2, v4

    goto/16 :goto_27
.end method

.method private static a([IILjava/lang/StringBuffer;)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 138
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v6, v0, [I

    .line 140
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_10
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge p1, v2, :cond_4f

    if-nez v0, :cond_4f

    .line 143
    add-int/lit8 v2, p1, 0x1

    aget v3, p0, p1

    .line 144
    const/16 v4, 0x384

    if-ge v3, v4, :cond_2d

    .line 145
    div-int/lit8 v4, v3, 0x1e

    aput v4, v5, v1

    .line 146
    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v3, v3, 0x1e

    aput v3, v5, v4

    .line 147
    add-int/lit8 v1, v1, 0x2

    move p1, v2

    goto :goto_10

    .line 149
    :cond_2d
    sparse-switch v3, :sswitch_data_146

    move p1, v2

    goto :goto_10

    .line 151
    :sswitch_32
    add-int/lit8 p1, v2, -0x1

    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_10

    .line 155
    :sswitch_36
    add-int/lit8 p1, v2, -0x1

    .line 156
    const/4 v0, 0x1

    .line 157
    goto :goto_10

    .line 159
    :sswitch_3a
    add-int/lit8 p1, v2, -0x1

    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_10

    .line 169
    :sswitch_3e
    const/16 v3, 0x391

    aput v3, v5, v1

    .line 170
    add-int/lit8 p1, v2, 0x1

    aget v2, p0, v2

    .line 171
    aput v2, v6, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    goto :goto_10

    .line 175
    :sswitch_4b
    add-int/lit8 p1, v2, -0x1

    .line 176
    const/4 v0, 0x1

    goto :goto_10

    .line 181
    :cond_4f
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_53
    if-ge v4, v1, :cond_141

    aget v7, v5, v4

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_15c

    :cond_5b
    :goto_5b
    if-eqz v0, :cond_60

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_60
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_53

    :pswitch_64
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_6c

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    goto :goto_5b

    :cond_6c
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_73

    const/16 v0, 0x20

    goto :goto_5b

    :cond_73
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_79

    const/4 v3, 0x1

    goto :goto_5b

    :cond_79
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_7f

    const/4 v3, 0x2

    goto :goto_5b

    :cond_7f
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_88

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_5b

    :cond_88
    const/16 v8, 0x391

    if-ne v7, v8, :cond_5b

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    :pswitch_93
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_9b

    add-int/lit8 v0, v7, 0x61

    int-to-char v0, v0

    goto :goto_5b

    :cond_9b
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_a2

    const/16 v0, 0x20

    goto :goto_5b

    :cond_a2
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_ab

    const/4 v2, 0x4

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_5b

    :cond_ab
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_b1

    const/4 v3, 0x2

    goto :goto_5b

    :cond_b1
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_ba

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_5b

    :cond_ba
    const/16 v8, 0x391

    if-ne v7, v8, :cond_5b

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    :pswitch_c5
    const/16 v8, 0x19

    if-ge v7, v8, :cond_ce

    sget-object v0, Lcom/google/zxing/d/a/b;->b:[C

    aget-char v0, v0, v7

    goto :goto_5b

    :cond_ce
    const/16 v8, 0x19

    if-ne v7, v8, :cond_d4

    const/4 v3, 0x3

    goto :goto_5b

    :cond_d4
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_db

    const/16 v0, 0x20

    goto :goto_5b

    :cond_db
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_e2

    const/4 v3, 0x1

    goto/16 :goto_5b

    :cond_e2
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_e9

    const/4 v3, 0x0

    goto/16 :goto_5b

    :cond_e9
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_f3

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto/16 :goto_5b

    :cond_f3
    const/16 v8, 0x391

    if-ne v7, v8, :cond_5b

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5b

    :pswitch_ff
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_109

    sget-object v0, Lcom/google/zxing/d/a/b;->a:[C

    aget-char v0, v0, v7

    goto/16 :goto_5b

    :cond_109
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_110

    const/4 v3, 0x0

    goto/16 :goto_5b

    :cond_110
    const/16 v8, 0x391

    if-ne v7, v8, :cond_5b

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5b

    :pswitch_11c
    const/16 v3, 0x1a

    if-ge v7, v3, :cond_126

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    move v3, v2

    goto/16 :goto_5b

    :cond_126
    const/16 v3, 0x1a

    if-ne v7, v3, :cond_142

    const/16 v0, 0x20

    move v3, v2

    goto/16 :goto_5b

    :pswitch_12f
    const/16 v3, 0x1d

    if-ge v7, v3, :cond_13a

    sget-object v0, Lcom/google/zxing/d/a/b;->a:[C

    aget-char v0, v0, v7

    move v3, v2

    goto/16 :goto_5b

    :cond_13a
    const/16 v3, 0x1d

    if-ne v7, v3, :cond_142

    const/4 v3, 0x0

    goto/16 :goto_5b

    .line 182
    :cond_141
    return p1

    :cond_142
    move v3, v2

    goto/16 :goto_5b

    .line 149
    nop

    :sswitch_data_146
    .sparse-switch
        0x384 -> :sswitch_32
        0x385 -> :sswitch_36
        0x386 -> :sswitch_3a
        0x391 -> :sswitch_3e
        0x39c -> :sswitch_4b
    .end sparse-switch

    .line 181
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_64
        :pswitch_93
        :pswitch_c5
        :pswitch_ff
        :pswitch_11c
        :pswitch_12f
    .end packed-switch
.end method

.method static a([I)Lcom/google/zxing/common/g;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 86
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x2

    aget v0, p0, v0

    .line 90
    :goto_c
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v1, v3, :cond_40

    .line 91
    sparse-switch v0, :sswitch_data_4a

    .line 111
    add-int/lit8 v0, v1, -0x1

    .line 112
    invoke-static {p0, v0, v2}, Lcom/google/zxing/d/a/b;->a([IILjava/lang/StringBuffer;)I

    move-result v0

    .line 115
    :goto_1a
    array-length v1, p0

    if-ge v0, v1, :cond_3b

    .line 116
    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    goto :goto_c

    .line 93
    :sswitch_22
    invoke-static {p0, v1, v2}, Lcom/google/zxing/d/a/b;->a([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1a

    .line 96
    :sswitch_27
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/d/a/b;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1a

    .line 99
    :sswitch_2c
    invoke-static {p0, v1, v2}, Lcom/google/zxing/d/a/b;->b([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1a

    .line 102
    :sswitch_31
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/d/a/b;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1a

    .line 105
    :sswitch_36
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/d/a/b;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1a

    .line 118
    :cond_3b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 121
    :cond_40
    new-instance v0, Lcom/google/zxing/common/g;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, v4, v4}, Lcom/google/zxing/common/g;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v0

    .line 91
    :sswitch_data_4a
    .sparse-switch
        0x384 -> :sswitch_22
        0x385 -> :sswitch_27
        0x386 -> :sswitch_2c
        0x391 -> :sswitch_31
        0x39c -> :sswitch_36
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 589
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 590
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 591
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 592
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 594
    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 597
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    move v2, v1

    :goto_2b
    if-ltz v0, :cond_9f

    .line 599
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 600
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 607
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 610
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 612
    add-int v8, v6, v7

    add-int/2addr v8, v2

    rem-int/lit16 v8, v8, 0x3e8

    .line 613
    add-int/2addr v6, v7

    add-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    .line 615
    add-int/lit8 v6, v0, 0x2

    rem-int/lit8 v7, v8, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 616
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v7, v8, 0xa

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 617
    div-int/lit8 v6, v8, 0x64

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 597
    add-int/lit8 v0, v0, -0x3

    goto :goto_2b

    .line 619
    :cond_9f
    return-object v5
.end method

.method private static b([IILjava/lang/StringBuffer;)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    const/4 v0, 0x0

    .line 439
    const/16 v2, 0xf

    new-array v7, v2, [I

    .line 441
    :cond_6
    :goto_6
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge p1, v2, :cond_113

    if-nez v0, :cond_113

    .line 442
    add-int/lit8 v2, p1, 0x1

    aget v3, p0, p1

    .line 443
    const/4 v4, 0x0

    aget v4, p0, v4

    if-ne v2, v4, :cond_17

    .line 444
    const/4 v0, 0x1

    .line 446
    :cond_17
    const/16 v4, 0x384

    if-ge v3, v4, :cond_52

    .line 447
    aput v3, v7, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    .line 460
    :goto_20
    rem-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_2a

    const/16 v2, 0x386

    if-eq v3, v2, :cond_2a

    if-eqz v0, :cond_6

    .line 467
    :cond_2a
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    :goto_2e
    if-ge v5, v1, :cond_ea

    sget-object v2, Lcom/google/zxing/d/a/b;->c:[Ljava/lang/String;

    sub-int v3, v1, v5

    add-int/lit8 v3, v3, -0x1

    aget-object v8, v2, v3

    aget v4, v7, v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_44
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_6e

    const/16 v9, 0x30

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 450
    :cond_52
    const/16 v4, 0x384

    if-eq v3, v4, :cond_6a

    const/16 v4, 0x385

    if-eq v3, v4, :cond_6a

    const/16 v4, 0x39c

    if-eq v3, v4, :cond_6a

    const/16 v4, 0x3a0

    if-eq v3, v4, :cond_6a

    const/16 v4, 0x39b

    if-eq v3, v4, :cond_6a

    const/16 v4, 0x39a

    if-ne v3, v4, :cond_116

    .line 456
    :cond_6a
    add-int/lit8 p1, v2, -0x1

    .line 457
    const/4 v0, 0x1

    goto :goto_20

    .line 467
    :cond_6e
    div-int/lit8 v9, v4, 0x64

    div-int/lit8 v2, v4, 0xa

    rem-int/lit8 v10, v2, 0xa

    rem-int/lit8 v4, v4, 0xa

    const/4 v2, 0x0

    :goto_77
    if-ge v2, v4, :cond_84

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/google/zxing/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_84
    const/4 v2, 0x0

    :goto_85
    if-ge v2, v10, :cond_aa

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v11, 0x30

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_aa
    const/4 v2, 0x0

    move v12, v2

    move-object v2, v3

    move v3, v12

    :goto_ae
    if-ge v3, v9, :cond_d5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v10, "00"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/zxing/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_ae

    :cond_d5
    if-nez v6, :cond_dd

    :goto_d7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v6, v2

    goto/16 :goto_2e

    :cond_dd
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/zxing/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_d7

    :cond_ea
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_ec
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_114

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_110

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_104
    if-nez v1, :cond_10a

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    :cond_10a
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 467
    :cond_110
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 472
    :cond_113
    return p1

    :cond_114
    move-object v1, v2

    goto :goto_104

    :cond_116
    move p1, v2

    goto/16 :goto_20
.end method
