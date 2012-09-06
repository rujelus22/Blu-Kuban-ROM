.class public Lcom/googlex/masf/protocol/HeaderRequest;
.super Lcom/googlex/masf/protocol/Request;


# instance fields
.field private acceptEncodings:Ljava/lang/String;

.field private block:[B

.field private clientVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v1, 0x2c

    invoke-direct {p0}, Lcom/googlex/masf/protocol/Request;-><init>()V

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

    iput-object v0, p0, Lcom/googlex/masf/protocol/HeaderRequest;->clientVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/googlex/masf/protocol/HeaderRequest;->acceptEncodings:Ljava/lang/String;

    return-void
.end method

.method private generateBlock(J)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/googlex/masf/protocol/HeaderRequest;->clientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v2, p0, Lcom/googlex/masf/protocol/HeaderRequest;->acceptEncodings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private getBlock()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/protocol/HeaderRequest;->block:[B

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    if-nez v0, :cond_20

    invoke-static {}, Lcom/googlex/masf/services/CookieService;->getInstance()Lcom/googlex/masf/services/CookieService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/masf/services/CookieService;->getCookie()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/googlex/masf/protocol/HeaderRequest;->generateBlock(J)[B

    move-result-object v0

    monitor-enter p0

    :try_start_13
    iget-object v3, p0, Lcom/googlex/masf/protocol/HeaderRequest;->block:[B

    if-nez v3, :cond_24

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/googlex/masf/protocol/HeaderRequest;->block:[B

    :cond_1f
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    :cond_20
    return-object v0

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/googlex/masf/protocol/HeaderRequest;->block:[B

    goto :goto_1f

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_27

    throw v0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/googlex/masf/protocol/HeaderRequest;->getBlock()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getRetryTimeout()J
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getStreamLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/googlex/masf/protocol/HeaderRequest;->getBlock()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
