.class public Ln/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/k;


# instance fields
.field private final a:Ln/am;

.field private final b:I

.field private final c:B

.field private final d:[Ln/l;

.field private final e:Ln/ah;

.field private final f:[Ljava/lang/String;

.field private final g:J

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:I

.field private final l:Lcom/google/android/maps/driveabout/vector/dg;

.field private final m:[Ln/aC;

.field private final n:I

.field private o:J


# direct methods
.method protected constructor <init>(Ln/ah;[Ljava/lang/String;Ln/am;IBI[Ljava/lang/String;[Ljava/lang/String;I[Ln/l;Lcom/google/android/maps/driveabout/vector/dg;[Ln/aC;JJ)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ln/aF;->i:[Ljava/lang/String;

    .line 95
    iput-object p1, p0, Ln/aF;->e:Ln/ah;

    .line 96
    iput-object p2, p0, Ln/aF;->f:[Ljava/lang/String;

    .line 97
    iput-object p3, p0, Ln/aF;->a:Ln/am;

    .line 98
    iput p4, p0, Ln/aF;->b:I

    .line 99
    iput-byte p5, p0, Ln/aF;->c:B

    .line 100
    iput-object p7, p0, Ln/aF;->h:[Ljava/lang/String;

    .line 101
    iput-object p8, p0, Ln/aF;->j:[Ljava/lang/String;

    .line 102
    iput p9, p0, Ln/aF;->k:I

    .line 103
    iput-object p10, p0, Ln/aF;->d:[Ln/l;

    .line 104
    iput-object p11, p0, Ln/aF;->l:Lcom/google/android/maps/driveabout/vector/dg;

    .line 105
    iput-object p12, p0, Ln/aF;->m:[Ln/aC;

    .line 106
    iput p6, p0, Ln/aF;->n:I

    .line 107
    move-wide/from16 v0, p13

    iput-wide v0, p0, Ln/aF;->g:J

    .line 108
    move-wide/from16 v0, p15

    iput-wide v0, p0, Ln/aF;->o:J

    .line 109
    return-void
.end method

.method public static a(Ln/am;Ljava/io/DataInput;IBIILcom/google/android/maps/driveabout/vector/dg;JJ)Ln/aF;
    .registers 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static/range {p1 .. p1}, Ln/aF;->a(Ljava/io/DataInput;)V

    .line 232
    invoke-static/range {p1 .. p1}, Ln/am;->a(Ljava/io/DataInput;)Ln/am;

    move-result-object v3

    .line 233
    invoke-virtual {v3}, Ln/am;->c()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ln/am;->c()I

    move-result v5

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ln/am;->d()I

    move-result v5

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Ln/am;->b()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ln/am;->b()I

    move-result v5

    if-eq v4, v5, :cond_4a

    .line 236
    :cond_25
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected tile coords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_4a
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v12

    .line 245
    if-lez v12, :cond_52

    .line 246
    add-int/lit16 v12, v12, 0x7d0

    .line 248
    :cond_52
    invoke-static/range {p1 .. p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 249
    new-array v10, v4, [Ljava/lang/String;

    .line 250
    const/4 v3, 0x0

    :goto_59
    if-ge v3, v4, :cond_68

    .line 251
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 253
    :cond_68
    invoke-static/range {p1 .. p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 254
    new-array v11, v4, [Ljava/lang/String;

    .line 255
    const/4 v3, 0x0

    :goto_6f
    if-ge v3, v4, :cond_7e

    .line 256
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 259
    :cond_7e
    invoke-static/range {p1 .. p2}, Ln/ah;->a(Ljava/io/DataInput;I)Ln/ah;

    move-result-object v4

    .line 262
    invoke-static/range {p1 .. p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 263
    new-array v5, v6, [Ljava/lang/String;

    .line 264
    const/4 v3, 0x0

    :goto_89
    if-ge v3, v6, :cond_98

    .line 265
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 269
    :cond_98
    invoke-static/range {p1 .. p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 270
    new-array v13, v6, [Ln/l;

    .line 271
    const/4 v3, 0x0

    :goto_9f
    if-ge v3, v6, :cond_b0

    .line 272
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Ln/aF;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/l;

    move-result-object v7

    aput-object v7, v13, v3

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 275
    :cond_b0
    invoke-static/range {p1 .. p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 276
    new-array v15, v6, [Ln/aC;

    .line 277
    const/4 v3, 0x0

    :goto_b7
    if-ge v3, v6, :cond_c8

    .line 278
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Ln/aC;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/aC;

    move-result-object v7

    aput-object v7, v15, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 282
    :cond_c8
    new-instance v3, Ln/aF;

    move-object/from16 v6, p0

    move/from16 v7, p4

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-wide/from16 v16, p7

    move-wide/from16 v18, p9

    invoke-direct/range {v3 .. v19}, Ln/aF;-><init>(Ln/ah;[Ljava/lang/String;Ln/am;IBI[Ljava/lang/String;[Ljava/lang/String;I[Ln/l;Lcom/google/android/maps/driveabout/vector/dg;[Ln/aC;JJ)V

    return-object v3
.end method

.method public static a(Ln/am;[BILcom/google/android/maps/driveabout/vector/dg;JJ)Ln/aF;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-static/range {p1 .. p2}, Ln/aF;->a([BI)[J

    move-result-object v1

    .line 308
    const/4 v2, 0x0

    .line 309
    const/4 v3, 0x1

    aget-wide v4, v1, v2

    long-to-int v9, v4

    .line 311
    const/4 v2, 0x2

    aget-wide v3, v1, v3

    long-to-int v10, v3

    .line 312
    const/4 v3, 0x3

    aget-wide v4, v1, v2

    long-to-int v2, v4

    .line 313
    const/4 v4, 0x4

    aget-wide v5, v1, v3

    long-to-int v3, v5

    .line 314
    const/4 v6, 0x5

    aget-wide v4, v1, v4

    .line 317
    aget-wide v6, v1, v6

    long-to-int v1, v6

    int-to-byte v11, v1

    .line 320
    packed-switch v2, :pswitch_data_b4

    .line 326
    const/16 v1, 0x1a

    .line 328
    :goto_21
    add-int v7, p2, v1

    .line 329
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int v8, v1, v7

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 331
    invoke-static/range {v1 .. v8}, Ln/aF;->a(Ln/am;IIJ[BII)V

    .line 332
    new-instance v15, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 335
    :try_start_35
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v7, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 339
    mul-int/lit8 v1, v8, 0x4

    .line 340
    invoke-static {v1}, LaT/f;->a(I)[B

    move-result-object v3

    .line 341
    if-nez v3, :cond_44

    .line 342
    new-array v3, v1, [B

    .line 344
    :cond_44
    invoke-virtual {v15, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    move-object v14, v3

    .line 345
    :goto_49
    invoke-virtual {v15}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    if-lez v3, :cond_65

    .line 346
    array-length v3, v14

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 347
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v14, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v15, v3, v1, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    add-int/2addr v1, v4

    move-object v14, v3

    .line 351
    goto :goto_49

    .line 322
    :pswitch_62
    const/16 v1, 0x1b

    .line 323
    goto :goto_21

    .line 352
    :cond_65
    new-instance v4, LW/a;

    invoke-direct {v4, v14}, LW/a;-><init>([B)V

    move-object/from16 v3, p0

    move v5, v2

    move v6, v11

    move v7, v9

    move v8, v10

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 353
    invoke-static/range {v3 .. v13}, Ln/aF;->a(Ln/am;Ljava/io/DataInput;IBIILcom/google/android/maps/driveabout/vector/dg;JJ)Ln/aF;

    move-result-object v2

    .line 355
    invoke-virtual {v4}, LW/a;->a()I

    move-result v3

    if-eq v3, v1, :cond_ad

    .line 356
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte stream not fully read for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ln/aF;->d()Ln/am;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9d
    .catchall {:try_start_35 .. :try_end_9d} :catchall_a8
    .catch Ljava/util/zip/DataFormatException; {:try_start_35 .. :try_end_9d} :catch_9d

    .line 363
    :catch_9d
    move-exception v1

    .line 364
    :try_start_9e
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a8

    .line 366
    :catchall_a8
    move-exception v1

    invoke-virtual {v15}, Ljava/util/zip/Inflater;->end()V

    throw v1

    .line 361
    :cond_ad
    :try_start_ad
    invoke-static {v14}, LaT/f;->a([B)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_a8
    .catch Ljava/util/zip/DataFormatException; {:try_start_ad .. :try_end_b0} :catch_9d

    .line 366
    invoke-virtual {v15}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    .line 320
    :pswitch_data_b4
    .packed-switch 0xa
        :pswitch_62
    .end packed-switch
.end method

.method static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/l;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 383
    packed-switch v0, :pswitch_data_52

    .line 405
    :pswitch_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :pswitch_20
    invoke-static {p0, p1, p3}, Ln/j;->a(Ljava/io/DataInput;ILn/ah;)Ln/j;

    move-result-object v0

    .line 403
    :goto_24
    return-object v0

    .line 387
    :pswitch_25
    invoke-static {p0, p1, p2, p3, p4}, Ln/ac;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/ac;

    move-result-object v0

    goto :goto_24

    .line 389
    :pswitch_2a
    invoke-static {p0, p1, p2, p3, p4}, Ln/d;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/d;

    move-result-object v0

    goto :goto_24

    .line 391
    :pswitch_2f
    invoke-static {p0, p1, p2, p3, p4}, Ln/e;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/e;

    move-result-object v0

    goto :goto_24

    .line 393
    :pswitch_34
    invoke-static {p0, p1, p2, p3, p4}, Ln/J;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/J;

    move-result-object v0

    goto :goto_24

    .line 395
    :pswitch_39
    invoke-static {p0, p1, p3}, Ln/Z;->a(Ljava/io/DataInput;ILn/ah;)Ln/Z;

    move-result-object v0

    goto :goto_24

    .line 397
    :pswitch_3e
    invoke-static {p0, p1, p2, p3, p4}, Ln/R;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/R;

    move-result-object v0

    goto :goto_24

    .line 399
    :pswitch_43
    invoke-static {p0, p1, p2, p3, p4}, Ln/H;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/H;

    move-result-object v0

    goto :goto_24

    .line 401
    :pswitch_48
    invoke-static {p0, p1, p2, p3, p4}, Ln/aw;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/l;

    move-result-object v0

    goto :goto_24

    .line 403
    :pswitch_4d
    invoke-static {p0, p1, p2, p3, p4}, Ln/I;->b(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/H;

    move-result-object v0

    goto :goto_24

    .line 383
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
        :pswitch_7
        :pswitch_4d
    .end packed-switch
.end method

.method public static a(II[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Ln/L;->a(I[BI)V

    .line 692
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Ln/L;->a(I[BI)V

    .line 693
    return-void
.end method

.method private static a(Ljava/io/DataInput;)V
    .registers 5
    .parameter

    .prologue
    .line 631
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 632
    const v1, 0x44524154

    if-eq v0, v1, :cond_22

    .line 633
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :cond_22
    return-void
.end method

.method private static a(Ln/am;IIJ[BII)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 618
    new-instance v11, Lr/aG;

    invoke-direct {v11}, Lr/aG;-><init>()V

    .line 619
    const/16 v3, 0x28

    new-array v10, v3, [B

    .line 620
    invoke-virtual {p0}, Ln/am;->c()I

    move-result v3

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v4

    invoke-virtual {p0}, Ln/am;->b()I

    move-result v5

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-static/range {v3 .. v10}, Lr/aG;->a(IIIIIJ[B)V

    .line 623
    const/16 v3, 0x100

    invoke-virtual {v11, v10, v3}, Lr/aG;->a([BI)V

    .line 624
    move-object/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v11, v0, v1, v2}, Lr/aG;->a([BII)V

    .line 625
    return-void
.end method

.method public static a(Ln/al;)Z
    .registers 3
    .parameter

    .prologue
    .line 779
    invoke-interface {p0}, Ln/al;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->q:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_11

    move-object v0, p0

    check-cast v0, Ln/aF;

    invoke-virtual {v0}, Ln/aF;->r()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_11
    instance-of v0, p0, Ln/K;

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a([BI)[J
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xa

    const/4 v1, 0x0

    .line 652
    new-instance v0, LW/a;

    invoke-direct {v0, p0}, LW/a;-><init>([B)V

    .line 653
    invoke-virtual {v0, p1}, LW/a;->skipBytes(I)I

    .line 661
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v2

    .line 663
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v3

    .line 665
    invoke-static {v0}, Ln/aF;->a(Ljava/io/DataInput;)V

    .line 667
    invoke-virtual {v0}, LW/a;->readUnsignedShort()I

    move-result v4

    .line 669
    const/16 v5, 0x9

    if-eq v4, v5, :cond_3f

    if-eq v4, v8, :cond_3f

    .line 671
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version mismatch: 9 or 10 expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_3f
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v5

    .line 679
    invoke-virtual {v0}, LW/a;->readLong()J

    move-result-wide v6

    .line 683
    if-ne v4, v8, :cond_67

    .line 684
    invoke-virtual {v0}, LW/a;->readUnsignedByte()I

    move-result v0

    .line 686
    :goto_4d
    const/4 v8, 0x6

    new-array v8, v8, [J

    int-to-long v9, v2

    aput-wide v9, v8, v1

    const/4 v1, 0x1

    int-to-long v2, v3

    aput-wide v2, v8, v1

    const/4 v1, 0x2

    int-to-long v2, v4

    aput-wide v2, v8, v1

    const/4 v1, 0x3

    int-to-long v2, v5

    aput-wide v2, v8, v1

    const/4 v1, 0x4

    aput-wide v6, v8, v1

    const/4 v1, 0x5

    int-to-long v2, v0

    aput-wide v2, v8, v1

    return-object v8

    :cond_67
    move v0, v1

    goto :goto_4d
.end method

.method static synthetic b(Ln/aF;)[Ln/l;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Ln/aF;->d:[Ln/l;

    return-object v0
.end method

.method public static s()J
    .registers 2

    .prologue
    .line 749
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->v()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/k;->e()J

    move-result-wide v0

    :goto_18
    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_18
.end method

.method public static t()I
    .registers 4

    .prologue
    .line 761
    invoke-static {}, Ln/aF;->s()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 762
    const/4 v0, -0x1

    .line 764
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Ln/aF;->s()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_b
.end method

.method public static u()I
    .registers 1

    .prologue
    .line 769
    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 705
    iget-wide v0, p0, Ln/aF;->g:J

    return-wide v0
.end method

.method public a(I)Ln/l;
    .registers 3
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Ln/aF;->d:[Ln/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 6
    .parameter

    .prologue
    .line 710
    iget-wide v0, p0, Ln/aF;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Ln/aF;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b()J
    .registers 3

    .prologue
    .line 730
    iget-wide v0, p0, Ln/aF;->o:J

    return-wide v0
.end method

.method public b(I)Ln/aC;
    .registers 3
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Ln/aF;->m:[Ln/aC;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ln/aF;->m:[Ln/aC;

    aget-object v0, v0, p1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Lcom/google/googlenav/common/a;)Z
    .registers 6
    .parameter

    .prologue
    .line 725
    iget-wide v0, p0, Ln/aF;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Ln/aF;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public c(Lcom/google/googlenav/common/a;)V
    .registers 6
    .parameter

    .prologue
    .line 735
    invoke-static {}, Ln/aF;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 736
    invoke-interface {p1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-static {}, Ln/aF;->s()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln/aF;->o:J

    .line 741
    :goto_15
    return-void

    .line 739
    :cond_16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ln/aF;->o:J

    goto :goto_15
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Ln/aF;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public d()Ln/am;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Ln/aF;->a:Ln/am;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Ln/aF;->b:I

    return v0
.end method

.method public f()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Ln/aF;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Ln/aF;->l:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 720
    iget v0, p0, Ln/aF;->n:I

    return v0
.end method

.method public i()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 500
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/k;->h()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 503
    :cond_12
    invoke-virtual {p0}, Ln/aF;->n()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Ln/aF;->o()Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    move v1, v0

    .line 507
    :cond_20
    :goto_20
    return v1

    :cond_21
    invoke-virtual {p0}, Ln/aF;->o()Z

    move-result v2

    if-eqz v2, :cond_20

    move v1, v0

    goto :goto_20
.end method

.method public j()I
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Ln/aF;->d:[Ln/l;

    array-length v0, v0

    return v0
.end method

.method public k()Ln/aI;
    .registers 3

    .prologue
    .line 543
    new-instance v0, Ln/aJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln/aJ;-><init>(Ln/aF;Ln/aG;)V

    return-object v0
.end method

.method public m()B
    .registers 2

    .prologue
    .line 485
    iget-byte v0, p0, Ln/aF;->c:B

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 490
    iget-byte v0, p0, Ln/aF;->c:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 495
    iget-byte v0, p0, Ln/aF;->c:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public p()I
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Ln/aF;->k:I

    return v0
.end method

.method protected q()[Ln/l;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Ln/aF;->d:[Ln/l;

    return-object v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Ln/aF;->m:[Ln/aC;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ln/aF;->m:[Ln/aC;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
