.class public Lbw/j;
.super Lbw/p;


# instance fields
.field a:Lbv/f;

.field b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lbw/p;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lbw/j;->c(I)V

    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lbw/j;->b:[B

    if-nez v0, :cond_7

    invoke-direct {p0}, Lbw/j;->g()V

    :cond_7
    return-void
.end method

.method private g()V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lbw/j;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lbw/j;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbw/j;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lbw/j;->a:Lbv/f;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lbw/j;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/j;->b:[B

    return-void

    :cond_39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2c
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lbw/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbw/j;->b:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lbw/p;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbw/j;->b:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()Ljava/io/InputStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lbw/j;->f()V

    iget-object v0, p0, Lbw/j;->a:Lbv/f;

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbw/j;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    new-instance v0, LU/p;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lbw/j;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lbw/j;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->b_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lbw/j;->f()V

    iget-object v0, p0, Lbw/j;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lbw/j;->a:Lbv/f;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lbw/j;->a:Lbv/f;

    invoke-interface {v1}, Lbv/f;->a_()I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
