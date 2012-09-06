.class public Lcom/googlex/masf/protocol/HttpRequest;
.super Lcom/googlex/masf/protocol/SimpleRequest;


# instance fields
.field private bodyPartCount:[B

.field private bodyParts:Ljava/util/Vector;

.field private contentType:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private payloadHeader:[B

.field private payloadMetaData:[B

.field private payloadProvider:Lcom/googlex/masf/InputStreamProvider;

.field private properties:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/googlex/masf/protocol/SimpleRequest;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/googlex/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/googlex/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/googlex/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/googlex/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/googlex/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/googlex/masf/InputStreamProvider;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/googlex/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/googlex/masf/protocol/HttpRequest;->setBlockType(I)V

    invoke-direct {p0, p3}, Lcom/googlex/masf/protocol/HttpRequest;->setPayloadProvider(Lcom/googlex/masf/InputStreamProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    new-instance v0, Lcom/googlex/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p3}, Lcom/googlex/masf/ByteArrayInputStreamProvider;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;ILcom/googlex/masf/InputStreamProvider;)V

    return-void
.end method

.method private generateBlockData()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->generateBodyPartCount()[B

    :cond_b
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->generatePayloadMetaData()[B

    :cond_12
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->generatePayloadHeader()[B

    :cond_19
    return-void
.end method

.method private setPayloadProvider(Lcom/googlex/masf/InputStreamProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Lcom/googlex/masf/protocol/BodyPart;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v0, :cond_11

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/googlex/masf/protocol/HttpRequest;->setBlockType(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    :cond_11
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/BodyPart;->dispose()V
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

.method public flagSecure()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The secure flag is set  based on the service uri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateBodyPartCount()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    return-object v0
.end method

.method protected generatePayloadHeader()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/HttpRequest;->getServiceVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v3}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v3

    add-int/2addr v0, v3

    :cond_31
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_34
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    return-object v0
.end method

.method protected generatePayloadMetaData()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_19
    invoke-static {v2, v0}, Lcom/googlex/masf/protocol/HttpUtil;->writeContentType(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_21
    iget-object v3, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_29
    invoke-static {v2, v3, v0}, Lcom/googlex/masf/protocol/HttpUtil;->writeProperties(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_39
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    if-lez v0, :cond_4e

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

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

.method public declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/googlex/masf/protocol/HttpRequest;->generateBlockData()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_55

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3a
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/BodyPart;->getInputStream()Ljava/io/InputStream;

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

    new-instance v1, Lcom/googlex/common/io/SequenceInputStream;

    invoke-direct {v1, v0}, Lcom/googlex/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getBodyParts()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    return-object v0
.end method

.method public declared-synchronized getBodyStreamLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/googlex/masf/protocol/HttpRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyPartCount:[B

    array-length v2, v2

    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    :goto_22
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/BodyPart;->getStreamLength()I
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

.method public declared-synchronized getPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/googlex/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProperties()Ljava/util/Hashtable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setBodyParts(Ljava/util/Vector;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    return-void
.end method

.method public declared-synchronized setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p2, p0, Lcom/googlex/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    :cond_20
    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/googlex/masf/protocol/SimpleRequest;->setId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadHeader:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/masf/protocol/HttpRequest;->method:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Lcom/googlex/masf/InputStreamProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/googlex/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/googlex/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/googlex/masf/protocol/HttpRequest;->payloadProvider:Lcom/googlex/masf/InputStreamProvider;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setServiceUri(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/googlex/common/util/text/UriUtil;->isHttps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/googlex/masf/protocol/SimpleRequest;->flagSecure()V

    :cond_a
    invoke-super {p0, p1}, Lcom/googlex/masf/protocol/SimpleRequest;->setServiceUri(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
