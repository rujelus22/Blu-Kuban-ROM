.class public Lt/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lt/k;


# instance fields
.field private final a:Lt/af;

.field private final b:I

.field private final c:[Lt/l;

.field private final d:Lt/aa;

.field private final e:[Ljava/lang/String;

.field private final f:J

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:I

.field private final k:Lcom/google/android/maps/driveabout/vector/cU;

.field private final l:[Lt/al;

.field private final m:I

.field private n:J


# direct methods
.method protected constructor <init>(Lt/aa;[Ljava/lang/String;Lt/af;II[Ljava/lang/String;[Ljava/lang/String;I[Lt/l;Lcom/google/android/maps/driveabout/vector/cU;[Lt/al;JJ)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lt/ao;->h:[Ljava/lang/String;

    iput-object p1, p0, Lt/ao;->d:Lt/aa;

    iput-object p2, p0, Lt/ao;->e:[Ljava/lang/String;

    iput-object p3, p0, Lt/ao;->a:Lt/af;

    iput p4, p0, Lt/ao;->b:I

    iput-object p6, p0, Lt/ao;->g:[Ljava/lang/String;

    iput-object p7, p0, Lt/ao;->i:[Ljava/lang/String;

    iput p8, p0, Lt/ao;->j:I

    iput-object p9, p0, Lt/ao;->c:[Lt/l;

    iput-object p10, p0, Lt/ao;->k:Lcom/google/android/maps/driveabout/vector/cU;

    iput-object p11, p0, Lt/ao;->l:[Lt/al;

    iput p5, p0, Lt/ao;->m:I

    iput-wide p12, p0, Lt/ao;->f:J

    iput-wide p14, p0, Lt/ao;->n:J

    return-void
.end method

.method public static a(Lt/af;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/cU;JJ)Lt/ao;
    .registers 29

    invoke-static/range {p1 .. p1}, Lt/ao;->a(Ljava/io/DataInput;)V

    invoke-static/range {p1 .. p1}, Lt/af;->a(Ljava/io/DataInput;)Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->c()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lt/af;->c()I

    move-result v5

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Lt/af;->d()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lt/af;->d()I

    move-result v5

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lt/af;->b()I

    move-result v5

    if-eq v4, v5, :cond_4a

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

    :cond_4a
    const/4 v11, -0x1

    const/16 v3, 0x8

    move/from16 v0, p2

    if-eq v0, v3, :cond_57

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_ad

    :cond_57
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    if-lez v3, :cond_5f

    add-int/lit16 v3, v3, 0x7d0

    :cond_5f
    invoke-static/range {p1 .. p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v9, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_66
    if-ge v4, v5, :cond_75

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_75
    invoke-static/range {p1 .. p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v10, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_7c
    if-ge v4, v5, :cond_8b

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    :cond_8b
    move v11, v3

    :goto_8c
    invoke-static/range {p1 .. p2}, Lt/aa;->a(Ljava/io/DataInput;I)Lt/aa;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_b4

    invoke-static/range {p1 .. p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_9e
    if-ge v3, v6, :cond_b4

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    :cond_ad
    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v10, v3, [Ljava/lang/String;

    goto :goto_8c

    :cond_b4
    invoke-static/range {p1 .. p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v12, v6, [Lt/l;

    const/4 v3, 0x0

    :goto_bb
    if-ge v3, v6, :cond_cc

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lt/ao;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/l;

    move-result-object v7

    aput-object v7, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    :cond_cc
    const/4 v14, 0x0

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_eb

    invoke-static/range {p1 .. p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v14, v6, [Lt/al;

    const/4 v3, 0x0

    :goto_da
    if-ge v3, v6, :cond_eb

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lt/al;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/al;

    move-result-object v7

    aput-object v7, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_da

    :cond_eb
    new-instance v3, Lt/ao;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    move-wide/from16 v15, p6

    move-wide/from16 v17, p8

    invoke-direct/range {v3 .. v18}, Lt/ao;-><init>(Lt/aa;[Ljava/lang/String;Lt/af;II[Ljava/lang/String;[Ljava/lang/String;I[Lt/l;Lcom/google/android/maps/driveabout/vector/cU;[Lt/al;JJ)V

    return-object v3
.end method

.method public static a(Lt/af;[BILcom/google/android/maps/driveabout/vector/cU;JJ)Lt/ao;
    .registers 22

    invoke-static/range {p1 .. p2}, Lt/ao;->a([BI)[J

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-wide v3, v0, v1

    long-to-int v8, v3

    const/4 v1, 0x2

    aget-wide v2, v0, v2

    long-to-int v9, v2

    const/4 v2, 0x3

    aget-wide v3, v0, v1

    long-to-int v1, v3

    const/4 v3, 0x4

    aget-wide v4, v0, v2

    long-to-int v2, v4

    aget-wide v3, v0, v3

    const/16 v0, 0x9

    if-ne v1, v0, :cond_58

    const/16 v0, 0x1a

    :goto_1d
    add-int v6, p2, v0

    array-length v0, p1

    sub-int v7, v0, v6

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lt/ao;->a(Lt/af;IIJ[BII)V

    new-instance v13, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_2d
    invoke-virtual {v13, p1, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    mul-int/lit8 v0, v7, 0x4

    invoke-static {v0}, Lbf/e;->a(I)[B

    move-result-object v2

    if-nez v2, :cond_3a

    new-array v2, v0, [B

    :cond_3a
    invoke-virtual {v13, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    move-object v12, v2

    :goto_3f
    invoke-virtual {v13}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_5b

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v13, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    add-int/2addr v0, v3

    move-object v12, v2

    goto :goto_3f

    :cond_58
    const/16 v0, 0x10

    goto :goto_1d

    :cond_5b
    new-instance v3, Lz/b;

    invoke-direct {v3, v12}, Lz/b;-><init>([B)V

    move-object v2, p0

    move v4, v1

    move v5, v8

    move v6, v9

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v2 .. v11}, Lt/ao;->a(Lt/af;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/cU;JJ)Lt/ao;

    move-result-object v1

    invoke-virtual {v3}, Lz/b;->a()I

    move-result v2

    if-eq v2, v0, :cond_a1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte stream not fully read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lt/ao;->d()Lt/af;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_91
    .catchall {:try_start_2d .. :try_end_91} :catchall_9c
    .catch Ljava/util/zip/DataFormatException; {:try_start_2d .. :try_end_91} :catch_91

    :catch_91
    move-exception v0

    :try_start_92
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_a1
    :try_start_a1
    invoke-static {v12}, Lbf/e;->a([B)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_9c
    .catch Ljava/util/zip/DataFormatException; {:try_start_a1 .. :try_end_a4} :catch_91

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    return-object v1
.end method

.method static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/l;
    .registers 9

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    packed-switch v0, :pswitch_data_52

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

    :pswitch_20
    invoke-static {p0, p1, p3}, Lt/j;->a(Ljava/io/DataInput;ILt/aa;)Lt/j;

    move-result-object v0

    :goto_24
    return-object v0

    :pswitch_25
    invoke-static {p0, p1, p2, p3, p4}, Lt/X;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/X;

    move-result-object v0

    goto :goto_24

    :pswitch_2a
    invoke-static {p0, p1, p2, p3, p4}, Lt/d;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/d;

    move-result-object v0

    goto :goto_24

    :pswitch_2f
    invoke-static {p0, p1, p2, p3, p4}, Lt/e;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/e;

    move-result-object v0

    goto :goto_24

    :pswitch_34
    invoke-static {p0, p1, p2, p3, p4}, Lt/F;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/F;

    move-result-object v0

    goto :goto_24

    :pswitch_39
    invoke-static {p0, p1, p3}, Lt/U;->a(Ljava/io/DataInput;ILt/aa;)Lt/U;

    move-result-object v0

    goto :goto_24

    :pswitch_3e
    invoke-static {p0, p1, p2, p3, p4}, Lt/M;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/M;

    move-result-object v0

    goto :goto_24

    :pswitch_43
    invoke-static {p0, p1, p2, p3, p4}, Lt/D;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/D;

    move-result-object v0

    goto :goto_24

    :pswitch_48
    invoke-static {p0, p1, p2, p3, p4}, Lt/ah;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/l;

    move-result-object v0

    goto :goto_24

    :pswitch_4d
    invoke-static {p0, p1, p2, p3, p4}, Lt/E;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/D;

    move-result-object v0

    goto :goto_24

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

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lt/H;->a(I[BI)V

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lt/H;->a(I[BI)V

    return-void
.end method

.method private static a(Ljava/io/DataInput;)V
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_22

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

    :cond_22
    return-void
.end method

.method private static a(Lt/af;IIJ[BII)V
    .registers 20

    new-instance v11, Lx/ax;

    invoke-direct {v11}, Lx/ax;-><init>()V

    const/16 v3, 0x9

    if-ge p1, v3, :cond_2d

    const/16 v3, 0x20

    new-array v8, v3, [B

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v3

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v4

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v5

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v8}, Lx/ax;->a(IIIII[B)V

    const/16 v3, 0x100

    invoke-virtual {v11, v8, v3}, Lx/ax;->b([BI)V

    :goto_23
    move-object/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v11, v0, v1, v2}, Lx/ax;->a([BII)V

    return-void

    :cond_2d
    const/16 v3, 0x28

    new-array v10, v3, [B

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v3

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v4

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v5

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-static/range {v3 .. v10}, Lx/ax;->a(IIIIIJ[B)V

    const/16 v3, 0x100

    invoke-virtual {v11, v10, v3}, Lx/ax;->a([BI)V

    goto :goto_23
.end method

.method private static a([BI)[J
    .registers 16

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lz/b;

    invoke-direct {v0, p0}, Lz/b;-><init>([B)V

    invoke-virtual {v0, p1}, Lz/b;->skipBytes(I)I

    invoke-virtual {v0}, Lz/b;->readInt()I

    move-result v1

    invoke-virtual {v0}, Lz/b;->readInt()I

    move-result v2

    invoke-static {v0}, Lt/ao;->a(Ljava/io/DataInput;)V

    invoke-virtual {v0}, Lz/b;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_46

    const/16 v4, 0x8

    if-eq v3, v4, :cond_46

    const/16 v4, 0x9

    if-eq v3, v4, :cond_46

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version mismatch: 7 or 8 or 9 expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v4, 0x7

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x8

    if-ne v3, v4, :cond_65

    :cond_4d
    invoke-virtual {v0}, Lz/b;->readUnsignedShort()I

    move-result v4

    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v5, v1

    aput-wide v5, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v13

    :goto_64
    return-object v0

    :cond_65
    invoke-virtual {v0}, Lz/b;->readInt()I

    move-result v4

    invoke-virtual {v0}, Lz/b;->readLong()J

    move-result-wide v5

    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v7, v1

    aput-wide v7, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    aput-wide v5, v0, v13

    goto :goto_64
.end method

.method static synthetic b(Lt/ao;)[Lt/l;
    .registers 2

    iget-object v0, p0, Lt/ao;->c:[Lt/l;

    return-object v0
.end method

.method public static o()J
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->x()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lae/d;->d()Lae/i;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lae/d;->d()Lae/i;

    move-result-object v0

    invoke-virtual {v0}, Lae/i;->e()J

    move-result-wide v0

    :goto_18
    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_18
.end method

.method public static p()I
    .registers 4

    invoke-static {}, Lt/ao;->o()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lt/ao;->o()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_b
.end method

.method public static q()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lt/ao;->f:J

    return-wide v0
.end method

.method public a(I)Lt/l;
    .registers 3

    iget-object v0, p0, Lt/ao;->c:[Lt/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Laf/a;)Z
    .registers 6

    iget-wide v0, p0, Lt/ao;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lt/ao;->f:J

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

    iget-wide v0, p0, Lt/ao;->n:J

    return-wide v0
.end method

.method public b(I)Lt/al;
    .registers 3

    iget-object v0, p0, Lt/ao;->l:[Lt/al;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lt/ao;->l:[Lt/al;

    aget-object v0, v0, p1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Laf/a;)Z
    .registers 6

    iget-wide v0, p0, Lt/ao;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lt/ao;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public c(Laf/a;)V
    .registers 6

    invoke-static {}, Lt/ao;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-interface {p1}, Laf/a;->c()J

    move-result-wide v0

    invoke-static {}, Lt/ao;->o()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lt/ao;->n:J

    :goto_15
    return-void

    :cond_16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt/ao;->n:J

    goto :goto_15
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/ao;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public d()Lt/af;
    .registers 2

    iget-object v0, p0, Lt/ao;->a:Lt/af;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lt/ao;->b:I

    return v0
.end method

.method public f()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/ao;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    iget-object v0, p0, Lt/ao;->k:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lt/ao;->m:I

    return v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lt/ao;->c:[Lt/l;

    array-length v0, v0

    return v0
.end method

.method public j()Lt/ar;
    .registers 3

    new-instance v0, Lt/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt/as;-><init>(Lt/ao;Lt/ap;)V

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lt/ao;->j:I

    return v0
.end method

.method protected m()[Lt/l;
    .registers 2

    iget-object v0, p0, Lt/ao;->c:[Lt/l;

    return-object v0
.end method

.method public n()I
    .registers 2

    iget-object v0, p0, Lt/ao;->l:[Lt/al;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt/ao;->l:[Lt/al;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
