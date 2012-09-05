.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPendingNotifications:Z

.field private pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25454
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 26749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    .line 26783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    .line 26827
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    .line 25454
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26888
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 26766
    if-nez p1, :cond_8

    .line 26767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26769
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    .line 26772
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26773
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 26829
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 26831
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getSerializedSize()I

    .line 26833
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    return v0
.end method

.method public getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .registers 2

    .prologue
    .line 26785
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .registers 3
    .parameter "index"

    .prologue
    .line 26756
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 26754
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26752
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 26837
    const/4 v2, 0x0

    .line 26838
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    .line 26839
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 26842
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 26843
    const/16 v3, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26846
    :cond_2d
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    .line 26847
    return v2
.end method

.method public hasPendingNotifications()Z
    .registers 2

    .prologue
    .line 26784
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 26855
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 26859
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26860
    :sswitch_d
    return-object p0

    .line 26865
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;-><init>()V

    .line 26866
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 26867
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->addResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    goto :goto_0

    .line 26871
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :sswitch_1b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;-><init>()V

    .line 26872
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26873
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->setPendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    goto :goto_0

    .line 26855
    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
        0x132 -> :sswitch_1b
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
    .line 25452
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 26787
    if-nez p1, :cond_8

    .line 26788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26790
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications:Z

    .line 26791
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    .line 26792
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
    .line 26819
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    .line 26820
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 26822
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 26823
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26825
    :cond_28
    return-void
.end method
