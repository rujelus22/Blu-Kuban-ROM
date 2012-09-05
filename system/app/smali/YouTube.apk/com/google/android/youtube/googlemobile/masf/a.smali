.class public Lcom/google/android/youtube/googlemobile/masf/a;
.super Lcom/google/android/youtube/googlemobile/common/util/a;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/e;
.implements Lcom/google/android/youtube/googlemobile/masf/a/n;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/a/e;

.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:Ljava/lang/Exception;

.field private d:Ljava/io/DataInputStream;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/util/a;-><init>()V

    iput v2, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/a/e;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/googlemobile/masf/a/e;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V

    if-eqz p2, :cond_44

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/a/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/a/e;->b(I)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/a/e;->a(Ljava/lang/String;)V

    goto :goto_43
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput p1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->g()V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/a/e;->a([B)V

    :cond_14
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/f;->b()Lcom/google/android/youtube/googlemobile/masf/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .registers 3

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/io/DataOutputStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    :cond_c
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->l()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->m()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->e:[Ljava/lang/String;

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    :goto_24
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_44

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->f:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_46

    :goto_3f
    monitor-exit p0

    return-object v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_44
    const/4 v0, 0x0

    goto :goto_3f

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    :try_start_6
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/a/f;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/googlemobile/masf/a/f;-><init>(Lcom/google/android/youtube/googlemobile/masf/a/o;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/f;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->g:I

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/f;->d()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->e:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/f;->e()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->f:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/f;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a;->h:I

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/f;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->d:Ljava/io/DataInputStream;
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_42
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_29} :catch_3a

    const/4 v0, 0x2

    :try_start_2a
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_37

    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_42

    const/4 v0, 0x2

    :try_start_33
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_2d

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3a
    move-exception v0

    :try_start_3b
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_42

    const/4 v0, 0x2

    :try_start_3e
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V

    goto :goto_2d

    :catchall_42
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V

    throw v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_37
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/a;->c:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/io/DataInputStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->l()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->m()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->d:Ljava/io/DataInputStream;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->d:Ljava/io/DataInputStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->l()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->m()V

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->g:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->l()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->m()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->l()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->m()V

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->h:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->a:Lcom/google/android/youtube/googlemobile/masf/a/e;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->d:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->d:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->f:[Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a;->a(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
