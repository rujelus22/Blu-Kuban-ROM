.class abstract Lcom/a/a/a/t;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a;


# instance fields
.field private a:La/a/a/e;

.field protected b:Z

.field protected c:J

.field protected d:I

.field protected e:La/b/a;

.field protected f:Lcom/a/a/a/i;

.field protected g:I

.field protected h:I

.field protected i:Z

.field private j:Ljava/io/InputStream;

.field private k:Ljava/io/OutputStream;

.field private l:Ljava/util/Vector;


# direct methods
.method public constructor <init>(La/a/a/e;Lcom/a/a/a/i;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Lcom/a/a/a/t;->d:I

    if-nez p2, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "obexConnectionParams is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-boolean v2, p0, Lcom/a/a/a/t;->b:Z

    iput-object p1, p0, Lcom/a/a/a/t;->a:La/a/a/e;

    iput-object p2, p0, Lcom/a/a/a/t;->f:Lcom/a/a/a/i;

    iget v0, p2, Lcom/a/a/a/i;->c:I

    iput v0, p0, Lcom/a/a/a/t;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/a/a/t;->c:J

    iput v2, p0, Lcom/a/a/a/t;->g:I

    iput v2, p0, Lcom/a/a/a/t;->h:I

    :try_start_24
    invoke-interface {p1}, La/a/a/e;->c()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;

    invoke-interface {p1}, La/a/a/e;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {p0}, Lcom/a/a/a/t;->e()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_30

    :catch_36
    move-exception v0

    const-string v1, "close error"

    invoke-static {v1, v0}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :catchall_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {p0}, Lcom/a/a/a/t;->e()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :goto_41
    throw v0

    :catch_42
    move-exception v1

    const-string v2, "close error"

    invoke-static {v2, v1}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method static c()Lcom/a/a/a/j;
    .registers 1

    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0}, Lcom/a/a/a/j;-><init>()V

    return-object v0
.end method

.method public static d()La/b/c;
    .registers 1

    invoke-static {}, Lcom/a/a/a/t;->c()Lcom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method static f(La/b/c;)V
    .registers 1

    invoke-static {p0}, Lcom/a/a/a/j;->a(La/b/c;)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/a/a/a/j;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/a/a/a/t;->a(I[BLcom/a/a/a/j;)V

    return-void
.end method

.method protected declared-synchronized a(I[BLcom/a/a/a/j;)V
    .registers 11

    const-wide/16 v5, -0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/a/a/a/t;->i:Z

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/a/a/a/t;->c:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_f

    const/16 v1, 0x8

    :cond_f
    if-eqz p2, :cond_13

    array-length v0, p2

    add-int/2addr v1, v0

    :cond_13
    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz p3, :cond_1e

    invoke-static {p3}, Lcom/a/a/a/j;->c(La/b/c;)[B

    move-result-object v0

    array-length v2, v0

    add-int/2addr v1, v2

    :cond_1e
    iget v2, p0, Lcom/a/a/a/t;->d:I

    if-le v1, v2, :cond_46

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t sent more data than in MTU, len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/a/t;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_46
    :try_start_46
    iget v2, p0, Lcom/a/a/a/t;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/a/t;->g:I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, p1, v1}, Lcom/a/a/a/j;->a(Ljava/io/OutputStream;II)V

    if-eqz p2, :cond_59

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_59
    iget-wide v3, p0, Lcom/a/a/a/t;->c:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_66

    const/16 v3, 0xcb

    iget-wide v4, p0, Lcom/a/a/a/t;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/a/a/a/j;->a(Ljava/io/OutputStream;IJ)V

    :cond_66
    if-eqz v0, :cond_6b

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "obex send ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/a/a/a/t;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    invoke-static {v0, v3, v4, v5}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "obex sent ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/a/a/a/t;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") len"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    if-eqz p3, :cond_d0

    invoke-virtual {p3}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    if-nez v0, :cond_c6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    :cond_c6
    invoke-virtual {p3}, Lcom/a/a/a/j;->e()Ljava/util/Enumeration;

    move-result-object v1

    :goto_ca
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_cd
    .catchall {:try_start_46 .. :try_end_cd} :catchall_43

    move-result v0

    if-nez v0, :cond_d2

    :cond_d0
    monitor-exit p0

    return-void

    :cond_d2
    :try_start_d2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v2, Lcom/a/a/a/c;

    invoke-direct {v2, v0}, Lcom/a/a/a/c;-><init>([B)V

    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_e2
    .catchall {:try_start_d2 .. :try_end_e2} :catchall_43

    goto :goto_ca
.end method

.method a(Lcom/a/a/a/j;Lcom/a/a/a/j;)V
    .registers 5

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/a/a/a/j;->f()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/a/a/a/t;->a(Lcom/a/a/a/j;La/b/f;)Z

    return-void
.end method

.method a(Lcom/a/a/a/j;La/b/f;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/a/a/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/a/a/a/t;->e:La/b/a;

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator required for authentication"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication challenges had not been sent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/a/a/a/t;->e:La/b/a;

    iget-object v1, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    invoke-static {p1, v0, p2, v1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/j;La/b/a;La/b/f;Ljava/util/Vector;)Z
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_3a

    move-result v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_39
    :goto_39
    return v0

    :catchall_3a
    move-exception v0

    throw v0

    :cond_3c
    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/a/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_50

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    const/4 v0, 0x1

    goto :goto_39
.end method

.method b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/a/a/a/t;->e:La/b/a;

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator required for authentication"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/a/a/a/t;->e:La/b/a;

    invoke-static {p1, p2, v0}, Lcom/a/a/a/b;->a(Lcom/a/a/a/j;Lcom/a/a/a/j;La/b/a;)V

    :cond_17
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/t;->a:La/a/a/e;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/t;->a:La/a/a/e;

    iput-object v0, p0, Lcom/a/a/a/t;->a:La/a/a/e;

    :try_start_5
    iget-object v0, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    :cond_11
    iget-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/t;->k:Ljava/io/OutputStream;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    :cond_1d
    if-eqz v1, :cond_22

    invoke-interface {v1}, La/a/a/e;->e()V

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    if-eqz v1, :cond_29

    invoke-interface {v1}, La/a/a/e;->e()V

    :cond_29
    throw v0
.end method

.method protected declared-synchronized f()[B
    .registers 7

    const/4 v5, 0x3

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/a/a/a/t;->i:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read packet out of order"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    iput-boolean v0, p0, Lcom/a/a/a/t;->i:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/a/a/a/t;->f:Lcom/a/a/a/i;

    invoke-static {v1, v2, v0}, Lcom/a/a/a/v;->a(Ljava/io/InputStream;Lcom/a/a/a/i;[B)V

    iget v1, p0, Lcom/a/a/a/t;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/t;->h:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obex received ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/a/a/a/t;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/a/a/a/v;->a(B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Lcom/a/a/a/v;->a(BB)I
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_e

    move-result v2

    if-ne v2, v5, :cond_59

    :goto_57
    monitor-exit p0

    return-object v0

    :cond_59
    if-lt v2, v5, :cond_60

    const v1, 0xffff

    if-le v2, v1, :cond_75

    :cond_60
    :try_start_60
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid packet length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    new-array v1, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/a/a/a/t;->f:Lcom/a/a/a/i;

    array-length v5, v0

    array-length v0, v0

    sub-int v0, v2, v0

    invoke-static {v3, v4, v1, v5, v0}, Lcom/a/a/a/v;->a(Ljava/io/InputStream;Lcom/a/a/a/i;[BII)V

    iget-object v0, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_9c

    const-string v0, "has more data after read"

    iget-object v2, p0, Lcom/a/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/a/a/a;->a(Ljava/lang/String;J)V
    :try_end_9c
    .catchall {:try_start_60 .. :try_end_9c} :catchall_e

    :cond_9c
    move-object v0, v1

    goto :goto_57
.end method
