.class public final Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# instance fields
.field private androidClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

.field private cachedSize:I

.field private clientType_:I

.field private desktopClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

.field private hasAndroidClientInfo:Z

.field private hasClientType:Z

.field private hasDesktopClientInfo:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 801
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType_:I

    .line 831
    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 851
    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    .line 801
    return-void
.end method


# virtual methods
.method public getAndroidClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 895
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 897
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getSerializedSize()I

    .line 899
    :cond_7
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    return v0
.end method

.method public getClientType()I
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType_:I

    return v0
.end method

.method public getDesktopClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasClientType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 905
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getClientType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 908
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasAndroidClientInfo()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 909
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getAndroidClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 912
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasDesktopClientInfo()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 913
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getDesktopClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 916
    :cond_31
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    .line 917
    return v0
.end method

.method public hasAndroidClientInfo()Z
    .registers 2

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasAndroidClientInfo:Z

    return v0
.end method

.method public hasClientType()Z
    .registers 2

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasClientType:Z

    return v0
.end method

.method public hasDesktopClientInfo()Z
    .registers 2

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasDesktopClientInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 925
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 929
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    :sswitch_d
    return-object p0

    .line 935
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->setClientType(I)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    goto :goto_0

    .line 939
    :sswitch_16
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;-><init>()V

    .line 940
    .local v1, value:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 941
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->setAndroidClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    goto :goto_0

    .line 945
    .end local v1           #value:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    :sswitch_22
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;-><init>()V

    .line 946
    .local v1, value:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 947
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->setDesktopClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    goto :goto_0

    .line 925
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
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
    .line 799
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 835
    if-nez p1, :cond_8

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasAndroidClientInfo:Z

    .line 839
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 840
    return-object p0
.end method

.method public setClientType(I)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasClientType:Z

    .line 819
    iput p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType_:I

    .line 820
    return-object p0
.end method

.method public setDesktopClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 855
    if-nez p1, :cond_8

    .line 856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 858
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasDesktopClientInfo:Z

    .line 859
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    .line 860
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
    .line 882
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasClientType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getClientType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 885
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasAndroidClientInfo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 886
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getAndroidClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 888
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->hasDesktopClientInfo()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 889
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getDesktopClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 891
    :cond_2a
    return-void
.end method
