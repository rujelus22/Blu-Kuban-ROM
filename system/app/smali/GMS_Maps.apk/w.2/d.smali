.class public Lw/d;
.super Ljava/lang/Object;

# interfaces
.implements Lt/k;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lt/af;

.field private final c:I

.field private final d:J

.field private final e:[Lw/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RoadGraphPiece"

    sput-object v0, Lw/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lt/af;Lam/b;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/d;->b:Lt/af;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lw/d;->c:I

    iput-wide p3, p0, Lw/d;->d:J

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lw/e;

    iput-object v0, p0, Lw/d;->e:[Lw/e;

    invoke-direct {p0, p2}, Lw/d;->a(Lam/b;)[Lt/L;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lw/d;->a(Lam/b;[Lt/L;)V

    invoke-direct {p0, p2}, Lw/d;->b(Lam/b;)V

    return-void
.end method

.method public static a([BI)I
    .registers 6

    new-instance v0, Lz/b;

    invoke-direct {v0, p0}, Lz/b;-><init>([B)V

    invoke-virtual {v0, p1}, Lz/b;->skipBytes(I)I

    invoke-virtual {v0}, Lz/b;->readInt()I

    move-result v1

    const v2, 0x45504752

    if-eq v1, v2, :cond_2a

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

    :cond_2a
    invoke-virtual {v0}, Lz/b;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

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

    :cond_50
    invoke-virtual {v0}, Lz/b;->readInt()I

    move-result v0

    return v0
.end method

.method private static a([BLt/L;Lt/L;)Lt/P;
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    :goto_12
    new-instance v5, Lt/R;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v5, v3}, Lt/R;-><init>(I)V

    if-eqz p1, :cond_1e

    invoke-virtual {v5, p1}, Lt/R;->a(Lt/L;)Z

    :cond_1e
    move v3, v2

    move v4, v2

    :goto_20
    if-ge v2, v1, :cond_36

    invoke-static {v0}, Lt/aj;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v0}, Lt/aj;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v4, v3}, Lt/L;->c(II)Lt/L;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_36
    if-eqz p2, :cond_3b

    invoke-virtual {v5, p2}, Lt/R;->a(Lt/L;)Z

    :cond_3b
    invoke-virtual {v5}, Lt/R;->d()Lt/P;

    move-result-object v0

    return-object v0

    :cond_40
    move v1, v2

    goto :goto_12
.end method

.method public static a(Lt/af;[BIJ)Lw/d;
    .registers 11

    invoke-static {p1, p2}, Lw/d;->a([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    invoke-static {p0, v0, p1, v1}, Lw/d;->a(Lt/af;I[BI)V

    array-length v0, p1

    sub-int/2addr v0, v1

    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_11
    invoke-virtual {v3, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    :goto_1c
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_35

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v2

    goto :goto_1c

    :cond_35
    invoke-static {p0, v1, v0, p3, p4}, Lw/d;->b(Lt/af;[BIJ)Lw/d;
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_48
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_38} :catch_3d

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    return-object v0

    :catch_3d
    move-exception v0

    :try_start_3e
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private a(Lam/b;[Lt/L;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lw/d;->b:Lt/af;

    invoke-virtual {v1}, Lt/af;->i()Lt/V;

    const/4 v1, 0x0

    move v10, v1

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lw/d;->e:[Lw/e;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_116

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v13, v1, 0x1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    const/4 v1, 0x2

    invoke-static {v6, v1}, Lam/g;->e(Lam/b;I)I

    move-result v7

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Lam/b;->e(II)Lam/b;

    move-result-object v11

    const/4 v1, 0x2

    invoke-static {v11, v1}, Lam/g;->e(Lam/b;I)I

    move-result v14

    const/4 v1, 0x0

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lam/b;->c(I)[B

    move-result-object v1

    :cond_44
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v9

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v6, v8, v0}, Lw/d;->a(Lam/b;ILam/b;)[Lw/f;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, 0x4

    aget-object v15, p2, v13

    aget-object v16, p2, v12

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lw/d;->a([BLt/L;Lt/L;)Lt/P;

    move-result-object v5

    if-nez v15, :cond_93

    if-nez v16, :cond_93

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Both polyline endpoints are missing for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lw/d;->e:[Lw/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lw/d;->b:Lt/af;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    if-nez v15, :cond_10c

    const/4 v2, 0x2

    const/4 v1, 0x5

    :goto_97
    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-static {v6, v3, v15}, Lam/g;->c(Lam/b;II)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_119

    or-int/lit8 v6, v2, 0x8

    :goto_a3
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lam/g;->c(Lam/b;II)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_117

    or-int/lit8 v1, v1, 0x8

    move v11, v1

    :goto_b0
    move-object/from16 v0, p0

    iget-object v15, v0, Lw/d;->e:[Lw/e;

    new-instance v1, Lw/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lw/d;->b:Lt/af;

    invoke-static {v2, v12}, Lw/e;->a(Lt/af;I)J

    move-result-wide v2

    invoke-direct/range {v1 .. v9}, Lw/e;-><init>(J[Lw/f;Lt/P;IIII)V

    aput-object v1, v15, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lw/d;->e:[Lw/e;

    new-instance v1, Lw/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lw/d;->b:Lt/af;

    invoke-static {v2, v13}, Lw/e;->a(Lt/af;I)J

    move-result-wide v2

    move v6, v11

    move v7, v14

    invoke-direct/range {v1 .. v9}, Lw/e;-><init>(J[Lw/f;Lt/P;IIII)V

    aput-object v1, v15, v13

    invoke-virtual {v5}, Lt/P;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_111

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Segment polyline had fewer than two points for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lw/d;->e:[Lw/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lw/d;->b:Lt/af;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10c
    if-nez v16, :cond_11b

    const/4 v2, 0x1

    const/4 v1, 0x6

    goto :goto_97

    :cond_111
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_9

    :cond_116
    return-void

    :cond_117
    move v11, v1

    goto :goto_b0

    :cond_119
    move v6, v2

    goto :goto_a3

    :cond_11b
    move v1, v2

    move v2, v3

    goto/16 :goto_97
.end method

.method private static a(Lt/af;I[BI)V
    .registers 8

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v1

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v2

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v3

    invoke-static {v1, v2, v3, p1, v0}, Lx/ax;->a(IIII[B)V

    new-instance v1, Lx/ax;

    invoke-direct {v1}, Lx/ax;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lx/ax;->b([BI)V

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v0}, Lx/ax;->a([BII)V

    return-void
.end method

.method private static a([B)[I
    .registers 6

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v3, v2, [I

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_1c

    invoke-static {v1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    return-object v3
.end method

.method private a(Lam/b;)[Lt/L;
    .registers 11

    const/4 v8, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lw/d;->e:[Lw/e;

    array-length v0, v0

    new-array v3, v0, [Lt/L;

    invoke-virtual {p1, v8}, Lam/b;->l(I)I

    move-result v4

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_38

    invoke-virtual {p1, v8, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lam/b;->d(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lam/b;->d(I)I

    move-result v6

    invoke-static {v5, v6}, Lt/L;->a(II)Lt/L;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lam/b;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lw/d;->a([B)[I

    move-result-object v6

    move v0, v1

    :goto_2a
    array-length v7, v6

    if-ge v0, v7, :cond_34

    aget v7, v6, v0

    aput-object v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_38
    return-object v3
.end method

.method private static a(Lam/b;ILam/b;)[Lw/f;
    .registers 13

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v9}, Lam/b;->l(I)I

    move-result v5

    if-ne p1, v4, :cond_3c

    move v3, v4

    :goto_b
    if-lez v5, :cond_40

    new-array v1, v5, [Lw/f;

    :goto_f
    if-ge v2, v5, :cond_3e

    invoke-virtual {p0, v9, v2}, Lam/b;->c(II)I

    move-result v0

    const/4 v6, 0x5

    invoke-virtual {p2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v8}, Lam/b;->k(I)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v6, v8}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_29
    new-instance v7, Lw/f;

    invoke-virtual {v6, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0, v3}, Lw/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_3c
    move v3, v2

    goto :goto_b

    :cond_3e
    move-object v0, v1

    :goto_3f
    return-object v0

    :cond_40
    new-array v0, v4, [Lw/f;

    sget-object v1, Lw/e;->a:Lw/f;

    aput-object v1, v0, v2

    goto :goto_3f
.end method

.method private static b(Lt/af;[BIJ)Lw/d;
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, Lbu/a;->e:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lam/b;->a(Ljava/io/InputStream;I)I

    new-instance v1, Lw/d;

    invoke-direct {v1, p0, v0, p3, p4}, Lw/d;-><init>(Lt/af;Lam/b;J)V

    return-object v1
.end method

.method private b(Lam/b;)V
    .registers 20

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v7

    new-instance v8, Lt/L;

    invoke-direct {v8}, Lt/L;-><init>()V

    new-instance v9, Lt/L;

    invoke-direct {v9}, Lt/L;-><init>()V

    const/4 v1, 0x0

    move v6, v1

    :goto_13
    if-ge v6, v7, :cond_dc

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lam/b;->c(I)[B

    move-result-object v2

    invoke-static {v2}, Lw/d;->a([B)[I

    move-result-object v10

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lam/b;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lw/d;->a([B)[I

    move-result-object v11

    const/4 v2, 0x0

    array-length v1, v10

    new-array v12, v1, [Lw/a;

    const/4 v1, 0x0

    :goto_33
    array-length v3, v10

    if-ge v1, v3, :cond_d7

    move-object/from16 v0, p0

    iget-object v3, v0, Lw/d;->e:[Lw/e;

    aget v4, v10, v1

    aget-object v13, v3, v4

    const/4 v4, 0x0

    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    :goto_46
    array-length v5, v10

    if-ge v1, v5, :cond_c8

    array-length v5, v11

    if-lt v2, v5, :cond_53

    array-length v1, v10

    move v4, v1

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_53
    aget v14, v11, v2

    if-eqz v14, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lw/d;->e:[Lw/e;

    aget v15, v10, v1

    xor-int/lit8 v15, v15, 0x1

    aget-object v15, v5, v15

    add-int/lit8 v5, v3, 0x1

    new-instance v16, Lw/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lw/a;-><init>(Lw/e;I)V

    aput-object v16, v12, v3

    invoke-static {}, Ln/a;->b()Z

    move-result v3

    if-nez v3, :cond_dd

    invoke-virtual {v13, v8}, Lw/e;->a(Lt/L;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v9}, Lw/e;->a(ILt/L;)V

    invoke-virtual {v8, v9}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

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

    invoke-virtual {v8}, Lt/L;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lt/L;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c8
    new-array v1, v3, [Lw/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v14, v1

    invoke-static {v12, v3, v1, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13, v1}, Lw/e;->a([Lw/a;)V

    add-int/lit8 v1, v4, 0x1

    goto/16 :goto_33

    :cond_d7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_13

    :cond_dc
    return-void

    :cond_dd
    move v3, v5

    goto/16 :goto_4e
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lw/d;->d:J

    return-wide v0
.end method

.method public a(I)Lw/e;
    .registers 3

    iget-object v0, p0, Lw/d;->e:[Lw/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lw/e;)Lw/e;
    .registers 10

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lw/d;->e:[Lw/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lw/d;->e:[Lw/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lw/e;->b()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2, p1}, Lw/e;->a(Lw/e;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object v0, v2

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_b6

    sget-object v0, Lw/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entering segment found in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lw/d;->b:Lt/af;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lw/d;->b:Lt/af;

    invoke-virtual {v3}, Lt/af;->i()Lt/V;

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

    invoke-virtual {p1}, Lw/e;->e()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->e()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024

    mul-double/2addr v2, v4

    move v0, v1

    :goto_70
    iget-object v4, p0, Lw/d;->e:[Lw/e;

    array-length v4, v4

    if-ge v0, v4, :cond_b6

    iget-object v4, p0, Lw/d;->e:[Lw/e;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Lw/e;->b(I)Lt/L;

    move-result-object v5

    invoke-virtual {p1, v1}, Lw/e;->b(I)Lt/L;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt/L;->c(Lt/L;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_b3

    invoke-virtual {v4}, Lw/e;->e()Lt/L;

    move-result-object v5

    invoke-virtual {p1}, Lw/e;->e()Lt/L;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt/L;->c(Lt/L;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_b3

    sget-object v5, Lw/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nearby segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_b6
    const/4 v0, 0x0

    goto/16 :goto_18
.end method

.method public a(Laf/a;)Z
    .registers 6

    iget-wide v0, p0, Lw/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lw/d;->d:J

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

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b(Laf/a;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lw/d;->e:[Lw/e;

    array-length v0, v0

    return v0
.end method

.method public c(Laf/a;)V
    .registers 2

    return-void
.end method

.method public d()Lt/af;
    .registers 2

    iget-object v0, p0, Lw/d;->b:Lt/af;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lw/d;->c:I

    return v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->f:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
