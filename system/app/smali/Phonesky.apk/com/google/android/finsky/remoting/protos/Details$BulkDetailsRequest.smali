.class public final Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private docid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasIncludeChildDocs:Z

.field private includeChildDocs_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    .line 244
    return-void
.end method


# virtual methods
.method public addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 265
    if-nez p1, :cond_8

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    .line 271
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    if-gez v0, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getSerializedSize()I

    .line 325
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    return v0
.end method

.method public getDocidList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    return-object v0
.end method

.method public getIncludeChildDocs()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, size:I
    const/4 v0, 0x0

    .line 333
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_a

    .line 337
    .end local v1           #element:Ljava/lang/String;
    :cond_1c
    add-int/2addr v3, v0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 340
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 341
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getIncludeChildDocs()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 344
    :cond_38
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    .line 345
    return v3
.end method

.method public hasIncludeChildDocs()Z
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 354
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    :sswitch_d
    return-object p0

    .line 364
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_0

    .line 368
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->setIncludeChildDocs(Z)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_0

    .line 354
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    move-result-object v0

    return-object v0
.end method

.method public setIncludeChildDocs(Z)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    .line 287
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    .line 288
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_8

    .line 313
    .end local v0           #element:Ljava/lang/String;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 314
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getIncludeChildDocs()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 316
    :cond_27
    return-void
.end method
