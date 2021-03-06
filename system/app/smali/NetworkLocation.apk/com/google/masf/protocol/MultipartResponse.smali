.class public Lcom/google/masf/protocol/MultipartResponse;
.super Lcom/google/masf/protocol/Response;


# instance fields
.field private final bodyParts:[Lcom/google/masf/protocol/BodyPart;

.field private final numBodyParts:I

.field private final root:Lcom/google/masf/protocol/BodyPart;


# direct methods
.method public constructor <init>(IILcom/google/masf/protocol/BodyPart;[Lcom/google/masf/protocol/BodyPart;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/masf/protocol/Response;-><init>(II)V

    iput-object p3, p0, Lcom/google/masf/protocol/MultipartResponse;->root:Lcom/google/masf/protocol/BodyPart;

    iput-object p4, p0, Lcom/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/masf/protocol/BodyPart;

    array-length v0, p4

    iput v0, p0, Lcom/google/masf/protocol/MultipartResponse;->numBodyParts:I

    return-void
.end method

.method public constructor <init>(Lcom/google/masf/DelimitedInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/masf/protocol/Response;-><init>(Lcom/google/masf/DelimitedInputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_8
    invoke-static {v1}, Lcom/google/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/google/masf/protocol/BodyPart;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->root:Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/google/masf/protocol/MultipartResponse;->numBodyParts:I

    iget v0, p0, Lcom/google/masf/protocol/MultipartResponse;->numBodyParts:I

    new-array v0, v0, [Lcom/google/masf/protocol/BodyPart;

    iput-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/masf/protocol/BodyPart;

    const/4 v0, 0x0

    :goto_1b
    iget v2, p0, Lcom/google/masf/protocol/MultipartResponse;->numBodyParts:I

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/masf/protocol/BodyPart;

    invoke-static {v1}, Lcom/google/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/google/masf/protocol/BodyPart;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :catch_2a
    move-exception v0

    throw v0

    :cond_2c
    return-void
.end method


# virtual methods
.method public getBodyParts()[Lcom/google/masf/protocol/BodyPart;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/google/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->root:Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->getPayloadProvider()Lcom/google/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/masf/protocol/BodyPart;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->root:Lcom/google/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getStreamLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/masf/protocol/MultipartResponse;->root:Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->getPayloadProvider()Lcom/google/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    return v0
.end method
