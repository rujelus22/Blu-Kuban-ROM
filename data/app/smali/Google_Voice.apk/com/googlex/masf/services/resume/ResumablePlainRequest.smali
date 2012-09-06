.class public Lcom/googlex/masf/services/resume/ResumablePlainRequest;
.super Lcom/googlex/masf/services/resume/ResumableRequest;


# instance fields
.field private request:Lcom/googlex/masf/protocol/PlainRequest;


# direct methods
.method public constructor <init>(Lcom/googlex/masf/protocol/PlainRequest;)V
    .registers 2

    invoke-direct {p0}, Lcom/googlex/masf/services/resume/ResumableRequest;-><init>()V

    iput-object p1, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/googlex/masf/protocol/PlainRequest;

    invoke-direct {v0, p1}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/googlex/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/googlex/masf/protocol/PlainRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/googlex/masf/protocol/PlainRequest;

    invoke-direct {v0, p1, p2}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/googlex/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/googlex/masf/protocol/PlainRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    new-instance v0, Lcom/googlex/masf/protocol/PlainRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-direct {p0, v0}, Lcom/googlex/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/googlex/masf/protocol/PlainRequest;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/PlainRequest;->dispose()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/PlainRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/PlainRequest;->getPayload()[B

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/PlainRequest;->getStreamLength()I

    move-result v0

    return v0
.end method

.method public setPayload(Lcom/googlex/masf/InputStreamProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0, p1}, Lcom/googlex/masf/protocol/PlainRequest;->setPayload(Lcom/googlex/masf/InputStreamProvider;)V

    return-void
.end method

.method public setPayload([B)V
    .registers 3

    iget-object v0, p0, Lcom/googlex/masf/services/resume/ResumablePlainRequest;->request:Lcom/googlex/masf/protocol/PlainRequest;

    invoke-virtual {v0, p1}, Lcom/googlex/masf/protocol/PlainRequest;->setPayload([B)V

    return-void
.end method
