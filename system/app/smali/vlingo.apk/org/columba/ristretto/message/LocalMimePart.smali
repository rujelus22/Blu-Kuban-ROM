.class public Lorg/columba/ristretto/message/LocalMimePart;
.super Lorg/columba/ristretto/message/StreamableMimePart;
.source "LocalMimePart.java"


# instance fields
.field private body:Lorg/columba/ristretto/io/Source;

.field private source:Lorg/columba/ristretto/io/Source;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/StreamableMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 61
    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/columba/ristretto/message/LocalMimePart;->body:Lorg/columba/ristretto/io/Source;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)V
    .registers 3
    .parameter "header"
    .parameter "body"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/StreamableMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 72
    iput-object p2, p0, Lorg/columba/ristretto/message/LocalMimePart;->body:Lorg/columba/ristretto/io/Source;

    .line 73
    return-void
.end method


# virtual methods
.method public getBody()Lorg/columba/ristretto/io/Source;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/columba/ristretto/message/LocalMimePart;->body:Lorg/columba/ristretto/io/Source;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lorg/columba/ristretto/io/SourceInputStream;

    iget-object v1, p0, Lorg/columba/ristretto/message/LocalMimePart;->body:Lorg/columba/ristretto/io/Source;

    invoke-interface {v1}, Lorg/columba/ristretto/io/Source;->fromActualPosition()Lorg/columba/ristretto/io/Source;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/SourceInputStream;-><init>(Lorg/columba/ristretto/io/Source;)V

    return-object v0
.end method

.method public getSource()Lorg/columba/ristretto/io/Source;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/columba/ristretto/message/LocalMimePart;->source:Lorg/columba/ristretto/io/Source;

    return-object v0
.end method

.method public setBody(Lorg/columba/ristretto/io/Source;)V
    .registers 2
    .parameter "body"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/columba/ristretto/message/LocalMimePart;->body:Lorg/columba/ristretto/io/Source;

    .line 112
    return-void
.end method

.method public setSource(Lorg/columba/ristretto/io/Source;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/columba/ristretto/message/LocalMimePart;->source:Lorg/columba/ristretto/io/Source;

    .line 89
    return-void
.end method
