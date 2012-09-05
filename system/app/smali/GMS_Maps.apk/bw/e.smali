.class public Lbw/e;
.super Lbw/p;


# instance fields
.field private a:Lbv/f;

.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Hashtable;

.field private h:Ljava/util/Vector;

.field private i:[B

.field private j:[B

.field private k:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lbw/p;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lbw/e;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lbw/e;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lbw/p;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lbw/e;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lbw/e;->c(I)V

    return-void
.end method

.method private x()V
    .registers 2

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbw/e;->k:[B

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lbw/e;->h()[B

    :cond_b
    iget-object v0, p0, Lbw/e;->j:[B

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lbw/e;->g()[B

    :cond_12
    iget-object v0, p0, Lbw/e;->i:[B

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lbw/e;->f()[B

    :cond_19
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbw/e;->i:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lbw/e;->j:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lbw/e;->k:[B

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbw/b;

    invoke-virtual {v0}, Lbw/b;->a()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_29

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
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

    iput-object v0, p0, Lbw/e;->i:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Laa/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lbw/p;->e()V

    :cond_a
    invoke-super {p0, p1}, Lbw/p;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p2, p0, Lbw/e;->f:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lbw/e;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbw/e;->g:Ljava/util/Hashtable;

    :cond_20
    iget-object v0, p0, Lbw/e;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lbv/c;

    invoke-direct {v0, p1}, Lbv/c;-><init>([B)V

    iput-object v0, p0, Lbw/e;->a:Lbv/f;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/io/InputStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lbw/e;->x()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbw/e;->i:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbw/e;->j:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    invoke-interface {v0}, Lbv/f;->b_()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_55

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbw/e;->k:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3a
    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbw/b;

    invoke-virtual {v0}, Lbw/b;->b_()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    :cond_55
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, LU/p;

    invoke-direct {v1, v0}, LU/p;-><init>([Ljava/io/InputStream;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lbw/e;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .registers 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lbw/e;->x()V

    iget-object v0, p0, Lbw/e;->i:[B

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lbw/e;->j:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lbw/e;->a:Lbv/f;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lbw/e;->a:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    iget-object v2, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lbw/e;->k:[B

    array-length v2, v2

    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    :goto_22
    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbw/b;

    invoke-virtual {v0}, Lbw/b;->a_()I
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_3e

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_3b
    move v0, v1

    :cond_3c
    monitor-exit p0

    return v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The secure flag is set  based on the service uri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lbw/e;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lbw/e;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbw/e;->w()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-nez v0, :cond_34

    iget-object v0, p0, Lbw/e;->j:[B

    array-length v0, v0

    iget-object v3, p0, Lbw/e;->a:Lbv/f;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lbw/e;->a:Lbv/f;

    invoke-interface {v3}, Lbv/f;->a_()I

    move-result v3

    add-int/2addr v0, v3

    :cond_31
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_34
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/e;->i:[B

    iget-object v0, p0, Lbw/e;->i:[B

    return-object v0
.end method

.method protected g()[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lbw/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lbw/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lbw/e;->f:Ljava/lang/String;

    :goto_19
    invoke-static {v2, v0}, Lbw/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_21
    iget-object v3, p0, Lbw/e;->g:Ljava/util/Hashtable;

    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-nez v0, :cond_60

    iget-object v0, p0, Lbw/e;->f:Ljava/lang/String;

    :goto_29
    invoke-static {v2, v3, v0}, Lbw/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    invoke-interface {v0}, Lbv/f;->a_()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_39
    iget-object v0, p0, Lbw/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbw/e;->a:Lbv/f;

    invoke-interface {v0}, Lbv/f;->a_()I

    move-result v0

    if-lez v0, :cond_4e

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/e;->j:[B

    iget-object v0, p0, Lbw/e;->j:[B

    return-object v0

    :cond_5d
    const-string v0, "multipart/related"

    goto :goto_19

    :cond_60
    const/4 v0, 0x0

    goto :goto_29

    :cond_62
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_39
.end method

.method protected h()[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lbw/e;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbw/e;->k:[B

    iget-object v0, p0, Lbw/e;->k:[B

    return-object v0
.end method
