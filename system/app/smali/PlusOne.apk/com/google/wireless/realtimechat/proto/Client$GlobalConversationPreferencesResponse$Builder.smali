.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22714
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22846
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 22870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22906
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22715
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 22716
    return-void
.end method

.method static synthetic access$30500()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 1

    .prologue
    .line 22709
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 1

    .prologue
    .line 22721
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22719
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 3

    .prologue
    .line 22744
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    .line 22745
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22746
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22748
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 6

    .prologue
    .line 22762
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 22763
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22764
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22765
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22766
    or-int/lit8 v2, v2, 0x1

    .line 22768
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->access$30702(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 22769
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22770
    or-int/lit8 v2, v2, 0x2

    .line 22772
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->access$30802(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22773
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 22774
    or-int/lit8 v2, v2, 0x4

    .line 22776
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->access$30902(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22777
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->access$31002(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;I)I

    .line 22778
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 2

    .prologue
    .line 22725
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22726
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 22727
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22730
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22732
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 2

    .prologue
    .line 22894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22895
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22897
    return-object p0
.end method

.method public clearConversationMetadata()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 2

    .prologue
    .line 22942
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22944
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22945
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 2

    .prologue
    .line 22863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22864
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 22866
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3

    .prologue
    .line 22736
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

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
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22875
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22876
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22877
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22878
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22881
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

.method public getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 22911
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 22740
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 22851
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 22872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

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

.method public hasConversationMetadata()Z
    .registers 3

    .prologue
    .line 22908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

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

    .line 22848
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22930
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 22932
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22938
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22939
    return-object p0

    .line 22935
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    goto :goto_1f
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
    .line 22709
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

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
    .line 22709
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 22805
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 22810
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 22812
    :sswitch_d
    return-object p0

    .line 22817
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 22818
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 22819
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 22820
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22821
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 22826
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22827
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 22831
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v1

    .line 22832
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->hasConversationMetadata()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 22833
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    .line 22835
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22836
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    goto :goto_0

    .line 22805
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22782
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22792
    :cond_6
    :goto_6
    return-object p0

    .line 22783
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22784
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 22786
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22787
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 22789
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->hasConversationMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22790
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22885
    if-nez p1, :cond_8

    .line 22886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22888
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22889
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 22891
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 22924
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22926
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22927
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22914
    if-nez p1, :cond_8

    .line 22915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22917
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 22919
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22920
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22854
    if-nez p1, :cond_8

    .line 22855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22857
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->bitField0_:I

    .line 22858
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 22860
    return-object p0
.end method
