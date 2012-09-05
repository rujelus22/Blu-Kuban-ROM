.class public final Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
        "Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private suggestedUser_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40446
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->maybeForceBuilderInitialization()V

    .line 40447
    return-void
.end method

.method static synthetic access$56000()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 1

    .prologue
    .line 40440
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 1

    .prologue
    .line 40452
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestedUserIsMutable()V
    .registers 3

    .prologue
    .line 40551
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40553
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40555
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40450
    return-void
.end method


# virtual methods
.method public addAllSuggestedUser(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;"
        }
    .end annotation

    .prologue
    .line 40618
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40619
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40621
    return-object p0
.end method

.method public addSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40611
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40612
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40614
    return-object p0
.end method

.method public addSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40594
    if-nez p2, :cond_8

    .line 40595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40597
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40598
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40600
    return-object p0
.end method

.method public addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40604
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40605
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40607
    return-object p0
.end method

.method public addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40584
    if-nez p1, :cond_8

    .line 40585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40587
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40588
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40590
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 3

    .prologue
    .line 40471
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    .line 40472
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40473
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40475
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 5

    .prologue
    .line 40489
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 40490
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40491
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 40492
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40493
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40495
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56202(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;Ljava/util/List;)Ljava/util/List;

    .line 40496
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 2

    .prologue
    .line 40456
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40458
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40459
    return-object p0
.end method

.method public clearSuggestedUser()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 2

    .prologue
    .line 40624
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40625
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40627
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 3

    .prologue
    .line 40463
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

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
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40440
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 2

    .prologue
    .line 40467
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedUser(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 40564
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getSuggestedUserCount()I
    .registers 2

    .prologue
    .line 40561
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestedUserList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40558
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 40440
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

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
    .line 40440
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 40524
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 40529
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40531
    :sswitch_d
    return-object p0

    .line 40536
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 40537
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40538
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    goto :goto_0

    .line 40524
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40500
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40511
    :cond_6
    :goto_6
    return-object p0

    .line 40501
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56200(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40502
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 40503
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56200(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    goto :goto_6

    .line 40506
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40507
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56200(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40578
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40579
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40581
    return-object p0
.end method

.method public setSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40568
    if-nez p2, :cond_8

    .line 40569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40571
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40572
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40574
    return-object p0
.end method
