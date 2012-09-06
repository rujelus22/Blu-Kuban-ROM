.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private query_:Ljava/lang/Object;

.field private searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28027
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->maybeForceBuilderInitialization()V

    .line 28028
    return-void
.end method

.method static synthetic access$38500()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 1

    .prologue
    .line 28021
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 1

    .prologue
    .line 28033
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28031
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    .registers 3

    .prologue
    .line 28054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    .line 28055
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28056
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28058
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    .registers 6

    .prologue
    .line 28072
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 28073
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28074
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28075
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28076
    or-int/lit8 v2, v2, 0x1

    .line 28078
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->access$38702(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28079
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28080
    or-int/lit8 v2, v2, 0x2

    .line 28082
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->access$38802(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28083
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->access$38902(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;I)I

    .line 28084
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2

    .prologue
    .line 28037
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28039
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28040
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28041
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28042
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2

    .prologue
    .line 28164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28165
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28167
    return-object p0
.end method

.method public clearSearchEvent()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2

    .prologue
    .line 28212
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28215
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 3

    .prologue
    .line 28046
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    .registers 2

    .prologue
    .line 28050
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28145
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28146
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28147
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28148
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28151
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 28181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28142
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearchEvent()Z
    .registers 3

    .prologue
    .line 28178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 28099
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28021
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28021
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28021
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28108
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 28113
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28115
    :sswitch_d
    return-object p0

    .line 28120
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 28125
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    .line 28126
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->hasSearchEvent()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 28127
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 28129
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28130
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    goto :goto_0

    .line 28108
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 28088
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28095
    :cond_6
    :goto_6
    return-object p0

    .line 28089
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28090
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    .line 28092
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->hasSearchEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28093
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    goto :goto_6
.end method

.method public mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 28202
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28208
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28209
    return-object p0

    .line 28205
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    goto :goto_1f
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28155
    if-nez p1, :cond_8

    .line 28156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28158
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28159
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->query_:Ljava/lang/Object;

    .line 28161
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 28194
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28196
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28197
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28184
    if-nez p1, :cond_8

    .line 28185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28187
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 28189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->bitField0_:I

    .line 28190
    return-object p0
.end method
