.class public Lbw/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/f;


# instance fields
.field private final a:Lbv/f;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbv/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lbw/b;->a:Lbv/f;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lbw/b;
    .registers 10

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_73

    invoke-static {v1}, Lbw/g;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_18
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lbw/g;->a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " => "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24

    :cond_53
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lbv/e;

    invoke-direct {v6, v3, v0}, Lbv/e;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lbw/c;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v6}, Lbw/c;-><init>(Ljava/lang/String;ILbv/e;)V

    invoke-virtual {v6}, Lbv/e;->b()V

    new-instance v1, Lbw/b;

    invoke-direct {v1, v2, v0}, Lbw/b;-><init>(Ljava/lang/String;Lbv/f;)V

    iput-object v5, v1, Lbw/b;->b:Ljava/util/Hashtable;

    iput-object v4, v1, Lbw/b;->d:Ljava/lang/String;

    return-object v1

    :cond_73
    move-object v2, v0

    goto :goto_18
.end method

.method private declared-synchronized h()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lbw/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbw/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbw/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbw/b;->g()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbw/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lbw/b;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lbw/b;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    if-lez v2, :cond_37

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/b;->e:[B
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lbw/b;->a:Lbv/f;

    invoke-interface {v0}, Lbv/f;->a()V

    return-void
.end method

.method public a_()I
    .registers 3

    invoke-direct {p0}, Lbw/b;->h()V

    iget-object v0, p0, Lbw/b;->e:[B

    array-length v0, v0

    iget-object v1, p0, Lbw/b;->a:Lbv/f;

    invoke-interface {v1}, Lbv/f;->a_()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b_()Ljava/io/InputStream;
    .registers 4

    invoke-direct {p0}, Lbw/b;->h()V

    new-instance v0, LU/p;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lbw/b;->e:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lbw/b;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->b_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbw/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbw/b;->d:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    const-string v0, ""
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbw/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lbv/f;
    .registers 2

    iget-object v0, p0, Lbw/b;->a:Lbv/f;

    return-object v0
.end method

.method public declared-synchronized g()Ljava/util/Hashtable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbw/b;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbw/b;->b:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Lbw/b;->b:Ljava/util/Hashtable;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
