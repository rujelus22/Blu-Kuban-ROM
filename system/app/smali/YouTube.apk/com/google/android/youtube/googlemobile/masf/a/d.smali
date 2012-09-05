.class public final Lcom/google/android/youtube/googlemobile/masf/a/d;
.super Lcom/google/android/youtube/googlemobile/masf/a/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v1, 0x2c

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/m;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method private g()[B
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->f:[B

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_46

    if-nez v0, :cond_45

    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a()Lcom/google/android/youtube/googlemobile/masf/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->b()J

    move-result-wide v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    monitor-enter p0

    :try_start_38
    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->f:[B

    if-nez v3, :cond_49

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->f:[B

    :cond_44
    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_4c

    :cond_45
    return-object v0

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/d;->f:[B
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4c

    goto :goto_44

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/d;->g()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/d;->g()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final e()J
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final f()Z
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
