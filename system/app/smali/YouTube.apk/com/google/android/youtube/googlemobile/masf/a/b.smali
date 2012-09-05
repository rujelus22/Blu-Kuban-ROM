.class public final Lcom/google/android/youtube/googlemobile/masf/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/e;


# instance fields
.field private final a:Lcom/google/android/youtube/googlemobile/masf/e;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/googlemobile/masf/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/youtube/googlemobile/masf/a/b;
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

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_18
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;

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

    new-instance v6, Lcom/google/android/youtube/googlemobile/masf/d;

    invoke-direct {v6, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/d;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/a/c;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/youtube/googlemobile/masf/a/c;-><init>(Ljava/lang/String;ILcom/google/android/youtube/googlemobile/masf/d;)V

    invoke-virtual {v6}, Lcom/google/android/youtube/googlemobile/masf/d;->b()V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;-><init>(Ljava/lang/String;Lcom/google/android/youtube/googlemobile/masf/e;)V

    iput-object v5, v1, Lcom/google/android/youtube/googlemobile/masf/a/b;->b:Ljava/util/Hashtable;

    iput-object v4, v1, Lcom/google/android/youtube/googlemobile/masf/a/b;->d:Ljava/lang/String;

    return-object v1

    :cond_73
    move-object v2, v0

    goto :goto_18
.end method

.method private declared-synchronized f()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->e()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/a/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v2

    if-lez v2, :cond_35

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_35
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->e:[B
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->d:Ljava/lang/String;
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


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->a()V

    return-void
.end method

.method public final b()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->f()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->e:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v1}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->f()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/l;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->e:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/e;->c()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/youtube/googlemobile/masf/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->a:Lcom/google/android/youtube/googlemobile/masf/e;

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/util/Hashtable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->b:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/b;->b:Ljava/util/Hashtable;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
