.class public Lcom/google/api/client/http/protobuf/ProtoHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "ProtoHttpContent.java"


# instance fields
.field private final message:Lcom/google/protobuf/MessageLite;

.field private type:Ljava/lang/String;


# virtual methods
.method public getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method
