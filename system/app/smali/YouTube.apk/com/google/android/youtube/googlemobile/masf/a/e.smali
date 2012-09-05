.class public final Lcom/google/android/youtube/googlemobile/masf/a/e;
.super Lcom/google/android/youtube/googlemobile/masf/a/p;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/e;

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

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/p;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/masf/a/p;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->c(I)V

    return-void
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    if-nez v0, :cond_2a

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    if-nez v0, :cond_8a

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->f:Ljava/lang/String;

    :goto_47
    invoke-static {v2, v0}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_4f
    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->g:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->f:Ljava/lang/String;

    :goto_57
    invoke-static {v2, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_67
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v0

    if-lez v0, :cond_7c

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_7c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    :cond_8a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    if-nez v0, :cond_d0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->k()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v3}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v3

    add-int/2addr v0, v3

    :cond_bf
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_c2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    :cond_d0
    return-void

    :cond_d1
    const-string v0, "multipart/related"

    goto/16 :goto_47

    :cond_d5
    const/4 v0, 0x0

    goto :goto_57

    :cond_d7
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_67
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->a()V
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

.method public final declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/p;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->f:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->g:Ljava/util/Hashtable;

    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/c;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/googlemobile/masf/c;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->l()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v1}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    array-length v1, v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_22
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->b()I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3e

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

.method public final declared-synchronized h()Ljava/io/InputStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/e;->l()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->i:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->j:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    if-eqz v0, :cond_55

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->k:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/e;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->c()Ljava/io/InputStream;

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

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/l;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>([Ljava/io/InputStream;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method
