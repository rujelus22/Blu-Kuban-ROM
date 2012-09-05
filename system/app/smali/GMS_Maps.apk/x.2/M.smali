.class Lx/M;
.super Lx/f;


# instance fields
.field final synthetic d:Lx/L;


# direct methods
.method constructor <init>(Lx/L;)V
    .registers 2

    iput-object p1, p0, Lx/M;->d:Lx/L;

    invoke-direct {p0, p1}, Lx/f;-><init>(Lx/d;)V

    return-void
.end method


# virtual methods
.method protected b(I)Lt/ae;
    .registers 9

    const/16 v3, 0x100

    iget-object v0, p0, Lx/M;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lt/p;

    invoke-virtual {p0, p1}, Lx/M;->a(I)Lx/r;

    move-result-object v1

    invoke-virtual {v1}, Lx/r;->a()Lt/af;

    move-result-object v1

    invoke-virtual {p0}, Lx/M;->c()I

    move-result v2

    iget-object v4, p0, Lx/M;->b:[[B

    aget-object v5, v4, p1

    iget-object v4, p0, Lx/M;->d:Lx/L;

    iget-object v6, v4, Lx/L;->a:Lcom/google/android/maps/driveabout/vector/cU;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lt/p;-><init>(Lt/af;III[BLcom/google/android/maps/driveabout/vector/cU;)V

    goto :goto_9
.end method

.method protected c(I)[B
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lx/M;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    move-object v0, v6

    :goto_8
    return-object v0

    :cond_9
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lx/M;->b:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_15
    invoke-virtual {p0, p1}, Lx/M;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    invoke-virtual {p0}, Lx/M;->c()I

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x100

    iget-object v4, p0, Lx/M;->b:[[B

    aget-object v4, v4, p1

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static/range {v0 .. v5}, Lt/p;->a(Lt/af;III[BLjava/io/DataOutput;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_8

    :catch_36
    move-exception v0

    move-object v0, v6

    goto :goto_8
.end method
