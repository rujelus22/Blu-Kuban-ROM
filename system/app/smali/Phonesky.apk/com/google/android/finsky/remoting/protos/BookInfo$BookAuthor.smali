.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookAuthor"
.end annotation


# instance fields
.field private cachedSize:I

.field private deprecatedQuery_:Ljava/lang/String;

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasDeprecatedQuery:Z

.field private hasDocid:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    .line 167
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    if-gez v0, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getSerializedSize()I

    .line 261
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    return v0
.end method

.method public getDeprecatedQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 268
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 272
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDeprecatedQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 276
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    .line 280
    return v0
.end method

.method public hasDeprecatedQuery()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 289
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    :sswitch_d
    return-object p0

    .line 299
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 303
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setDeprecatedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 307
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 308
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 289
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecatedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .registers 3
    .parameter "value"

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery:Z

    .line 214
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .registers 3
    .parameter "value"

    .prologue
    .line 193
    if-nez p1, :cond_8

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid:Z

    .line 197
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 198
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .registers 3
    .parameter "value"

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName:Z

    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    .line 178
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
    .line 243
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 246
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDeprecatedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 249
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 250
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 252
    :cond_2a
    return-void
.end method
