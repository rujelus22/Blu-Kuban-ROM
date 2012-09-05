.class public final Lcom/google/android/finsky/remoting/protos/Common$Docid;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Docid"
.end annotation


# instance fields
.field private backendDocid_:Ljava/lang/String;

.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasBackendDocid:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 237
    return-void
.end method


# virtual methods
.method public getBackend()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    return v0
.end method

.method public getBackendDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    if-gez v0, :cond_7

    .line 322
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getSerializedSize()I

    .line 324
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 330
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 334
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 338
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 342
    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    return v0
.end method

.method public hasBackend()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    return v0
.end method

.method public hasBackendDocid()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 350
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    :sswitch_d
    return-object p0

    .line 360
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 364
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 368
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 350
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    .line 281
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 282
    return-object p0
.end method

.method public setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    .line 247
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    .line 264
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 265
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 310
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 311
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 313
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 314
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 316
    :cond_2a
    return-void
.end method
