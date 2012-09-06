.class abstract Ly;
.super Ljava/io/Reader;


# instance fields
.field protected final a:Lz;

.field protected b:Ljava/io/InputStream;

.field protected c:[B

.field protected d:I

.field protected e:I

.field protected f:[C


# direct methods
.method protected constructor <init>(Lz;Ljava/io/InputStream;[BII)V
    .registers 7

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly;->f:[C

    iput-object p1, p0, Ly;->a:Lz;

    iput-object p2, p0, Ly;->b:Ljava/io/InputStream;

    iput-object p3, p0, Ly;->c:[B

    iput p4, p0, Ly;->d:I

    iput p5, p0, Ly;->e:I

    return-void
.end method

.method protected static b()V
    .registers 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Ly;->c:[B

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Ly;->c:[B

    iget-object v1, p0, Ly;->a:Lz;

    invoke-virtual {v1, v0}, Lz;->a([B)V

    :cond_c
    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Ly;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    iput-object v1, p0, Ly;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ly;->a()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_d
    return-void
.end method

.method public read()I
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Ly;->f:[C

    if-nez v0, :cond_a

    new-array v0, v2, [C

    iput-object v0, p0, Ly;->f:[C

    :cond_a
    iget-object v0, p0, Ly;->f:[C

    invoke-virtual {p0, v0, v1, v2}, Ly;->read([CII)I

    move-result v0

    if-gtz v0, :cond_14

    const/4 v0, -0x1

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Ly;->f:[C

    aget-char v0, v0, v1

    goto :goto_13
.end method
