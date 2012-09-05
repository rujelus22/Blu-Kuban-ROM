.class public final Lcom/google/android/youtube/googlemobile/common/io/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

.field private b:Ljava/util/Hashtable;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->c:Z

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    return-void
.end method

.method private static a([B)Ljava/util/Hashtable;
    .registers 7

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    :try_start_f
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_2f

    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    new-array v5, v5, [B

    invoke-interface {v1, v5}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :catch_29
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lcom/google/android/youtube/googlemobile/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    return-object v2
.end method

.method private declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const-string v1, "Preferences"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/k;->a([B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->c:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2d

    :cond_18
    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const-string v2, "Preferences"

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a([BLjava/lang/String;)I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    goto :goto_15

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 8

    const/16 v6, 0x7d0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4c

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_37

    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_37
    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    array-length v0, v1

    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v4, v1}, Ljava/io/DataOutput;->write([B)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_41} :catch_42

    goto :goto_20

    :catch_42
    move-exception v0

    :try_start_43
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lcom/google/android/youtube/googlemobile/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->c:Z
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    goto :goto_7

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-le v1, v6, :cond_5e

    :goto_56
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->a:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const-string v2, "Preferences"

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a([BLjava/lang/String;)I

    goto :goto_48

    :cond_5e
    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_68} :catch_42

    move-object v0, v1

    goto :goto_56
.end method

.method public final declared-synchronized a(Ljava/lang/String;[B)Z
    .registers 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/k;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->c:Z

    if-nez p2, :cond_16

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1c

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)[B
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/k;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
