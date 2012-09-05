.class public abstract Lcom/google/masf/protocol/Response;
.super Lcom/google/masf/protocol/Block;

# interfaces
.implements Lcom/google/masf/InputStreamProvider;


# static fields
.field private static logger:Lcom/google/debug/LogSource;


# instance fields
.field protected delimitedInputStream:Lcom/google/masf/DelimitedInputStream;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/masf/protocol/Response;

    invoke-static {v0}, Lcom/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/google/masf/protocol/Response;->logger:Lcom/google/debug/LogSource;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/masf/protocol/Block;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/masf/protocol/Response;->setId(I)V

    iput p2, p0, Lcom/google/masf/protocol/Response;->statusCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/masf/DelimitedInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/masf/protocol/Block;-><init>()V

    iput-object p1, p0, Lcom/google/masf/protocol/Response;->delimitedInputStream:Lcom/google/masf/DelimitedInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/masf/protocol/Response;->setId(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/masf/protocol/Response;->statusCode:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_40

    sget-object v0, Lcom/google/masf/protocol/Response;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/masf/protocol/Response;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/masf/protocol/Response;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    return-void

    :catch_40
    move-exception v0

    sget-object v1, Lcom/google/masf/protocol/Response;->logger:Lcom/google/debug/LogSource;

    const-string v2, "Response() - IOException when reading block payload"

    invoke-virtual {v1, v2, v0}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bufferAndDetach()V
    .registers 2

    iget-object v0, p0, Lcom/google/masf/protocol/Response;->delimitedInputStream:Lcom/google/masf/DelimitedInputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/masf/protocol/Response;->delimitedInputStream:Lcom/google/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/google/masf/DelimitedInputStream;->bufferAndDetach()V

    :cond_9
    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/masf/protocol/Response;->statusCode:I

    return v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
