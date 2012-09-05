.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Suggestion"
.end annotation


# instance fields
.field private appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

.field private cachedSize:I

.field private hasAppSuggestion:Z

.field private hasQuerySuggestion:Z

.field private querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 17897
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17902
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    .line 17922
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    .line 17966
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    .line 17897
    return-void
.end method


# virtual methods
.method public getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .registers 2

    .prologue
    .line 17904
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17968
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    if-gez v0, :cond_7

    .line 17970
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getSerializedSize()I

    .line 17972
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    return v0
.end method

.method public getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .registers 2

    .prologue
    .line 17924
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17976
    const/4 v0, 0x0

    .line 17977
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17978
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17981
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17982
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17985
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    .line 17986
    return v0
.end method

.method public hasAppSuggestion()Z
    .registers 2

    .prologue
    .line 17903
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion:Z

    return v0
.end method

.method public hasQuerySuggestion()Z
    .registers 2

    .prologue
    .line 17923
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17994
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 17998
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17999
    :sswitch_d
    return-object p0

    .line 18004
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;-><init>()V

    .line 18005
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18006
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->setAppSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    goto :goto_0

    .line 18010
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;-><init>()V

    .line 18011
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18012
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->setQuerySuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    goto :goto_0

    .line 17994
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_1a
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
    .line 17895
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public setAppSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .registers 3
    .parameter "value"

    .prologue
    .line 17906
    if-nez p1, :cond_8

    .line 17907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17909
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion:Z

    .line 17910
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    .line 17911
    return-object p0
.end method

.method public setQuerySuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .registers 3
    .parameter "value"

    .prologue
    .line 17926
    if-nez p1, :cond_8

    .line 17927
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17929
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion:Z

    .line 17930
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    .line 17931
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
    .line 17958
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17959
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 17961
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17962
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 17964
    :cond_1c
    return-void
.end method
