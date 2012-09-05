.class public final Lcom/google/android/finsky/remoting/protos/Log$LogRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private clickEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->clickEvent_:Ljava/util/List;

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->cachedSize:I

    .line 217
    return-void
.end method


# virtual methods
.method public addClickEvent(Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 238
    if-nez p1, :cond_8

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->clickEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->clickEvent_:Ljava/util/List;

    .line 244
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->clickEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->cachedSize:I

    if-gez v0, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->getSerializedSize()I

    .line 275
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->cachedSize:I

    return v0
.end method

.method public getClickEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->clickEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->getClickEventList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 281
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 284
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    :cond_1c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->cachedSize:I

    .line 285
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 293
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    :sswitch_d
    return-object p0

    .line 303
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;-><init>()V

    .line 304
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->addClickEvent(Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

    goto :goto_0

    .line 293
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
    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

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
    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->getClickEventList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 265
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 267
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    :cond_19
    return-void
.end method
