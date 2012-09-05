.class public final Lcom/google/android/youtube/googlemobile/masf/a/j;
.super Lcom/google/android/youtube/googlemobile/masf/a/p;


# instance fields
.field a:Lcom/google/android/youtube/googlemobile/masf/e;

.field b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/masf/a/p;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->c(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/googlemobile/masf/e;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a/p;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->c(I)V

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/c;

    invoke-direct {v0, p3}, Lcom/google/android/youtube/googlemobile/masf/c;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/masf/a/j;-><init>(Ljava/lang/String;ILcom/google/android/youtube/googlemobile/masf/e;)V

    return-void
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B

    if-nez v0, :cond_3c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_30
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B

    :cond_3c
    return-void

    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_30
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/p;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized g()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->l()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v1}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I
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

.method protected final declared-synchronized h()Ljava/io/InputStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/j;->l()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/l;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/j;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/e;->c()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
