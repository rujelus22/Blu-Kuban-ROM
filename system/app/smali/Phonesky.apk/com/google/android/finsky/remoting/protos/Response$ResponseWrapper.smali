.class public final Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation


# instance fields
.field private cachedSize:I

.field private commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

.field private hasCommands:Z

.field private hasPayload:Z

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Notifications$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

.field private preFetch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$PreFetch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 34
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 9
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public addNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 3
    .parameter "value"

    .prologue
    .line 103
    if-nez p1, :cond_8

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    .line 109
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-object p0
.end method

.method public addPreFetch(Lcom/google/android/finsky/remoting/protos/Response$PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 3
    .parameter "value"

    .prologue
    .line 70
    if-nez p1, :cond_8

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 76
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object p0
.end method

.method public clearCommands()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 48
    return-object p0
.end method

.method public clearPreFetch()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 81
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    if-gez v0, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getSerializedSize()I

    .line 158
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    return v0
.end method

.method public getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    return-object v0
.end method

.method public getNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Notifications$Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    return-object v0
.end method

.method public getPreFetchCount()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreFetchList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$PreFetch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 167
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 168
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 172
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 175
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    .line 176
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_44

    .line 179
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :cond_57
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 180
    return v2
.end method

.method public hasCommands()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    return v0
.end method

.method public hasPayload()Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 188
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :sswitch_d
    return-object p0

    .line 198
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;-><init>()V

    .line 199
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 204
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;-><init>()V

    .line 205
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 206
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 210
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;-><init>()V

    .line 211
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->addPreFetch(Lcom/google/android/finsky/remoting/protos/Response$PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 216
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;-><init>()V

    .line 217
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->addNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 188
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_8

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 43
    return-object p0
.end method

.method public setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_8

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 23
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
    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 139
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 141
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 142
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 144
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 145
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 147
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    .line 148
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3d

    .line 150
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :cond_4e
    return-void
.end method
