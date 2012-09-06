.class public final Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private clientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

.field private hasClientInfo:Z

.field private hasLogSource:Z

.field private logEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private logSource_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource_:I

    .line 1017
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent_:Ljava/util/List;

    .line 1073
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    .line 969
    return-void
.end method


# virtual methods
.method public addLogEvent(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 1034
    if-nez p1, :cond_8

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_8
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent_:Ljava/util/List;

    .line 1040
    :cond_17
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    if-gez v0, :cond_7

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getSerializedSize()I

    .line 1079
    :cond_7
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    return v0
.end method

.method public getClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .registers 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    return-object v0
.end method

.method public getLogEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getLogSource()I
    .registers 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1083
    const/4 v2, 0x0

    .line 1084
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasClientInfo()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1085
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1088
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasLogSource()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1089
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getLogSource()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1092
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getLogEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 1093
    .local v0, element:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 1096
    .end local v0           #element:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    :cond_3c
    iput v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    .line 1097
    return v2
.end method

.method public hasClientInfo()Z
    .registers 2

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasClientInfo:Z

    return v0
.end method

.method public hasLogSource()Z
    .registers 2

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasLogSource:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1105
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 1109
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    :sswitch_d
    return-object p0

    .line 1115
    :sswitch_e
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;-><init>()V

    .line 1116
    .local v1, value:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1117
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->setClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    goto :goto_0

    .line 1121
    .end local v1           #value:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->setLogSource(I)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    goto :goto_0

    .line 1125
    :sswitch_22
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;-><init>()V

    .line 1126
    .local v1, value:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1127
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->addLogEvent(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    goto :goto_0

    .line 1105
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
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
    .line 967
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 985
    if-nez p1, :cond_8

    .line 986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 988
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasClientInfo:Z

    .line 989
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo_:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    .line 990
    return-object p0
.end method

.method public setLogSource(I)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasLogSource:Z

    .line 1006
    iput p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource_:I

    .line 1007
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
    .line 1062
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasClientInfo()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1063
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getClientInfo()Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1065
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->hasLogSource()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1066
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getLogSource()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1068
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getLogEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 1069
    .local v0, element:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 1071
    .end local v0           #element:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    :cond_35
    return-void
.end method
