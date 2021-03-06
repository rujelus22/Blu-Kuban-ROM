.class public Lcom/google/masf/services/resume/ResumeServiceResponse;
.super Ljava/lang/Object;


# instance fields
.field private exception:Ljava/lang/Exception;

.field private response:Lcom/google/masf/protocol/Response;

.field private responseHeaderCount:I

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseMissingChunkCount:I

.field private responseMissingChunkLengths:[I

.field private responseMissingChunkOffsets:[I

.field private responseServerTicket:Ljava/lang/String;

.field private responseStatusCode:I

.field private responseStreamLength:I


# direct methods
.method public constructor <init>(Lcom/google/masf/protocol/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/masf/protocol/Response;

    invoke-virtual {p1}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_a0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseServerTicket:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    if-lez v0, :cond_61

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderValues:[Ljava/lang/String;

    move v0, v1

    :goto_46
    iget v2, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    if-ge v0, v2, :cond_61

    iget-object v2, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseHeaderValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_61
    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    if-lez v0, :cond_98

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    :goto_79
    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    if-ge v1, v0, :cond_98

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    aput v0, v3, v1

    iget-object v3, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_98
    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseStreamLength:I

    :cond_a0
    invoke-virtual {p1}, Lcom/google/masf/protocol/Response;->dispose()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/masf/protocol/Response;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/masf/protocol/Response;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Response;->dispose()V

    :cond_9
    return-void
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMissingChunkCount()I
    .registers 2

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    return v0
.end method

.method public getMissingChunkLengths()[I
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    return-object v0
.end method

.method public getMissingChunkOffsets()[I
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    return-object v0
.end method

.method public getServerTicket()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseServerTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    return v0
.end method

.method public hasException()Z
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
