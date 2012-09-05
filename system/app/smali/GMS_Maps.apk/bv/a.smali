.class public Lbv/a;
.super LZ/a;

# interfaces
.implements LU/e;
.implements Lbw/n;


# instance fields
.field protected b:I

.field private final c:Lbw/e;

.field private final d:Lbv/g;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Ljava/lang/Exception;

.field private g:Ljava/io/DataInputStream;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, LZ/a;-><init>()V

    iput v0, p0, Lbv/a;->b:I

    iput-boolean v0, p0, Lbv/a;->l:Z

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

    move-result-object v0

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lbv/g;->e()Lbv/g;

    move-result-object v0

    iput-object v0, p0, Lbv/a;->d:Lbv/g;

    new-instance v0, Lbw/e;

    invoke-direct {v0, p1, v2}, Lbw/e;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lbv/a;->c:Lbw/e;

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    invoke-virtual {v0, p0}, Lbw/e;->a(Lbw/n;)V

    if-eqz p2, :cond_50

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lbw/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    invoke-virtual {v0, v2}, Lbw/e;->b(I)V

    :goto_4f
    return-void

    :cond_50
    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lbw/e;->b(Ljava/lang/String;)V

    goto :goto_4f
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

    move-result-object v0

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iput p1, p0, Lbv/a;->b:I

    invoke-virtual {p0}, Lbv/a;->i()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private n()V
    .registers 2

    const-string v0, "AsyncHttpConnection.assertStateInit()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .registers 3

    const-string v0, "AsyncHttpConnection.assertStateCompleted()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    :cond_a
    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_10
    iget-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/DataOutputStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.openDataOutputStream()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->n()V

    iget-object v0, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    :cond_14
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
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

    move-result-object v0

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->o()V

    invoke-direct {p0}, Lbv/a;->p()V

    iget-object v0, p0, Lbv/a;->h:[Ljava/lang/String;

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lbv/a;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lbv/a;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lbv/a;->i:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4a

    :goto_43
    monitor-exit p0

    return-object v0

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_48
    const/4 v0, 0x0

    goto :goto_43

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lbw/m;Lbw/o;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.requestComplete(request, response)"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    :try_start_b
    new-instance v0, Lbw/f;

    invoke-direct {v0, p2}, Lbw/f;-><init>(Lbw/o;)V

    invoke-virtual {v0}, Lbw/f;->a()I

    move-result v1

    iput v1, p0, Lbv/a;->j:I

    invoke-virtual {v0}, Lbw/f;->d()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbv/a;->h:[Ljava/lang/String;

    invoke-virtual {v0}, Lbw/f;->e()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbv/a;->i:[Ljava/lang/String;

    invoke-virtual {v0}, Lbw/f;->b()I

    move-result v1

    iput v1, p0, Lbv/a;->k:I

    invoke-virtual {v0}, Lbw/f;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lbv/a;->g:Ljava/io/DataInputStream;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_47
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2e} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2e} :catch_3f

    const/4 v0, 0x2

    :try_start_2f
    invoke-direct {p0, v0}, Lbv/a;->a(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catch_34
    move-exception v0

    :try_start_35
    iput-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_47

    const/4 v0, 0x2

    :try_start_38
    invoke-direct {p0, v0}, Lbv/a;->a(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_32

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3f
    move-exception v0

    :try_start_40
    iput-object v0, p0, Lbv/a;->f:Ljava/lang/Exception;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_47

    const/4 v0, 0x2

    :try_start_43
    invoke-direct {p0, v0}, Lbv/a;->a(I)V

    goto :goto_32

    :catchall_47
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbv/a;->a(I)V

    throw v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_3c
.end method

.method public declared-synchronized a(Lbw/m;Ljava/lang/Exception;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lbv/a;->f:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbv/a;->a(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.setConnectionProperty()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->n()V

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    invoke-virtual {v0, p1, p2}, Lbw/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.submitRequest()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I

    if-nez v0, :cond_24

    iget-object v0, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    iget-object v1, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbw/e;->a([B)V

    :cond_19
    iget-object v0, p0, Lbv/a;->d:Lbv/g;

    iget-object v1, p0, Lbv/a;->c:Lbw/e;

    invoke-virtual {v0, v1, p1}, Lbv/g;->a(Lbw/m;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbv/a;->a(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/io/DataInputStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.openDataInputStream()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->o()V

    invoke-direct {p0}, Lbv/a;->p()V

    iget-object v0, p0, Lbv/a;->g:Ljava/io/DataInputStream;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbv/a;->g:Ljava/io/DataInputStream;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getResponseCode()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->o()V

    invoke-direct {p0}, Lbv/a;->p()V

    iget v0, p0, Lbv/a;->j:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getContentType()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->o()V

    invoke-direct {p0}, Lbv/a;->p()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lbv/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getLength()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbv/a;->o()V

    invoke-direct {p0}, Lbv/a;->p()V

    iget v0, p0, Lbv/a;->k:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.close()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, LU/k;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbv/a;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lbv/a;->c:Lbw/e;

    invoke-virtual {v0}, Lbw/e;->a()V

    iget-object v0, p0, Lbv/a;->g:Ljava/io/DataInputStream;

    invoke-static {v0}, LU/k;->b(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbv/a;->g:Ljava/io/DataInputStream;

    iget-boolean v0, p0, Lbv/a;->l:Z

    if-nez v0, :cond_25

    const/4 v0, 0x0

    iput-object v0, p0, Lbv/a;->h:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbv/a;->i:[Ljava/lang/String;

    :cond_25
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbv/a;->a(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public declared-synchronized j()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isInit()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isCompleted()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isClosed()"

    invoke-static {v0}, Lbv/a;->b(Ljava/lang/String;)V

    iget v0, p0, Lbv/a;->b:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lbv/a;->a(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
