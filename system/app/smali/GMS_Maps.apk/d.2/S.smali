.class final Ld/S;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/f;


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/S;->a:[B

    iput-object v0, p0, Ld/S;->b:[B

    iput-object p1, p0, Ld/S;->a:[B

    return-void
.end method

.method private a([B)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld/S;->a:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Ld/S;->b:[B

    if-nez v0, :cond_f

    iget-object v0, p0, Ld/S;->a:[B

    invoke-direct {p0, v0}, Ld/S;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Ld/S;->b:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ld/S;->a:[B

    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Ld/S;->a:[B

    iput-object v0, p0, Ld/S;->b:[B

    return-void
.end method

.method public declared-synchronized a_()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ld/S;->d()V

    iget-object v0, p0, Ld/S;->b:[B

    array-length v0, v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b_()Ljava/io/InputStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ld/S;->d()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ld/S;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
