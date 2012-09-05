.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCategoriesResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14445
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->categories_:Ljava/util/List;

    .line 14500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->cachedSize:I

    .line 14445
    return-void
.end method


# virtual methods
.method public addCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14466
    if-nez p1, :cond_8

    .line 14467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14469
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->categories_:Ljava/util/List;

    .line 14472
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14473
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 14502
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 14504
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->getSerializedSize()I

    .line 14506
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->cachedSize:I

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14452
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 14510
    const/4 v2, 0x0

    .line 14511
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->getCategoriesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    .line 14512
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 14515
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :cond_1c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->cachedSize:I

    .line 14516
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14524
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 14528
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14529
    :sswitch_d
    return-object p0

    .line 14534
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;-><init>()V

    .line 14535
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 14536
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->addCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    goto :goto_0

    .line 14524
    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 14443
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14495
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;->getCategoriesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    .line 14496
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 14498
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :cond_19
    return-void
.end method
