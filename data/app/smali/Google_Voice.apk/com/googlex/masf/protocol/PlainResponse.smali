.class public Lcom/googlex/masf/protocol/PlainResponse;
.super Lcom/googlex/masf/protocol/Response;


# instance fields
.field private payload:Lcom/googlex/masf/protocol/EncodedPayload;


# direct methods
.method public constructor <init>(Lcom/googlex/masf/DelimitedInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/googlex/masf/protocol/Response;-><init>(Lcom/googlex/masf/DelimitedInputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lcom/googlex/masf/protocol/EncodedPayload;

    invoke-direct {v2, v1, v0, p1}, Lcom/googlex/masf/protocol/EncodedPayload;-><init>(Ljava/lang/String;ILcom/googlex/masf/DelimitedInputStream;)V

    iput-object v2, p0, Lcom/googlex/masf/protocol/PlainResponse;->payload:Lcom/googlex/masf/protocol/EncodedPayload;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/masf/protocol/PlainResponse;->payload:Lcom/googlex/masf/protocol/EncodedPayload;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/EncodedPayload;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/PlainResponse;->payload:Lcom/googlex/masf/protocol/EncodedPayload;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/EncodedPayload;->getStreamLength()I

    move-result v0

    return v0
.end method
