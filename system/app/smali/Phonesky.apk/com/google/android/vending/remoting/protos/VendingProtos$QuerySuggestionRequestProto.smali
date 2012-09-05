.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuerySuggestionRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasQuery:Z

.field private hasRequestType:Z

.field private query_:Ljava/lang/String;

.field private requestType_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17366
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    .line 17393
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    .line 17430
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    .line 17366
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17432
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17434
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getSerializedSize()I

    .line 17436
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17377
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .registers 2

    .prologue
    .line 17395
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17440
    const/4 v0, 0x0

    .line 17441
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17442
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17445
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17446
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getRequestType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17449
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    .line 17450
    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .prologue
    .line 17378
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery:Z

    return v0
.end method

.method public hasRequestType()Z
    .registers 2

    .prologue
    .line 17394
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17458
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 17462
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17463
    :sswitch_d
    return-object p0

    .line 17468
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    goto :goto_0

    .line 17472
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->setRequestType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    goto :goto_0

    .line 17458
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
    .line 17364
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery:Z

    .line 17381
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    .line 17382
    return-object p0
.end method

.method public setRequestType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType:Z

    .line 17398
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    .line 17399
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
    .line 17422
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17423
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17425
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17426
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getRequestType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17428
    :cond_1c
    return-void
.end method
