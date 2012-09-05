.class public abstract Lbw/p;
.super Lbw/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private f:I

.field private g:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lbw/m;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lbw/m;-><init>()V

    invoke-virtual {p0, p1}, Lbw/p;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbw/p;->d(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbw/p;->g:[B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lbw/p;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a_()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lbw/p;->u()[B

    iget-object v0, p0, Lbw/p;->g:[B

    array-length v0, v0

    invoke-virtual {p0}, Lbw/p;->c()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Ljava/io/InputStream;
.end method

.method public declared-synchronized b_()Ljava/io/InputStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lbw/p;->u()[B

    new-instance v0, LU/p;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lbw/p;->g:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lbw/p;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract c()I
.end method

.method public final declared-synchronized c(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lbw/p;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized d(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lbw/p;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected u()[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lbw/p;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, p0, Lbw/p;->f:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/p;->g:[B

    iget-object v0, p0, Lbw/p;->g:[B

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbw/p;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lbw/p;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
