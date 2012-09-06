.class public final Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23678
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23806
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23679
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 23680
    return-void
.end method

.method static synthetic access$31900()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 1

    .prologue
    .line 23673
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 1

    .prologue
    .line 23685
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23683
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 3

    .prologue
    .line 23708
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    .line 23709
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23710
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23712
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 6

    .prologue
    .line 23726
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 23727
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23728
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23729
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23730
    or-int/lit8 v2, v2, 0x1

    .line 23732
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->access$32102(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23733
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23734
    or-int/lit8 v2, v2, 0x2

    .line 23736
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->access$32202(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;J)J

    .line 23737
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23738
    or-int/lit8 v2, v2, 0x4

    .line 23740
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->access$32302(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23741
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->access$32402(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;I)I

    .line 23742
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 3

    .prologue
    .line 23689
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23690
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23691
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23692
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    .line 23693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23696
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 2

    .prologue
    .line 23875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23876
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23878
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 2

    .prologue
    .line 23823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23824
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23826
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 3

    .prologue
    .line 23844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    .line 23847
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 3

    .prologue
    .line 23700
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

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
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 23704
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23856
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23857
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23858
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23859
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23862
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 23811
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 23835
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 23853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23808
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 23832
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

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
    .line 23760
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
    .line 23673
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23673
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

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
    .line 23673
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23769
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 23774
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23776
    :sswitch_d
    return-object p0

    .line 23781
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23782
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 23783
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 23784
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23785
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 23790
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23791
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 23795
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23796
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 23769
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 23746
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23756
    :cond_6
    :goto_6
    return-object p0

    .line 23747
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23748
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 23750
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23751
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 23753
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23754
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23866
    if-nez p1, :cond_8

    .line 23867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23869
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23870
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 23872
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23814
    if-nez p1, :cond_8

    .line 23815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23817
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23818
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23820
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->bitField0_:I

    .line 23839
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->timestamp_:J

    .line 23841
    return-object p0
.end method
