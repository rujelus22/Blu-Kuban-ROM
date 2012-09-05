.class public Lorg/columba/ristretto/message/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected header:Lorg/columba/ristretto/message/Header;

.field protected mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

.field protected source:Lorg/columba/ristretto/io/Source;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "org.columba.ristretto.message"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/message/Message;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/columba/ristretto/message/Message;->source:Lorg/columba/ristretto/io/Source;

    invoke-interface {v1}, Lorg/columba/ristretto/io/Source;->deepClose()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 151
    :goto_5
    return-void

    .line 148
    :catch_6
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lorg/columba/ristretto/message/Message;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->source:Lorg/columba/ristretto/io/Source;

    invoke-interface {v0}, Lorg/columba/ristretto/io/Source;->deepClose()V

    .line 159
    return-void
.end method

.method public getHeader()Lorg/columba/ristretto/message/Header;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->header:Lorg/columba/ristretto/message/Header;

    return-object v0
.end method

.method public getMimePart(I)Lorg/columba/ristretto/message/MimePart;
    .registers 3
    .parameter "i"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

    invoke-virtual {v0, p1}, Lorg/columba/ristretto/message/MimeTree;->get(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v0

    return-object v0
.end method

.method public getMimePartCount()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/MimeTree;->count()I

    move-result v0

    .line 87
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMimePartTree()Lorg/columba/ristretto/message/MimeTree;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

    return-object v0
.end method

.method public getSource()Lorg/columba/ristretto/io/Source;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/columba/ristretto/message/Message;->source:Lorg/columba/ristretto/io/Source;

    return-object v0
.end method

.method public setHeader(Lorg/columba/ristretto/message/Header;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 121
    iput-object p1, p0, Lorg/columba/ristretto/message/Message;->header:Lorg/columba/ristretto/message/Header;

    .line 122
    return-void
.end method

.method public setMimePartTree(Lorg/columba/ristretto/message/MimeTree;)V
    .registers 2
    .parameter "ac"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/columba/ristretto/message/Message;->mimePartCollection:Lorg/columba/ristretto/message/MimeTree;

    .line 104
    return-void
.end method

.method public setSource(Lorg/columba/ristretto/io/Source;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/columba/ristretto/message/Message;->source:Lorg/columba/ristretto/io/Source;

    .line 138
    return-void
.end method
