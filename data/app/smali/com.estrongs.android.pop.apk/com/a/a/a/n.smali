.class Lcom/a/a/a/n;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Lcom/a/a/a/l;

.field private b:[B

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method constructor <init>(ILcom/a/a/a/l;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/n;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/a/a/a/n;->e:Z

    iput-object p2, p0, Lcom/a/a/a/n;->a:Lcom/a/a/a/l;

    add-int/lit8 v0, p1, -0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/n;->b:[B

    iput v1, p0, Lcom/a/a/a/n;->c:I

    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 8

    iget-object v1, p0, Lcom/a/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/a/a/a/n;->c:I

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/a/a/a/n;->b:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/a/a/a/n;->c:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/a/a/a/n;->a:Lcom/a/a/a/l;

    invoke-interface {v2, p1, v0}, Lcom/a/a/a/l;->a(Z[B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/n;->c:I

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/n;->e:Z

    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/a/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/a/a/a/n;->e:Z

    iget-object v0, p0, Lcom/a/a/a/n;->a:Lcom/a/a/a/l;

    invoke-interface {v0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/a/a/n;->a(Z)V

    :cond_16
    monitor-exit v1

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public flush()V
    .registers 2

    iget v0, p0, Lcom/a/a/a/n;->c:I

    if-lez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/n;->a(Z)V

    :cond_8
    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/n;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/n;->a:Lcom/a/a/a/l;

    invoke-interface {v1}, Lcom/a/a/a/l;->j()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/a/a/a/n;->e:Z

    if-eqz v1, :cond_15

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-nez p1, :cond_1d

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1d
    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2c

    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2c
    if-nez p3, :cond_2f

    :goto_2e
    return-void

    :cond_2f
    iget-object v2, p0, Lcom/a/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v2

    move v1, v0

    :goto_33
    if-lt v1, p3, :cond_3a

    :try_start_35
    monitor-exit v2

    goto :goto_2e

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/a/a/a/n;->b:[B

    array-length v0, v0

    iget v3, p0, Lcom/a/a/a/n;->c:I

    sub-int/2addr v0, v3

    sub-int v3, p3, v1

    if-ge v3, v0, :cond_46

    sub-int v0, p3, v1

    :cond_46
    add-int v3, p2, v1

    iget-object v4, p0, Lcom/a/a/a/n;->b:[B

    iget v5, p0, Lcom/a/a/a/n;->c:I

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/a/a/a/n;->c:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/a/a/a/n;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/a/n;->c:I

    iget-object v3, p0, Lcom/a/a/a/n;->b:[B

    array-length v3, v3

    if-ne v1, v3, :cond_67

    iget-object v1, p0, Lcom/a/a/a/n;->a:Lcom/a/a/a/l;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/a/a/a/n;->b:[B

    invoke-interface {v1, v3, v4}, Lcom/a/a/a/l;->a(Z[B)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/a/n;->c:I
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_37

    :cond_67
    move v1, v0

    goto :goto_33
.end method
