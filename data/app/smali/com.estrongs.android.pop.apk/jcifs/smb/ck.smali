.class Ljcifs/smb/ck;
.super Ljcifs/smb/bc;


# instance fields
.field b:Ljava/lang/Object;

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>(Ljcifs/smb/bf;)V
    .registers 4

    iget v0, p1, Ljcifs/smb/bf;->r:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0}, Ljcifs/smb/bc;-><init>(Ljcifs/smb/ba;I)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/ck;->c:[B

    iget v0, p1, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x600

    const/16 v1, 0x600

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Ljcifs/smb/ck;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Ljcifs/smb/ck;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Ljcifs/smb/ck;->a:Ljcifs/smb/ba;

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    const-string v1, "Named Pipe available() does not apply to TRANSACT Named Pipes"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/smb/ck;->f:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_3a

    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/ck;->f:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_17

    iget v0, p0, Ljcifs/smb/ck;->f:I

    add-int/2addr v0, p3

    :cond_17
    iget-object v1, p0, Ljcifs/smb/ck;->c:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/ck;->c:[B

    array-length v0, v1

    iget v2, p0, Ljcifs/smb/ck;->d:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/ck;->f:I

    if-le v2, v0, :cond_61

    iget v2, p0, Ljcifs/smb/ck;->d:I

    iget-object v3, p0, Ljcifs/smb/ck;->c:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljcifs/smb/ck;->c:[B

    iget v3, p0, Ljcifs/smb/ck;->f:I

    sub-int/2addr v3, v0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_34
    iput v4, p0, Ljcifs/smb/ck;->d:I

    iget v0, p0, Ljcifs/smb/ck;->f:I

    iput v0, p0, Ljcifs/smb/ck;->e:I

    :cond_3a
    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/smb/ck;->e:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_6b

    iget-object v1, p0, Ljcifs/smb/ck;->c:[B

    iget v2, p0, Ljcifs/smb/ck;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    iget-object v2, p0, Ljcifs/smb/ck;->c:[B

    sub-int v0, p3, v0

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_52
    iget v0, p0, Ljcifs/smb/ck;->e:I

    add-int/2addr v0, p3

    iget-object v1, p0, Ljcifs/smb/ck;->c:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/ck;->e:I

    iget v0, p0, Ljcifs/smb/ck;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Ljcifs/smb/ck;->f:I

    return p3

    :cond_61
    iget v0, p0, Ljcifs/smb/ck;->d:I

    iget-object v2, p0, Ljcifs/smb/ck;->c:[B

    iget v3, p0, Ljcifs/smb/ck;->f:I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    :cond_6b
    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    iget v1, p0, Ljcifs/smb/ck;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_52
.end method

.method public read()I
    .registers 5

    iget-object v1, p0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget v0, p0, Ljcifs/smb/ck;->f:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    :try_start_e
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    iget v2, p0, Ljcifs/smb/ck;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, Ljcifs/smb/ck;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljcifs/smb/ck;->c:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Ljcifs/smb/ck;->d:I

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_18

    return v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/ck;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, 0x0

    if-gtz p3, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    monitor-enter v1

    :goto_7
    :try_start_7
    iget v0, p0, Ljcifs/smb/ck;->f:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_7

    :catch_11
    move-exception v0

    :try_start_12
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Ljcifs/smb/ck;->c:[B

    array-length v0, v0

    iget v2, p0, Ljcifs/smb/ck;->d:I

    sub-int v2, v0, v2

    iget v0, p0, Ljcifs/smb/ck;->f:I

    if-le p3, v0, :cond_53

    iget v0, p0, Ljcifs/smb/ck;->f:I

    :goto_2c
    iget v3, p0, Ljcifs/smb/ck;->f:I

    if-le v3, v2, :cond_55

    if-le v0, v2, :cond_55

    iget-object v3, p0, Ljcifs/smb/ck;->c:[B

    iget v4, p0, Ljcifs/smb/ck;->d:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p2, v2

    iget-object v4, p0, Ljcifs/smb/ck;->c:[B

    const/4 v5, 0x0

    sub-int v2, v0, v2

    invoke-static {v4, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_43
    iget v2, p0, Ljcifs/smb/ck;->f:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljcifs/smb/ck;->f:I

    iget v2, p0, Ljcifs/smb/ck;->d:I

    add-int/2addr v2, v0

    iget-object v3, p0, Ljcifs/smb/ck;->c:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Ljcifs/smb/ck;->d:I

    monitor-exit v1

    goto :goto_3

    :cond_53
    move v0, p3

    goto :goto_2c

    :cond_55
    iget-object v2, p0, Ljcifs/smb/ck;->c:[B

    iget v3, p0, Ljcifs/smb/ck;->d:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5c
    .catchall {:try_start_1f .. :try_end_5c} :catchall_1c

    goto :goto_43
.end method
