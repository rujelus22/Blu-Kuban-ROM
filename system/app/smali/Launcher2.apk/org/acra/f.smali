.class public final Lorg/acra/f;
.super Ljava/util/EnumMap;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Lorg/acra/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 516
    const-string v0, "\n"

    sput-object v0, Lorg/acra/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    const-class v0, Lorg/acra/q;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 78
    return-void
.end method

.method private declared-synchronized a(Ljava/io/Reader;)V
    .registers 15
    .parameter

    .prologue
    .line 314
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 315
    const/16 v0, 0x28

    :try_start_6
    new-array v3, v0, [C

    .line 316
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 317
    const/4 v0, 0x1

    .line 318
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v0

    move v0, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v3

    .line 321
    :goto_16
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 322
    const/4 v8, -0x1

    if-eq v3, v8, :cond_13c

    .line 323
    int-to-char v3, v3

    .line 326
    array-length v8, v6

    if-ne v2, v8, :cond_19f

    .line 327
    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [C

    .line 328
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    :goto_2b
    const/4 v6, 0x2

    if-ne v5, v6, :cond_198

    .line 332
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 333
    if-ltz v6, :cond_42

    .line 334
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    .line 335
    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x4

    if-ge v4, v1, :cond_195

    move v1, v4

    move v4, v6

    move-object v6, v8

    .line 336
    goto :goto_16

    .line 338
    :cond_42
    const/4 v5, 0x4

    if-gt v1, v5, :cond_50

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_4d

    .line 314
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_50
    move v5, v4

    move v4, v1

    .line 342
    :goto_52
    const/4 v6, 0x0

    .line 343
    add-int/lit8 v1, v2, 0x1

    int-to-char v10, v5

    :try_start_56
    aput-char v10, v8, v2

    .line 344
    const/16 v2, 0xa

    if-eq v3, v2, :cond_60

    const/16 v2, 0x85

    if-ne v3, v2, :cond_18e

    :cond_60
    move v2, v6

    .line 345
    :goto_61
    const/4 v6, 0x1

    if-ne v2, v6, :cond_a1

    .line 349
    const/4 v2, 0x0

    .line 350
    sparse-switch v3, :sswitch_data_1a2

    .line 449
    :cond_68
    :goto_68
    const/4 v6, 0x0

    .line 450
    const/4 v7, 0x4

    if-ne v2, v7, :cond_6f

    .line 452
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 454
    :cond_6f
    add-int/lit8 v7, v1, 0x1

    aput-char v3, v8, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v7

    move v7, v6

    move-object v6, v8

    goto :goto_16

    .line 352
    :sswitch_7a
    const/4 v2, 0x3

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 353
    goto :goto_16

    .line 356
    :sswitch_82
    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 357
    goto :goto_16

    .line 359
    :sswitch_8a
    const/16 v3, 0x8

    .line 360
    goto :goto_68

    .line 362
    :sswitch_8d
    const/16 v3, 0xc

    .line 363
    goto :goto_68

    .line 365
    :sswitch_90
    const/16 v3, 0xa

    .line 366
    goto :goto_68

    .line 368
    :sswitch_93
    const/16 v3, 0xd

    .line 369
    goto :goto_68

    .line 371
    :sswitch_96
    const/16 v3, 0x9

    .line 372
    goto :goto_68

    .line 374
    :sswitch_99
    const/4 v2, 0x2

    .line 375
    const/4 v4, 0x0

    move-object v6, v8

    move v5, v2

    move v2, v1

    move v1, v4

    .line 376
    goto/16 :goto_16

    .line 379
    :cond_a1
    sparse-switch v3, :sswitch_data_1c8

    .line 432
    :cond_a4
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_133

    .line 433
    const/4 v6, 0x3

    if-ne v2, v6, :cond_ae

    .line 434
    const/4 v2, 0x5

    .line 437
    :cond_ae
    if-eqz v1, :cond_186

    if-eq v1, v0, :cond_186

    const/4 v6, 0x5

    if-eq v2, v6, :cond_186

    .line 438
    const/4 v6, -0x1

    if-ne v0, v6, :cond_133

    .line 441
    const/4 v2, 0x4

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 442
    goto/16 :goto_16

    .line 382
    :sswitch_c1
    if-eqz v7, :cond_a4

    .line 384
    :cond_c3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 385
    const/4 v6, -0x1

    if-eq v3, v6, :cond_186

    .line 386
    int-to-char v3, v3

    .line 390
    const/16 v6, 0xd

    if-eq v3, v6, :cond_186

    const/16 v6, 0xa

    if-eq v3, v6, :cond_186

    const/16 v6, 0x85

    if-ne v3, v6, :cond_c3

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 391
    goto/16 :goto_16

    .line 398
    :sswitch_df
    const/4 v3, 0x3

    if-ne v2, v3, :cond_eb

    .line 399
    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 400
    goto/16 :goto_16

    .line 405
    :cond_eb
    :sswitch_eb
    const/4 v6, 0x0

    .line 406
    const/4 v2, 0x1

    .line 407
    if-gtz v1, :cond_f3

    if-nez v1, :cond_10f

    if-nez v0, :cond_10f

    .line 408
    :cond_f3
    const/4 v3, -0x1

    if-ne v0, v3, :cond_f7

    move v0, v1

    .line 411
    :cond_f7
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v8, v7, v1}, Ljava/lang/String;-><init>([CII)V

    .line 412
    const-class v1, Lorg/acra/q;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_10f
    const/4 v0, -0x1

    .line 415
    const/4 v1, 0x0

    move v7, v2

    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    .line 416
    goto/16 :goto_16

    .line 418
    :sswitch_119
    const/4 v3, 0x4

    if-ne v2, v3, :cond_11d

    move v0, v1

    .line 421
    :cond_11d
    const/4 v2, 0x1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 422
    goto/16 :goto_16

    .line 425
    :sswitch_126
    const/4 v6, -0x1

    if-ne v0, v6, :cond_a4

    .line 426
    const/4 v2, 0x0

    move v0, v1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    .line 428
    goto/16 :goto_16

    .line 445
    :cond_133
    const/4 v6, 0x5

    if-eq v2, v6, :cond_139

    const/4 v6, 0x3

    if-ne v2, v6, :cond_68

    .line 446
    :cond_139
    const/4 v2, 0x0

    goto/16 :goto_68

    .line 456
    :cond_13c
    const/4 v3, 0x2

    if-ne v5, v3, :cond_14a

    const/4 v3, 0x4

    if-gt v1, v3, :cond_14a

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_14a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_184

    if-lez v2, :cond_184

    move v1, v2

    .line 463
    :goto_150
    if-ltz v1, :cond_182

    .line 464
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v6, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 465
    const-class v0, Lorg/acra/q;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/q;

    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    const/4 v2, 0x1

    if-ne v5, v2, :cond_17f

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_17f
    invoke-virtual {p0, v0, v1}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_182
    .catchall {:try_start_56 .. :try_end_182} :catchall_4d

    .line 472
    :cond_182
    monitor-exit p0

    return-void

    :cond_184
    move v1, v0

    goto :goto_150

    :cond_186
    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :cond_18e
    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    goto/16 :goto_16

    :cond_195
    move v5, v6

    goto/16 :goto_52

    :cond_198
    move v12, v2

    move v2, v5

    move v5, v4

    move v4, v1

    move v1, v12

    goto/16 :goto_61

    :cond_19f
    move-object v8, v6

    goto/16 :goto_2b

    .line 350
    :sswitch_data_1a2
    .sparse-switch
        0xa -> :sswitch_82
        0xd -> :sswitch_7a
        0x62 -> :sswitch_8a
        0x66 -> :sswitch_8d
        0x6e -> :sswitch_90
        0x72 -> :sswitch_93
        0x74 -> :sswitch_96
        0x75 -> :sswitch_99
        0x85 -> :sswitch_82
    .end sparse-switch

    .line 379
    :sswitch_data_1c8
    .sparse-switch
        0xa -> :sswitch_df
        0xd -> :sswitch_eb
        0x21 -> :sswitch_c1
        0x23 -> :sswitch_c1
        0x3a -> :sswitch_126
        0x3d -> :sswitch_126
        0x5c -> :sswitch_119
        0x85 -> :sswitch_eb
    .end sparse-switch
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 93
    .line 94
    if-nez p2, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_78

    .line 95
    const-string v0, "\\ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_77

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 101
    packed-switch v2, :pswitch_data_7a

    .line 115
    :pswitch_24
    const-string v3, "\\#!=:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_30

    if-eqz p2, :cond_35

    if-ne v2, v5, :cond_35

    .line 116
    :cond_30
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_35
    if-lt v2, v5, :cond_59

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_59

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 103
    :pswitch_41
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 106
    :pswitch_47
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 109
    :pswitch_4d
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 112
    :pswitch_53
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 121
    :cond_59
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 123
    :goto_63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_73

    .line 124
    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 126
    :cond_73
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 130
    :cond_77
    return-void

    :cond_78
    move v0, v1

    goto :goto_17

    .line 101
    :pswitch_data_7a
    .packed-switch 0x9
        :pswitch_41
        :pswitch_47
        :pswitch_24
        :pswitch_4d
        :pswitch_53
    .end packed-switch
.end method

.method private static a(Ljava/io/BufferedInputStream;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 269
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 270
    const/16 v2, 0x23

    if-eq v1, v2, :cond_15

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_16

    .line 282
    :cond_15
    :goto_15
    return v0

    .line 273
    :cond_16
    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 274
    const/4 v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public final a(Lorg/acra/q;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    if-nez v0, :cond_12

    iget-object v1, p0, Lorg/acra/f;->a:Lorg/acra/f;

    if-eqz v1, :cond_12

    .line 144
    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/f;

    invoke-virtual {v0, p1}, Lorg/acra/f;->a(Lorg/acra/q;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_12
    return-object v0
.end method

.method public final declared-synchronized a(Ljava/io/InputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 252
    monitor-enter p0

    if-nez p1, :cond_c

    .line 253
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 252
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 257
    invoke-static {v0}, Lorg/acra/f;->a(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 258
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 260
    if-nez v1, :cond_2c

    .line 261
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/acra/f;->a(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_9

    .line 265
    :goto_2a
    monitor-exit p0

    return-void

    .line 263
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lorg/acra/f;->a(Ljava/io/Reader;)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_9

    goto :goto_2a
.end method

.method public final declared-synchronized a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v0, "ISO8859_1"

    invoke-direct {v3, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 536
    if-eqz p2, :cond_1e

    .line 537
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lorg/acra/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 542
    :cond_1e
    invoke-virtual {p0}, Lorg/acra/f;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/q;

    invoke-virtual {v1}, Lorg/acra/q;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    const/4 v5, 0x1

    invoke-static {v2, v1, v5}, Lorg/acra/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 545
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/acra/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 547
    sget-object v0, Lorg/acra/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_60

    goto :goto_26

    .line 534
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    .line 551
    :cond_63
    :try_start_63
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 552
    monitor-exit p0

    return-void
.end method
