.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRequestProperties:Z

.field private requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24014
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 25329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    .line 25386
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    .line 24014
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 25346
    if-nez p1, :cond_8

    .line 25347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25349
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 25350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    .line 25352
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25353
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 25388
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 25390
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getSerializedSize()I

    .line 25392
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    return v0
.end method

.method public getRequestList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25332
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 2

    .prologue
    .line 25312
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 25396
    const/4 v2, 0x0

    .line 25397
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 25398
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 25401
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    .line 25402
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_19

    .line 25405
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    :cond_2c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    .line 25406
    return v2
.end method

.method public hasRequestProperties()Z
    .registers 2

    .prologue
    .line 25311
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 25414
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 25418
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25419
    :sswitch_d
    return-object p0

    .line 25424
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    .line 25425
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25426
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    goto :goto_0

    .line 25430
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;-><init>()V

    .line 25431
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 25432
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    goto :goto_0

    .line 25414
    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x13 -> :sswitch_1a
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
    .line 24012
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 25314
    if-nez p1, :cond_8

    .line 25315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25317
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties:Z

    .line 25318
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 25319
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
    .line 25378
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 25379
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25381
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    .line 25382
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_16

    .line 25384
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    :cond_27
    return-void
.end method
