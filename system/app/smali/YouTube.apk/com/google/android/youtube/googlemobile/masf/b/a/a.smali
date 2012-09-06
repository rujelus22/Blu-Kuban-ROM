.class public final Lcom/google/android/youtube/googlemobile/masf/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:[Ljava/lang/String;

.field private c:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a()V

    return-void
.end method

.method private a()V
    .registers 13

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const-string v1, "MasfResumableIds"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v5, :cond_45

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    const-wide/32 v10, 0x2932e000

    add-long/2addr v10, v8

    cmp-long v10, v10, v3

    if-ltz v10, :cond_45

    iget-object v10, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    new-instance v11, Lcom/google/android/youtube/googlemobile/masf/b/a/b;

    invoke-direct {v11, v7, v8, v9}, Lcom/google/android/youtube/googlemobile/masf/b/a/b;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v10, v6, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aput-object v6, v7, v0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_42} :catch_4c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_45
    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    goto :goto_a

    :catch_4c
    move-exception v0

    :try_start_4d
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_5f

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    goto :goto_a

    :catchall_5f
    move-exception v0

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private b()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x2932e000

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2f
    return-void
.end method

.method private c(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/b/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/b;->a()J

    move-result-wide v0

    :goto_14
    return-wide v0

    :cond_15
    const-wide/16 v0, -0x1

    goto :goto_14
.end method

.method private c()V
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_17
    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    const-string v3, "MasfResumableIds"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a()V
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_4f} :catch_56

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    :goto_55
    return-void

    :catch_56
    move-exception v0

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    goto :goto_55

    :catchall_5e
    move-exception v0

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    throw v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v2, 0x3f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->d(Ljava/lang/String;)V

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aput-object p1, v0, v4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/b/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/b;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c()V

    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    goto :goto_e
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "RequestIdStore["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b:[Ljava/lang/String;

    array-length v4, v2

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\', \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\', "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/a;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_69
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
