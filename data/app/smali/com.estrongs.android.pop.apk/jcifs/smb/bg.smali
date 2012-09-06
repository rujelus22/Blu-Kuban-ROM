.class public Ljcifs/smb/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# instance fields
.field private a:Ljcifs/smb/ba;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:Ljcifs/smb/ax;


# direct methods
.method public constructor <init>(Ljcifs/smb/ba;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljcifs/smb/bg;->d:I

    iput v0, p0, Ljcifs/smb/bg;->g:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    iput-object p1, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/bg;->c:I

    :goto_1f
    iget v0, p0, Ljcifs/smb/bg;->c:I

    iget v1, p0, Ljcifs/smb/bg;->d:I

    const/16 v2, 0x80

    iget v3, p0, Ljcifs/smb/bg;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljcifs/smb/ba;->b(IIII)V

    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->w:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/bg;->e:I

    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->v:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/bg;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/bg;->b:J

    return-void

    :cond_47
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/16 v0, 0x17

    iput v0, p0, Ljcifs/smb/bg;->c:I

    new-instance v0, Ljcifs/smb/ax;

    invoke-direct {v0}, Ljcifs/smb/ax;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    const/16 v0, 0x842

    iput v0, p0, Ljcifs/smb/bg;->g:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/bg;->d:I

    goto :goto_1f

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Ljcifs/smb/bg;->h:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljcifs/smb/bg;->a([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public a([BII)I
    .registers 15

    const/4 v0, 0x0

    if-gtz p3, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-wide v6, p0, Ljcifs/smb/bg;->b:J

    iget-object v1, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    invoke-virtual {v1}, Ljcifs/smb/ba;->h()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    iget v2, p0, Ljcifs/smb/bg;->c:I

    const/16 v3, 0x80

    iget v4, p0, Ljcifs/smb/bg;->g:I

    invoke-virtual {v1, v2, v0, v3, v4}, Ljcifs/smb/ba;->b(IIII)V

    :cond_19
    new-instance v8, Ljcifs/smb/am;

    invoke-direct {v8, p1, p2}, Ljcifs/smb/am;-><init>([BI)V

    :cond_1e
    iget v0, p0, Ljcifs/smb/bg;->e:I

    if-le p3, v0, :cond_47

    iget v4, p0, Ljcifs/smb/bg;->e:I

    :goto_24
    iget-object v9, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    new-instance v0, Ljcifs/smb/al;

    iget-object v1, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bg;->b:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/al;-><init>(IJILjcifs/smb/t;)V

    invoke-virtual {v9, v0, v8}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v8, Ljcifs/smb/am;->D:I

    if-gtz v0, :cond_4c

    iget-wide v0, p0, Ljcifs/smb/bg;->b:J

    sub-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    iget-wide v0, p0, Ljcifs/smb/bg;->b:J

    sub-long/2addr v0, v6

    :goto_45
    long-to-int v0, v0

    goto :goto_3

    :cond_47
    move v4, p3

    goto :goto_24

    :cond_49
    const-wide/16 v0, -0x1

    goto :goto_45

    :cond_4c
    iget-wide v1, p0, Ljcifs/smb/bg;->b:J

    int-to-long v9, v0

    add-long/2addr v1, v9

    iput-wide v1, p0, Ljcifs/smb/bg;->b:J

    sub-int/2addr p3, v0

    iget v1, v8, Ljcifs/smb/am;->c:I

    add-int/2addr v1, v0

    iput v1, v8, Ljcifs/smb/am;->c:I

    if-lez p3, :cond_5c

    if-eq v0, v4, :cond_1e

    :cond_5c
    iget-wide v0, p0, Ljcifs/smb/bg;->b:J

    sub-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_3
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Ljcifs/smb/bg;->b:J

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->i()V

    return-void
.end method

.method public final readBoolean()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/bg;->h:[B

    invoke-virtual {p0, v2, v1, v0}, Ljcifs/smb/bg;->a([BII)I

    move-result v2

    if-gez v2, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v2, p0, Ljcifs/smb/bg;->h:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public final readByte()B
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public final readChar()C
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->a([BI)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_13

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->g([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->f([BI)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/bg;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .registers 10

    const/4 v0, 0x0

    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljcifs/smb/bg;->a([BII)I

    move-result v1

    if-gez v1, :cond_13

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    iget-wide v2, p0, Ljcifs/smb/bg;->b:J

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, Ljcifs/smb/bg;->b:J

    if-lt v0, p3, :cond_1

    return-void
.end method

.method public final readInt()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->b([BI)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v2, v3

    :goto_9
    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljcifs/smb/bg;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_38

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :sswitch_17
    move v0, v1

    goto :goto_9

    :sswitch_19
    iget-wide v5, p0, Ljcifs/smb/bg;->b:J

    invoke-virtual {p0}, Ljcifs/smb/bg;->a()I

    move-result v0

    const/16 v7, 0xa

    if-eq v0, v7, :cond_36

    iput-wide v5, p0, Ljcifs/smb/bg;->b:J

    move v0, v1

    goto :goto_9

    :cond_27
    if-ne v2, v3, :cond_31

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    :goto_30
    return-object v0

    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_36
    move v0, v1

    goto :goto_9

    :sswitch_data_38
    .sparse-switch
        -0x1 -> :sswitch_17
        0xa -> :sswitch_17
        0xd -> :sswitch_19
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_13

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->e([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->a([BI)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/bg;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v2, v0}, Ljcifs/smb/bg;->a([BII)I

    const/4 v2, 0x0

    :try_start_b
    invoke-static {v1, v2, v0}, Ljcifs/util/b;->a([BII)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final readUnsignedByte()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->a([BII)I

    move-result v0

    if-gez v0, :cond_12

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v2}, Ljcifs/util/b;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skipBytes(I)I
    .registers 6

    if-lez p1, :cond_9

    iget-wide v0, p0, Ljcifs/smb/bg;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bg;->b:J

    :goto_8
    return p1

    :cond_9
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 14

    if-gtz p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    iget v1, p0, Ljcifs/smb/bg;->c:I

    const/4 v2, 0x0

    const/16 v3, 0x80

    iget v4, p0, Ljcifs/smb/bg;->g:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/ba;->b(IIII)V

    :cond_17
    move v6, p2

    iget v0, p0, Ljcifs/smb/bg;->f:I

    if-le p3, v0, :cond_4e

    iget v7, p0, Ljcifs/smb/bg;->f:I

    :goto_1e
    iget-object v9, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    new-instance v0, Ljcifs/smb/aw;

    iget-object v1, p0, Ljcifs/smb/bg;->a:Ljcifs/smb/ba;

    iget v1, v1, Ljcifs/smb/ba;->j:I

    iget-wide v2, p0, Ljcifs/smb/bg;->b:J

    sub-int v4, p3, v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Ljcifs/smb/aw;-><init>(IJI[BIILjcifs/smb/t;)V

    iget-object v1, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    invoke-virtual {v9, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget-wide v0, p0, Ljcifs/smb/bg;->b:J

    iget-object v2, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bg;->b:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/bg;->i:Ljcifs/smb/ax;

    iget-wide v2, v2, Ljcifs/smb/ax;->b:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    if-gtz p3, :cond_17

    goto :goto_2

    :cond_4e
    move v7, p3

    goto :goto_1e
.end method

.method public final writeBoolean(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/bg;->h:[B

    if-eqz p1, :cond_10

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    aput-byte v0, v3, v2

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void

    :cond_10
    move v0, v2

    goto :goto_7
.end method

.method public final writeByte(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeChar(I)V
    .registers 5

    const/4 v2, 0x0

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/b;->a(S[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-array v5, v4, [B

    new-array v6, v3, [C

    invoke-virtual {p1, v1, v3, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    move v2, v1

    :goto_10
    if-ge v2, v3, :cond_27

    add-int/lit8 v7, v0, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    add-int/lit8 v0, v7, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_27
    invoke-virtual {p0, v5, v1, v4}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeDouble(D)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/b;->a(D[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeFloat(F)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/b;->a(F[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeInt(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/b;->a(I[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeLong(J)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/b;->a(J[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeShort(I)V
    .registers 5

    const/4 v2, 0x0

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/bg;->h:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/b;->a(S[BI)I

    iget-object v0, p0, Ljcifs/smb/bg;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/bg;->write([BII)V

    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    move v3, v2

    :goto_7
    if-ge v1, v4, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x7f

    if-le v0, v5, :cond_1d

    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1b

    const/4 v0, 0x3

    :goto_16
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1b
    const/4 v0, 0x2

    goto :goto_16

    :cond_1d
    const/4 v0, 0x1

    goto :goto_16

    :cond_1f
    new-array v0, v3, [B

    invoke-virtual {p0, v3}, Ljcifs/smb/bg;->writeShort(I)V

    const/4 v1, 0x0

    :try_start_25
    invoke-static {p1, v0, v1, v3}, Ljcifs/util/b;->a(Ljava/lang/String;[BII)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2c

    invoke-virtual {p0, v0, v2, v3}, Ljcifs/smb/bg;->write([BII)V

    return-void

    :catch_2c
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
