.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientConversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24686
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24823
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24687
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->maybeForceBuilderInitialization()V

    .line 24688
    return-void
.end method

.method static synthetic access$33400()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 1

    .prologue
    .line 24681
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 1

    .prologue
    .line 24693
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureClientConversationIsMutable()V
    .registers 3

    .prologue
    .line 24871
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 24872
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24875
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24691
    return-void
.end method


# virtual methods
.method public addAllClientConversation(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 24938
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24939
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24941
    return-object p0
.end method

.method public addClientConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24931
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24932
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24934
    return-object p0
.end method

.method public addClientConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24914
    if-nez p2, :cond_8

    .line 24915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24917
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24918
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24920
    return-object p0
.end method

.method public addClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 24924
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24925
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24927
    return-object p0
.end method

.method public addClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24904
    if-nez p1, :cond_8

    .line 24905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24907
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24908
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24910
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 3

    .prologue
    .line 24716
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    .line 24717
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24718
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24720
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 6

    .prologue
    .line 24734
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 24735
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24736
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24737
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24738
    or-int/lit8 v2, v2, 0x1

    .line 24740
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33602(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24741
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24742
    or-int/lit8 v2, v2, 0x2

    .line 24744
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33702(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;J)J

    .line 24745
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 24746
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24747
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24749
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33802(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Ljava/util/List;)Ljava/util/List;

    .line 24750
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33902(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;I)I

    .line 24751
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3

    .prologue
    .line 24697
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24698
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24699
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    .line 24701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24703
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24704
    return-object p0
.end method

.method public clearClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 2

    .prologue
    .line 24944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24945
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24947
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 2

    .prologue
    .line 24840
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24841
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24843
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3

    .prologue
    .line 24861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24862
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    .line 24864
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3

    .prologue
    .line 24708
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

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
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientConversation(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 24884
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getClientConversationCount()I
    .registers 2

    .prologue
    .line 24881
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 24712
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 24828
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 24852
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24825
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

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
    .line 24849
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

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
    .line 24776
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
    .line 24681
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24681
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

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
    .line 24681
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24784
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 24785
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 24790
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 24792
    :sswitch_d
    return-object p0

    .line 24797
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24798
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 24799
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 24800
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24801
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 24806
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24807
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 24811
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v1

    .line 24812
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24813
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->addClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    goto :goto_0

    .line 24785
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 24755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24772
    :cond_6
    :goto_6
    return-object p0

    .line 24756
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24757
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 24759
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24760
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 24762
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33800(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24763
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 24764
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33800(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    .line 24765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 24767
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24768
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->access$33800(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setClientConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24898
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24899
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24901
    return-object p0
.end method

.method public setClientConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24888
    if-nez p2, :cond_8

    .line 24889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24891
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->ensureClientConversationIsMutable()V

    .line 24892
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24894
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24831
    if-nez p1, :cond_8

    .line 24832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24834
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24835
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24837
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24855
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->bitField0_:I

    .line 24856
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->timestamp_:J

    .line 24858
    return-object p0
.end method
