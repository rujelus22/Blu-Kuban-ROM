.class public Lde/a/a/a/a/j;
.super Ljava/io/OutputStream;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/OutputStream;

.field protected c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/a/a/a/a/j;->d:Ljava/util/List;

    iput-object p1, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 11

    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_c
    if-lt v2, v4, :cond_14

    new-array v5, v0, [B

    move v2, v1

    :goto_11
    if-lt v1, v4, :cond_25

    return-object v5

    :cond_14
    aget-char v5, v3, v2

    if-gt v5, v8, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    if-gt v5, v9, :cond_22

    add-int/lit8 v0, v0, 0x2

    goto :goto_1a

    :cond_22
    add-int/lit8 v0, v0, 0x3

    goto :goto_1a

    :cond_25
    aget-char v6, v3, v1

    if-gt v6, v8, :cond_32

    add-int/lit8 v0, v2, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_11

    :cond_32
    if-gt v6, v9, :cond_47

    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v0, v6, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 v2, v6, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    goto :goto_2e

    :cond_47
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v7, v6, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    goto :goto_2e
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v4, 0x0

    iget v1, p0, Lde/a/a/a/a/j;->c:I

    iget v2, p0, Lde/a/a/a/a/j;->c:I

    iget-object v0, p0, Lde/a/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    sub-int/2addr v0, v2

    const-wide/32 v2, 0x6054b50

    invoke-virtual {p0, v2, v3}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p0, v4}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p0, v4}, Lde/a/a/a/a/j;->a(I)V

    iget-object v2, p0, Lde/a/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lde/a/a/a/a/j;->a(I)V

    iget-object v2, p0, Lde/a/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lde/a/a/a/a/j;->a(I)V

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lde/a/a/a/a/j;->a(J)V

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    iget-object v0, p0, Lde/a/a/a/a/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lde/a/a/a/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_44
    array-length v1, v0

    invoke-virtual {p0, v1}, Lde/a/a/a/a/j;->a(I)V

    array-length v1, v0

    if-lez v1, :cond_4e

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->write([B)V

    :cond_4e
    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/a/a/a/a/i;

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->c(Lde/a/a/a/a/i;)V

    goto :goto_b

    :cond_5e
    new-array v0, v4, [B

    goto :goto_44
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lde/a/a/a/a/j;->c:I

    return-void
.end method

.method public a(J)V
    .registers 8

    const-wide/16 v3, 0xff

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    const/4 v1, 0x0

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lde/a/a/a/a/j;->c:I

    return-void
.end method

.method public a(Lde/a/a/a/a/i;)V
    .registers 4

    const-wide/32 v0, 0x8074b50

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCrc()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    return-void
.end method

.method protected a(Ljava/util/zip/ZipEntry;)V
    .registers 3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->write([B)V

    :cond_9
    return-void
.end method

.method protected b(Lde/a/a/a/a/i;)V
    .registers 4

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCrc()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/a/a/a/a/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getExtra()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    :goto_4d
    return-void

    :cond_4e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    goto :goto_4d
.end method

.method protected c(Lde/a/a/a/a/i;)V
    .registers 5

    const/4 v2, 0x0

    const-wide/32 v0, 0x2014b50

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p0, p1}, Lde/a/a/a/a/j;->b(Lde/a/a/a/a/i;)V

    invoke-virtual {p0, v2}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p0, v2}, Lde/a/a/a/a/j;->a(I)V

    invoke-virtual {p0, v2}, Lde/a/a/a/a/j;->a(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->e()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/a/a/a/a/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->write([B)V

    invoke-virtual {p0, p1}, Lde/a/a/a/a/j;->a(Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d(Lde/a/a/a/a/i;)V
    .registers 4

    iget-object v0, p0, Lde/a/a/a/a/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    invoke-virtual {p1, v0}, Lde/a/a/a/a/i;->a(I)V

    const-wide/32 v0, 0x4034b50

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    invoke-virtual {p0, p1}, Lde/a/a/a/a/j;->b(Lde/a/a/a/a/i;)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/a/a/a/a/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/a/a/a/a/j;->write([B)V

    invoke-virtual {p0, p1}, Lde/a/a/a/a/j;->a(Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 4

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/j;->a(J)V

    return-void
.end method

.method public write([B)V
    .registers 4

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lde/a/a/a/a/j;->c:I

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lde/a/a/a/a/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lde/a/a/a/a/j;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lde/a/a/a/a/j;->c:I

    return-void
.end method
