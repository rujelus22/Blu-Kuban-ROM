.class public final Lcom/google/android/youtube/googlemobile/masf/b/a/f;
.super Lcom/google/android/youtube/googlemobile/masf/a/p;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/b/a/g;

.field private b:Ljava/lang/String;

.field private f:Ljava/util/Hashtable;

.field private g:I

.field private h:I

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:S


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/p;-><init>()V

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->h:I

    iput-short v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l:S

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->c(I)V

    return-void
.end method

.method private m()V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "g:rsm"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_25
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    return-void

    :cond_32
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_25
.end method

.method private n()V
    .registers 7

    const/4 v5, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_14
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    if-nez v0, :cond_43

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_1b
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->g:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l:S

    if-lez v0, :cond_29

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->h:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    if-nez v0, :cond_6d

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_30
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    return-void

    :cond_3d
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_14

    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_52

    :cond_6d
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_30
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
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

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I[B)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeServiceRequest.setPayload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->g:I

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeServiceRequest.setResponse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/g;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeServiceRequest.setServerTicket("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->b:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeServiceRequest.setProperty(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeServiceRequest.setRequestType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_22

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l:S

    :goto_1e
    iput p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->h:I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    monitor-exit p0

    return-void

    :cond_22
    const/4 v0, 0x1

    :try_start_23
    iput-short v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l:S
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_1e

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized g()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->n()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->m()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    array-length v1, v1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    add-int/2addr v0, v1

    :cond_20
    monitor-exit p0

    return v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized h()Ljava/io/InputStream;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->n()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->m()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/l;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_43

    :goto_26
    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_28
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/l;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->i:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->j:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->k:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_43

    goto :goto_26

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/google/android/youtube/googlemobile/masf/b/a/g;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/g;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
