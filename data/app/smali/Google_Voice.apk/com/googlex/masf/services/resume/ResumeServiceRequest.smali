.class public Lcom/googlex/masf/services/resume/ResumeServiceRequest;
.super Lcom/googlex/masf/protocol/SimpleRequest;


# static fields
.field private static final RESUME_SERVICE_URI:Ljava/lang/String; = "g:rsm"


# instance fields
.field private payload:[B

.field private payloadHeader:[B

.field private payloadMetaData:[B

.field private payloadOffset:I

.field private properties:Ljava/util/Hashtable;

.field private requestType:I

.field private response:Lcom/googlex/masf/services/resume/ResumeServiceResponse;

.field private serverTicket:Ljava/lang/String;

.field private version:S


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/googlex/masf/protocol/SimpleRequest;-><init>()V

    iput v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->requestType:I

    iput-short v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->version:S

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->setBlockType(I)V

    const-string v0, "ResumeServiceRequest()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private generatePayloadHeader()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ResumeServiceRequest.generatePayloadHeader()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "g:rsm"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->version:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    return-void

    :cond_37
    iget-object v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2a
.end method

.method private generatePayloadMetaData()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "ResumeServiceRequest.generatePayloadMetaData()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->serverTicket:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->serverTicket:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_19
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_48

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_20
    iget v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadOffset:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->version:S

    if-lez v0, :cond_2e

    iget v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->requestType:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_2e
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    if-nez v0, :cond_72

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_35
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    return-void

    :cond_42
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_19

    :cond_48
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_57

    :cond_72
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_35
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "ResumeServiceRequest.dispose()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/googlex/masf/protocol/SimpleRequest;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "ResumeServiceRequest.getBodyInputStream()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->generatePayloadMetaData()V

    :cond_d
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->generatePayloadHeader()V

    :cond_14
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    if-nez v0, :cond_2d

    new-instance v0, Lcom/googlex/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/googlex/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_48

    :goto_2b
    monitor-exit p0

    return-object v0

    :cond_2d
    :try_start_2d
    new-instance v0, Lcom/googlex/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/googlex/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_48

    goto :goto_2b

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyStreamLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "ResumeServiceRequest.getBodyStreamLength()"

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->generatePayloadMetaData()V

    :cond_d
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->generatePayloadHeader()V

    :cond_14
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadMetaData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B

    array-length v1, v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    add-int/2addr v0, v1

    :cond_25
    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponse()Lcom/googlex/masf/services/resume/ResumeServiceResponse;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->response:Lcom/googlex/masf/services/resume/ResumeServiceResponse;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
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

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadHeader:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(I[B)V
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

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iput p1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payloadOffset:I

    iput-object p2, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->payload:[B
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
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

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_32

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    :cond_32
    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestType(I)V
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

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_26

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->version:S

    :goto_22
    iput p1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->requestType:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2a

    monitor-exit p0

    return-void

    :cond_26
    const/4 v0, 0x1

    :try_start_27
    iput-short v0, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->version:S
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    goto :goto_22

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResponse(Lcom/googlex/masf/services/resume/ResumeServiceResponse;)V
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

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->response:Lcom/googlex/masf/services/resume/ResumeServiceResponse;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServerTicket(Ljava/lang/String;)V
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

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/googlex/masf/services/resume/ResumeServiceRequest;->serverTicket:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
