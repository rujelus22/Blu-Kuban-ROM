.class public Lorg/apache/james/mime4j/parser/MimeStreamParser;
.super Ljava/lang/Object;


# instance fields
.field private contentDecoding:Z

.field private handler:Lorg/apache/james/mime4j/parser/ContentHandler;

.field private final mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    :goto_c
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return-void

    :cond_17
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    goto :goto_c
.end method


# virtual methods
.method public isContentDecoding()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return v0
.end method

.method public isRaw()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->isRaw()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->parse(Ljava/io/InputStream;)V

    :goto_5
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_27
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_37
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v2, v1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    :goto_3c
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->next()I

    goto :goto_5

    :cond_42
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_37

    :pswitch_49
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->endBodyPart()V

    goto :goto_3c

    :pswitch_4f
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->endHeader()V

    goto :goto_3c

    :pswitch_55
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMessage()V

    goto :goto_3c

    :pswitch_5b
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMultipart()V

    goto :goto_3c

    :pswitch_61
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_6d
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->field(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_3c

    :pswitch_79
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->preamble(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_85
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->raw(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_91
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->startBodyPart()V

    goto :goto_3c

    :pswitch_97
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->startHeader()V

    goto :goto_3c

    :pswitch_9d
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMessage()V

    goto :goto_3c

    :pswitch_a3
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_3c

    :pswitch_af
    return-void

    :pswitch_data_b0
    .packed-switch -0x1
        :pswitch_af
        :pswitch_9d
        :pswitch_55
        :pswitch_85
        :pswitch_97
        :pswitch_6d
        :pswitch_4f
        :pswitch_a3
        :pswitch_5b
        :pswitch_79
        :pswitch_61
        :pswitch_91
        :pswitch_49
        :pswitch_27
    .end packed-switch
.end method

.method public setContentDecoding(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    return-void
.end method

.method public setRaw(Z)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->setRecursionMode(I)V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->stop()V

    return-void
.end method
