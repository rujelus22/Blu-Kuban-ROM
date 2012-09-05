.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuerySuggestionResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private estimatedNumAppSuggestions_:I

.field private estimatedNumQuerySuggestions_:I

.field private hasEstimatedNumAppSuggestions:Z

.field private hasEstimatedNumQuerySuggestions:Z

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17893
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    .line 18068
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    .line 18085
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    .line 18127
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    .line 17893
    return-void
.end method


# virtual methods
.method public addSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18051
    if-nez p1, :cond_8

    .line 18052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18054
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    .line 18057
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18058
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 18129
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 18131
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSerializedSize()I

    .line 18133
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    return v0
.end method

.method public getEstimatedNumAppSuggestions()I
    .registers 2

    .prologue
    .line 18069
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    return v0
.end method

.method public getEstimatedNumQuerySuggestions()I
    .registers 2

    .prologue
    .line 18086
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 18137
    const/4 v2, 0x0

    .line 18138
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSuggestionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    .line 18139
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 18142
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 18143
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumAppSuggestions()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 18146
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 18147
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumQuerySuggestions()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 18150
    :cond_3c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    .line 18151
    return v2
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18037
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public hasEstimatedNumAppSuggestions()Z
    .registers 2

    .prologue
    .line 18070
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions:Z

    return v0
.end method

.method public hasEstimatedNumQuerySuggestions()Z
    .registers 2

    .prologue
    .line 18087
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18159
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2c

    .line 18163
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18164
    :sswitch_d
    return-object p0

    .line 18169
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;-><init>()V

    .line 18170
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 18171
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->addSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18175
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->setEstimatedNumAppSuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18179
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->setEstimatedNumQuerySuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18159
    nop

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
        0x20 -> :sswitch_1b
        0x28 -> :sswitch_23
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
    .line 17891
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setEstimatedNumAppSuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions:Z

    .line 18073
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    .line 18074
    return-object p0
.end method

.method public setEstimatedNumQuerySuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions:Z

    .line 18090
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    .line 18091
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
    .line 18116
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSuggestionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    .line 18117
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 18119
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 18120
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumAppSuggestions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18122
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 18123
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumQuerySuggestions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18125
    :cond_35
    return-void
.end method
