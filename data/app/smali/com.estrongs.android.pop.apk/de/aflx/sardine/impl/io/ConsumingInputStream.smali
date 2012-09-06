.class public Lde/aflx/sardine/impl/io/ConsumingInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private delegate:Ljava/io/InputStream;

.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 5

    iget-object v0, p0, Lde/aflx/sardine/impl/io/ConsumingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
