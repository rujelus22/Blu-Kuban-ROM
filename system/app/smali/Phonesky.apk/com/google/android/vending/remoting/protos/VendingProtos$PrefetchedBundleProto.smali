.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrefetchedBundleProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRequest:Z

.field private hasResponse:Z

.field private request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

.field private response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23471
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 23476
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    .line 23496
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    .line 23538
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    .line 23471
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 23540
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 23542
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getSerializedSize()I

    .line 23544
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    return v0
.end method

.method public getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .registers 2

    .prologue
    .line 23478
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    return-object v0
.end method

.method public getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .registers 2

    .prologue
    .line 23498
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 23548
    const/4 v0, 0x0

    .line 23549
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23550
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23553
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23554
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23557
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    .line 23558
    return v0
.end method

.method public hasRequest()Z
    .registers 2

    .prologue
    .line 23477
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest:Z

    return v0
.end method

.method public hasResponse()Z
    .registers 2

    .prologue
    .line 23497
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 23566
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 23570
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23571
    :sswitch_d
    return-object p0

    .line 23576
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;-><init>()V

    .line 23577
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23578
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->setRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    goto :goto_0

    .line 23582
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;-><init>()V

    .line 23583
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23584
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->setResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    goto :goto_0

    .line 23566
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
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
    .line 23469
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    move-result-object v0

    return-object v0
.end method

.method public setRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 23480
    if-nez p1, :cond_8

    .line 23481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23483
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest:Z

    .line 23484
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    .line 23485
    return-object p0
.end method

.method public setResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 23500
    if-nez p1, :cond_8

    .line 23501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23503
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse:Z

    .line 23504
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    .line 23505
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
    .line 23530
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23531
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23533
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23534
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23536
    :cond_1c
    return-void
.end method
