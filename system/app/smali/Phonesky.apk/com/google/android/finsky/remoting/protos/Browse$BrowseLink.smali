.class public final Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowseLink"
.end annotation


# instance fields
.field private cachedSize:I

.field private dataUrl_:Ljava/lang/String;

.field private hasDataUrl:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 225
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    if-gez v0, :cond_7

    .line 286
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getSerializedSize()I

    .line 288
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    return v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 294
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 298
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 302
    return v0
.end method

.method public hasDataUrl()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 310
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    :sswitch_d
    return-object p0

    .line 320
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 324
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 310
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1a -> :sswitch_16
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
    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    move-result-object v0

    return-object v0
.end method

.method public setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .registers 3
    .parameter "value"

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    .line 252
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .registers 3
    .parameter "value"

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    .line 235
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 236
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
    .line 274
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 277
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 278
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 280
    :cond_1c
    return-void
.end method
