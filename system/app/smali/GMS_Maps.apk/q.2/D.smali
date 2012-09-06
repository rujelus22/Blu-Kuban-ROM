.class public Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/k;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ln/am;

.field private final c:I

.field private final d:J

.field private final e:[Lq/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "RoadGraphPiece"

    sput-object v0, Lq/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ln/am;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lq/d;->b:Ln/am;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lq/d;->c:I

    .line 97
    iput-wide p3, p0, Lq/d;->d:J

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 99
    new-array v0, v0, [Lq/e;

    iput-object v0, p0, Lq/d;->e:[Lq/e;

    .line 105
    invoke-direct {p0, p2}, Lq/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ln/Q;

    move-result-object v0

    .line 106
    invoke-direct {p0, p2, v0}, Lq/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Ln/Q;)V

    .line 107
    invoke-direct {p0, p2}, Lq/d;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 108
    return-void
.end method

.method public static a([BI)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, LW/a;

    invoke-direct {v0, p0}, LW/a;-><init>([B)V

    .line 243
    invoke-virtual {v0, p1}, LW/a;->skipBytes(I)I

    .line 244
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v1

    .line 245
    const v2, 0x45504752

    if-eq v1, v2, :cond_2a

    .line 246
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORMAT_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2a
    invoke-virtual {v0}, LW/a;->readUnsignedShort()I

    move-result v1

    .line 249
    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    .line 250
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 1 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_50
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v0

    return v0
.end method

.method private static a([BLn/Q;Ln/Q;)Ln/U;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 451
    .line 452
    const/4 v0, 0x0

    .line 453
    if-eqz p0, :cond_40

    .line 454
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    invoke-static {v0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 457
    :goto_12
    new-instance v5, Ln/W;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v5, v3}, Ln/W;-><init>(I)V

    .line 458
    if-eqz p1, :cond_1e

    .line 459
    invoke-virtual {v5, p1}, Ln/W;->a(Ln/Q;)Z

    :cond_1e
    move v3, v2

    move v4, v2

    .line 462
    :goto_20
    if-ge v2, v1, :cond_36

    .line 463
    invoke-static {v0}, Ln/aA;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v4, v6

    .line 464
    invoke-static {v0}, Ln/aA;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v3, v6

    .line 465
    invoke-static {v4, v3}, Ln/Q;->c(II)Ln/Q;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln/W;->a(Ln/Q;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 467
    :cond_36
    if-eqz p2, :cond_3b

    .line 468
    invoke-virtual {v5, p2}, Ln/W;->a(Ln/Q;)Z

    .line 470
    :cond_3b
    invoke-virtual {v5}, Ln/W;->d()Ln/U;

    move-result-object v0

    return-object v0

    :cond_40
    move v1, v2

    goto :goto_12
.end method

.method public static a(Ln/am;[BIJ)Lq/d;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-static {p1, p2}, Lq/d;->a([BI)I

    move-result v0

    .line 186
    add-int/lit8 v1, p2, 0xa

    .line 187
    invoke-static {p0, v0, p1, v1}, Lq/d;->a(Ln/am;I[BI)V

    .line 188
    array-length v0, p1

    sub-int/2addr v0, v1

    .line 190
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 193
    :try_start_11
    invoke-virtual {v3, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 197
    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 198
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 199
    :goto_1c
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_35

    .line 200
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 201
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v2

    .line 205
    goto :goto_1c

    .line 206
    :cond_35
    invoke-static {p0, v1, v0, p3, p4}, Lq/d;->b(Ln/am;[BIJ)Lq/d;
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_48
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_38} :catch_3d

    move-result-object v0

    .line 210
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    return-object v0

    .line 207
    :catch_3d
    move-exception v0

    .line 208
    :try_start_3e
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_48

    .line 210
    :catchall_48
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Ln/Q;)V
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v1, 0x0

    move v10, v1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lq/d;->e:[Lq/e;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_10f

    .line 295
    mul-int/lit8 v12, v10, 0x2

    .line 296
    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v13, v1, 0x1

    .line 297
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 298
    const/4 v1, 0x2

    invoke-static {v6, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v7

    .line 300
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 301
    const/4 v1, 0x2

    invoke-static {v11, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v14

    .line 303
    const/4 v1, 0x0

    .line 304
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 306
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 307
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    .line 309
    :cond_3d
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v9

    .line 311
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v8

    .line 314
    move-object/from16 v0, p1

    invoke-static {v6, v8, v0}, Lq/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lq/f;

    move-result-object v4

    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v2, 0x4

    .line 319
    aget-object v15, p2, v13

    .line 320
    aget-object v16, p2, v12

    .line 321
    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lq/d;->a([BLn/Q;Ln/Q;)Ln/U;

    move-result-object v5

    .line 323
    if-nez v15, :cond_8c

    if-nez v16, :cond_8c

    .line 324
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Both polyline endpoints are missing for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lq/d;->e:[Lq/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lq/d;->b:Ln/am;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_8c
    if-nez v15, :cond_105

    .line 328
    const/4 v2, 0x2

    .line 329
    const/4 v1, 0x5

    .line 335
    :goto_90
    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-static {v6, v3, v15}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_112

    .line 337
    or-int/lit8 v6, v2, 0x8

    .line 339
    :goto_9c
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_110

    .line 341
    or-int/lit8 v1, v1, 0x8

    move v11, v1

    .line 344
    :goto_a9
    move-object/from16 v0, p0

    iget-object v15, v0, Lq/d;->e:[Lq/e;

    new-instance v1, Lq/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lq/d;->b:Ln/am;

    invoke-static {v2, v12}, Lq/e;->a(Ln/am;I)J

    move-result-wide v2

    invoke-direct/range {v1 .. v9}, Lq/e;-><init>(J[Lq/f;Ln/U;IIII)V

    aput-object v1, v15, v12

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lq/d;->e:[Lq/e;

    new-instance v1, Lq/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lq/d;->b:Ln/am;

    invoke-static {v2, v13}, Lq/e;->a(Ln/am;I)J

    move-result-wide v2

    move v6, v11

    move v7, v14

    invoke-direct/range {v1 .. v9}, Lq/e;-><init>(J[Lq/f;Ln/U;IIII)V

    aput-object v1, v15, v13

    .line 349
    invoke-virtual {v5}, Ln/U;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_10a

    .line 350
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Segment polyline had fewer than two points for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lq/d;->e:[Lq/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lq/d;->b:Ln/am;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_105
    if-nez v16, :cond_114

    .line 331
    const/4 v2, 0x1

    .line 332
    const/4 v1, 0x6

    goto :goto_90

    .line 294
    :cond_10a
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_2

    .line 354
    :cond_10f
    return-void

    :cond_110
    move v11, v1

    goto :goto_a9

    :cond_112
    move v6, v2

    goto :goto_9c

    :cond_114
    move v1, v2

    move v2, v3

    goto/16 :goto_90
.end method

.method private static a(Ln/am;I[BI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 224
    invoke-virtual {p0}, Ln/am;->c()I

    move-result v1

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v2

    invoke-virtual {p0}, Ln/am;->b()I

    move-result v3

    invoke-static {v1, v2, v3, p1, v0}, Lr/aG;->a(IIII[B)V

    .line 226
    new-instance v1, Lr/aG;

    invoke-direct {v1}, Lr/aG;-><init>()V

    .line 227
    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lr/aG;->b([BI)V

    .line 228
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v0}, Lr/aG;->a([BII)V

    .line 229
    return-void
.end method

.method private static a([B)[I
    .registers 6
    .parameter

    .prologue
    .line 426
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 427
    invoke-static {v1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 428
    new-array v3, v2, [I

    .line 429
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_1c

    .line 430
    invoke-static {v1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v3, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 432
    :cond_1c
    return-object v3
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ln/Q;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lq/d;->e:[Lq/e;

    array-length v0, v0

    new-array v3, v0, [Ln/Q;

    .line 266
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v2, v1

    .line 267
    :goto_c
    if-ge v2, v4, :cond_38

    .line 268
    invoke-virtual {p1, v8, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 270
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 271
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 272
    invoke-static {v5, v6}, Ln/Q;->a(II)Ln/Q;

    move-result-object v5

    .line 273
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lq/d;->a([B)[I

    move-result-object v6

    move v0, v1

    .line 275
    :goto_2a
    array-length v7, v6

    if-ge v0, v7, :cond_34

    .line 276
    aget v7, v6, v0

    aput-object v5, v3, v7

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 267
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 279
    :cond_38
    return-object v3
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lq/f;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 483
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 485
    if-ne p1, v4, :cond_3c

    move v3, v4

    .line 486
    :goto_b
    if-lez v5, :cond_40

    .line 487
    new-array v1, v5, [Lq/f;

    .line 488
    :goto_f
    if-ge v2, v5, :cond_3e

    .line 489
    invoke-virtual {p0, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    .line 490
    const/4 v6, 0x5

    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 491
    const/4 v0, 0x0

    .line 492
    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 493
    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_29
    new-instance v7, Lq/f;

    invoke-virtual {v6, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0, v3}, Lq/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v1, v2

    .line 488
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_3c
    move v3, v2

    .line 485
    goto :goto_b

    :cond_3e
    move-object v0, v1

    .line 502
    :goto_3f
    return-object v0

    .line 501
    :cond_40
    new-array v0, v4, [Lq/f;

    sget-object v1, Lq/e;->a:Lq/f;

    aput-object v1, v0, v2

    goto :goto_3f
.end method

.method private static b(Ln/am;[BIJ)Lq/d;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbi/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 167
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 168
    new-instance v1, Lq/d;

    invoke-direct {v1, p0, v0, p3, p4}, Lq/d;-><init>(Ln/am;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    return-object v1
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 20
    .parameter

    .prologue
    .line 364
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    .line 365
    new-instance v8, Ln/Q;

    invoke-direct {v8}, Ln/Q;-><init>()V

    .line 366
    new-instance v9, Ln/Q;

    invoke-direct {v9}, Ln/Q;-><init>()V

    .line 367
    const/4 v1, 0x0

    move v6, v1

    :goto_13
    if-ge v6, v7, :cond_dc

    .line 368
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 369
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lq/d;->a([B)[I

    move-result-object v10

    .line 371
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lq/d;->a([B)[I

    move-result-object v11

    .line 372
    const/4 v2, 0x0

    .line 373
    array-length v1, v10

    new-array v12, v1, [Lq/a;

    .line 374
    const/4 v1, 0x0

    :goto_33
    array-length v3, v10

    if-ge v1, v3, :cond_d7

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lq/d;->e:[Lq/e;

    aget v4, v10, v1

    aget-object v13, v3, v4

    .line 376
    const/4 v4, 0x0

    .line 377
    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    :goto_46
    array-length v5, v10

    if-ge v1, v5, :cond_c8

    .line 378
    array-length v5, v11

    if-lt v2, v5, :cond_53

    .line 381
    array-length v1, v10

    move v4, v1

    .line 377
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 384
    :cond_53
    aget v14, v11, v2

    .line 385
    if-eqz v14, :cond_4e

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lq/d;->e:[Lq/e;

    aget v15, v10, v1

    xor-int/lit8 v15, v15, 0x1

    aget-object v15, v5, v15

    .line 396
    add-int/lit8 v5, v3, 0x1

    new-instance v16, Lq/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lq/a;-><init>(Lq/e;I)V

    aput-object v16, v12, v3

    .line 397
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 399
    invoke-virtual {v13, v8}, Lq/e;->a(Ln/Q;)V

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v9}, Lq/e;->a(ILn/Q;)V

    .line 401
    invoke-virtual {v8, v9}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 402
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Polylines did not line up when creating arc:  intersection: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " fromIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_c8
    new-array v1, v3, [Lq/a;

    .line 412
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v14, v1

    invoke-static {v12, v3, v1, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    invoke-virtual {v13, v1}, Lq/e;->a([Lq/a;)V

    .line 374
    add-int/lit8 v1, v4, 0x1

    goto/16 :goto_33

    .line 367
    :cond_d7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_13

    .line 416
    :cond_dc
    return-void

    :cond_dd
    move v3, v5

    goto/16 :goto_4e
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 574
    iget-wide v0, p0, Lq/d;->d:J

    return-wide v0
.end method

.method public a(I)Lq/e;
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lq/d;->e:[Lq/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lq/e;)Lq/e;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 129
    move v0, v1

    :goto_2
    iget-object v2, p0, Lq/d;->e:[Lq/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 130
    iget-object v2, p0, Lq/d;->e:[Lq/e;

    aget-object v2, v2, v0

    .line 131
    invoke-virtual {v2}, Lq/e;->b()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2, p1}, Lq/e;->a(Lq/e;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object v0, v2

    .line 151
    :goto_18
    return-object v0

    .line 129
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :cond_1c
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 136
    sget-object v0, Lq/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entering segment found in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lq/d;->b:Ln/am;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lq/d;->b:Ln/am;

    invoke-virtual {v3}, Ln/am;->h()Ln/aa;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for leaving segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lq/e;->e()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v1}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024

    mul-double/2addr v2, v4

    move v0, v1

    .line 142
    :goto_70
    iget-object v4, p0, Lq/d;->e:[Lq/e;

    array-length v4, v4

    if-ge v0, v4, :cond_b6

    .line 143
    iget-object v4, p0, Lq/d;->e:[Lq/e;

    aget-object v4, v4, v0

    .line 144
    invoke-virtual {v4, v1}, Lq/e;->b(I)Ln/Q;

    move-result-object v5

    invoke-virtual {p1, v1}, Lq/e;->b(I)Ln/Q;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln/Q;->c(Ln/Q;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_b3

    invoke-virtual {v4}, Lq/e;->e()Ln/Q;

    move-result-object v5

    invoke-virtual {p1}, Lq/e;->e()Ln/Q;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln/Q;->c(Ln/Q;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_b3

    .line 147
    sget-object v5, Lq/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nearby segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 151
    :cond_b6
    const/4 v0, 0x0

    goto/16 :goto_18
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 6
    .parameter

    .prologue
    .line 508
    iget-wide v0, p0, Lq/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lq/d;->d:J

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
    .line 568
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lq/d;->e:[Lq/e;

    array-length v0, v0

    return v0
.end method

.method public c(Lcom/google/googlenav/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 564
    return-void
.end method

.method public d()Ln/am;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lq/d;->b:Ln/am;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lq/d;->c:I

    return v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 549
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->i:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 554
    const/4 v0, -0x1

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method
