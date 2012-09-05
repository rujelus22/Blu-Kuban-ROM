.class public LaJ/X;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaJ/P;

.field private b:[LaJ/U;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(LaJ/P;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaJ/X;->c:J

    iput-object p1, p0, LaJ/X;->a:LaJ/P;

    return-void
.end method


# virtual methods
.method public a()LaJ/P;
    .registers 2

    iget-object v0, p0, LaJ/X;->a:LaJ/P;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, LaJ/X;->d:J

    return-void
.end method

.method protected a(J[LaJ/U;)V
    .registers 4

    iput-wide p1, p0, LaJ/X;->c:J

    iput-object p3, p0, LaJ/X;->b:[LaJ/U;

    return-void
.end method

.method public a([B)V
    .registers 9

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v2, 0x54524133

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eq v2, v3, :cond_1d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad traffic header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    array-length v2, p1

    sub-int/2addr v2, v4

    invoke-static {p1, v4, v2, v1}, Lak/k;->a([BIII)[B

    move-result-object v1

    invoke-static {v1}, Lak/k;->a([B)Ljava/io/DataInput;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    new-array v5, v4, [LaJ/U;

    :goto_39
    if-ge v0, v4, :cond_44

    invoke-static {v1, v2, v3}, LaJ/U;->a(Ljava/io/DataInput;II)LaJ/U;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_44
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v5}, LaJ/X;->a(J[LaJ/U;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, LaJ/X;->b:[LaJ/U;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()[LaJ/U;
    .registers 2

    iget-object v0, p0, LaJ/X;->b:[LaJ/U;

    return-object v0
.end method

.method public d()J
    .registers 3

    invoke-virtual {p0}, LaJ/X;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, LaJ/X;->c:J

    goto :goto_12
.end method

.method e()J
    .registers 3

    iget-wide v0, p0, LaJ/X;->d:J

    return-wide v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, LaJ/X;->b:[LaJ/U;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaJ/X;->b:[LaJ/U;

    array-length v0, v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
