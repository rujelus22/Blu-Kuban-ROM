.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckForNotificationsRequestProto"
.end annotation


# instance fields
.field private alarmDuration_:J

.field private cachedSize:I

.field private hasAlarmDuration:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19649
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    .line 19685
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    .line 19649
    return-void
.end method


# virtual methods
.method public getAlarmDuration()J
    .registers 3

    .prologue
    .line 19655
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 19687
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 19689
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getSerializedSize()I

    .line 19691
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 19695
    const/4 v0, 0x0

    .line 19696
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 19697
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getAlarmDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19700
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    .line 19701
    return v0
.end method

.method public hasAlarmDuration()Z
    .registers 2

    .prologue
    .line 19656
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19709
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 19713
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19714
    :sswitch_d
    return-object p0

    .line 19719
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->setAlarmDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    goto :goto_0

    .line 19709
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 19647
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 19658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration:Z

    .line 19659
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    .line 19660
    return-object p0
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
    .line 19680
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19681
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getAlarmDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 19683
    :cond_e
    return-void
.end method
