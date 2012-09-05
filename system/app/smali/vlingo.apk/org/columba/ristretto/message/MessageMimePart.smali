.class public Lorg/columba/ristretto/message/MessageMimePart;
.super Lorg/columba/ristretto/message/StreamableMimePart;
.source "MessageMimePart.java"


# instance fields
.field private message:Lorg/columba/ristretto/message/Message;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/columba/ristretto/message/StreamableMimePart;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/StreamableMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Lorg/columba/ristretto/io/SourceInputStream;

    iget-object v1, p0, Lorg/columba/ristretto/message/MessageMimePart;->message:Lorg/columba/ristretto/message/Message;

    invoke-virtual {v1}, Lorg/columba/ristretto/message/Message;->getSource()Lorg/columba/ristretto/io/Source;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/SourceInputStream;-><init>(Lorg/columba/ristretto/io/Source;)V

    return-object v0
.end method

.method public getMessage()Lorg/columba/ristretto/message/Message;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/columba/ristretto/message/MessageMimePart;->message:Lorg/columba/ristretto/message/Message;

    return-object v0
.end method

.method public setMessage(Lorg/columba/ristretto/message/Message;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/columba/ristretto/message/MessageMimePart;->message:Lorg/columba/ristretto/message/Message;

    .line 66
    return-void
.end method
