.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Citation"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTitleLocalized:Z

.field private hasUrl:Z

.field private titleLocalized_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    .line 149
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    if-gez v0, :cond_7

    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getSerializedSize()I

    .line 212
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 218
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getTitleLocalized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 222
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_23
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    .line 226
    return v0
.end method

.method public getTitleLocalized()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTitleLocalized()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 234
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    :sswitch_d
    return-object p0

    .line 244
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->setTitleLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    goto :goto_0

    .line 248
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    goto :goto_0

    .line 234
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x5a -> :sswitch_e
        0x62 -> :sswitch_16
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
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v0

    return-object v0
.end method

.method public setTitleLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .registers 3
    .parameter "value"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized:Z

    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .registers 3
    .parameter "value"

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl:Z

    .line 176
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

    .line 177
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
    .line 198
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getTitleLocalized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 202
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 204
    :cond_1e
    return-void
.end method
