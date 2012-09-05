.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstruments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    }
.end annotation


# instance fields
.field private billingInstrument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private defaultBillingInstrumentId_:Ljava/lang/String;

.field private hasDefaultBillingInstrumentId:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    .line 30
    return-void
.end method


# virtual methods
.method public addBillingInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .registers 3
    .parameter "value"

    .prologue
    .line 261
    if-nez p1, :cond_8

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    .line 267
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-object p0
.end method

.method public getBillingInstrumentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    if-gez v0, :cond_7

    .line 320
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getSerializedSize()I

    .line 322
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    return v0
.end method

.method public getDefaultBillingInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getBillingInstrumentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    .line 328
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 331
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 332
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getDefaultBillingInstrumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 335
    :cond_2d
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    .line 336
    return v2
.end method

.method public hasDefaultBillingInstrumentId()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 344
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_24

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    :sswitch_d
    return-object p0

    .line 354
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;-><init>()V

    .line 355
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 356
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->addBillingInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    goto :goto_0

    .line 360
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->setDefaultBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    goto :goto_0

    .line 344
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0x23 -> :sswitch_e
        0x42 -> :sswitch_1b
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
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .registers 3
    .parameter "value"

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId:Z

    .line 283
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    .line 284
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
    .line 308
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getBillingInstrumentList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    .line 309
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 311
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 312
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getDefaultBillingInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 314
    :cond_28
    return-void
.end method
