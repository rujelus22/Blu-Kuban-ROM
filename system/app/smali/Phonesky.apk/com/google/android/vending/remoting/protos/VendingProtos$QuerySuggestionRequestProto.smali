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
    .line 17851
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    .line 17878
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    .line 17916
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    .line 17851
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17919
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17921
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getSerializedSize()I

    .line 17923
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17862
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .registers 2

    .prologue
    .line 17880
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17928
    const/4 v0, 0x0

    .line 17929
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17930
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17933
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17934
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getRequestType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17937
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->cachedSize:I

    .line 17938
    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .prologue
    .line 17863
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery:Z

    return v0
.end method

.method public hasRequestType()Z
    .registers 2

    .prologue
    .line 17879
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
    .line 17946
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17947
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 17951
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17952
    :sswitch_d
    return-object p0

    .line 17957
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    goto :goto_0

    .line 17961
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->setRequestType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    goto :goto_0

    .line 17947
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
    .line 17849
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery:Z

    .line 17866
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->query_:Ljava/lang/String;

    .line 17867
    return-object p0
.end method

.method public setRequestType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType:Z

    .line 17883
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->requestType_:I

    .line 17884
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
    .line 17908
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17909
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17911
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17912
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;->getRequestType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17914
    :cond_1c
    return-void
.end method
