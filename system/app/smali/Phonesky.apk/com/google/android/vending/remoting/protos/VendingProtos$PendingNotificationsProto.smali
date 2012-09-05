.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingNotificationsProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNextCheckMillis:Z

.field private nextCheckMillis_:J

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23606
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 23610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    .line 23644
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    .line 23682
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    .line 23606
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 23627
    if-nez p1, :cond_8

    .line 23628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23630
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 23631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    .line 23633
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23634
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 23684
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 23686
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getSerializedSize()I

    .line 23688
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    return v0
.end method

.method public getNextCheckMillis()J
    .registers 3

    .prologue
    .line 23645
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    return-wide v0
.end method

.method public getNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23613
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 23692
    const/4 v2, 0x0

    .line 23693
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNotificationList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    .line 23694
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 23697
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 23698
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNextCheckMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 23701
    :cond_2c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    .line 23702
    return v2
.end method

.method public hasNextCheckMillis()Z
    .registers 2

    .prologue
    .line 23646
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23709
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 23710
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_22

    .line 23714
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23715
    :sswitch_d
    return-object p0

    .line 23720
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;-><init>()V

    .line 23721
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23722
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->addNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    goto :goto_0

    .line 23726
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->setNextCheckMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    goto :goto_0

    .line 23710
    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
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
    .line 23604
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v0

    return-object v0
.end method

.method public setNextCheckMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 23648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis:Z

    .line 23649
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    .line 23650
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23674
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNotificationList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    .line 23675
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 23677
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 23678
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNextCheckMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 23680
    :cond_27
    return-void
.end method
