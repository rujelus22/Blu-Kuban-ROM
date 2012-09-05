.class public Lz/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[C


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/b;->a:[B

    iget-object v0, p0, Lz/b;->a:[B

    array-length v0, v0

    iput v0, p0, Lz/b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lz/b;->c:I

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lz/b;->d:[C

    return-void
.end method

.method public static a([B[CII)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const/16 v7, 0x80

    move v0, v1

    move v2, v1

    :goto_5
    if-ge v2, p3, :cond_118

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    int-to-char v2, v2

    aput-char v2, p1, v0

    if-ge v2, v7, :cond_15

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_5

    :cond_15
    aget-char v5, p1, v0

    and-int/lit16 v2, v5, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_7e

    if-lt v3, p3, :cond_44

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    add-int/lit8 v4, v3, 0x1

    add-int v2, p2, v3

    aget-byte v3, p0, v2

    and-int/lit16 v2, v3, 0xc0

    if-eq v2, v7, :cond_6f

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    move v2, v4

    goto :goto_5

    :cond_7e
    and-int/lit16 v2, v5, 0xf0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_f1

    add-int/lit8 v2, v3, 0x1

    if-lt v2, p3, :cond_a9

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Third byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v4, p0, v3

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v6, p0, v2

    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v7, :cond_bb

    and-int/lit16 v2, v6, 0xc0

    if-eq v2, v7, :cond_dc

    :cond_bb
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second or third byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dc
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v0

    move v0, v2

    move v2, v3

    goto/16 :goto_5

    :cond_f1
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_118
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lz/b;->c:I

    return v0
.end method

.method public readBoolean()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_10

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :catch_10
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .registers 4

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .registers 5

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz/b;->c:I

    aget-byte v1, v1, v2
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_1b

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .registers 3

    invoke-virtual {p0}, Lz/b;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    invoke-virtual {p0}, Lz/b;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lz/b;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .registers 6

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget v0, p0, Lz/b;->b:I

    iget v1, p0, Lz/b;->c:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1f

    iget v0, p0, Lz/b;->b:I

    iput v0, p0, Lz/b;->c:I

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1f
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lz/b;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lz/b;->c:I

    goto :goto_2
.end method

.method public readInt()I
    .registers 7

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz/b;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lz/b;->a:[B

    iget v3, p0, Lz/b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lz/b;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lz/b;->a:[B

    iget v4, p0, Lz/b;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lz/b;->c:I

    aget-byte v3, v3, v4
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_3a

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    :catch_3a
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 6

    const/16 v4, 0xa

    iget v0, p0, Lz/b;->c:I

    iget v1, p0, Lz/b;->b:I

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_f
    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz/b;->c:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    if-ne v1, v4, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_21
    const/16 v2, 0xd

    if-ne v1, v2, :cond_3e

    iget v1, p0, Lz/b;->c:I

    iget v2, p0, Lz/b;->b:I

    if-ge v1, v2, :cond_39

    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_39

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/b;->c:I

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lz/b;->c:I

    iget v2, p0, Lz/b;->b:I

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public readLong()J
    .registers 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v3, v0, Lz/b;->c:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lz/b;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v5, v0, Lz/b;->c:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lz/b;->c:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v7, v0, Lz/b;->c:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lz/b;->c:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v9, v0, Lz/b;->c:I

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lz/b;->c:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v11, v0, Lz/b;->c:I

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lz/b;->c:I

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v13, v0, Lz/b;->c:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lz/b;->c:I

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lz/b;->a:[B

    move-object/from16 v0, p0

    iget v15, v0, Lz/b;->c:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lz/b;->c:I

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lz/b;->a:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lz/b;->c:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lz/b;->c:I

    aget-byte v16, v16, v17
    :try_end_9d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9d} :catch_cd

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x38

    shl-long v2, v2, v18

    const/16 v18, 0x30

    shl-long v4, v4, v18

    or-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v8, v4

    or-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long v4, v10, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long v4, v12, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long v4, v14, v4

    or-long/2addr v2, v4

    or-long v2, v2, v16

    return-wide v2

    :catch_cd
    move-exception v2

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readShort()S
    .registers 5

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz/b;->c:I

    aget-byte v1, v1, v2
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_1b

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lz/b;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    iget v0, p0, Lz/b;->b:I

    iget v2, p0, Lz/b;->c:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1a

    iget v0, p0, Lz/b;->b:I

    iput v0, p0, Lz/b;->c:I

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1a
    iget-object v0, p0, Lz/b;->d:[C

    array-length v0, v0

    if-le v1, v0, :cond_23

    new-array v0, v1, [C

    iput-object v0, p0, Lz/b;->d:[C

    :cond_23
    iget-object v0, p0, Lz/b;->a:[B

    iget-object v2, p0, Lz/b;->d:[C

    iget v3, p0, Lz/b;->c:I

    invoke-static {v0, v2, v3, v1}, Lz/b;->a([B[CII)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lz/b;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lz/b;->c:I

    goto :goto_8
.end method

.method public readUnsignedByte()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_d

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_d
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lz/b;->a:[B

    iget v1, p0, Lz/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lz/b;->a:[B

    iget v2, p0, Lz/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz/b;->c:I

    aget-byte v1, v1, v2
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_16} :catch_1c

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .registers 4

    iget v0, p0, Lz/b;->b:I

    iget v1, p0, Lz/b;->c:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_d

    iget v0, p0, Lz/b;->b:I

    iget v1, p0, Lz/b;->c:I

    sub-int p1, v0, v1

    :cond_d
    iget v0, p0, Lz/b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lz/b;->c:I

    return p1
.end method
