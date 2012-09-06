.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private editableContent_:Ljava/lang/Object;

.field private mention_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 53638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53674
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53520
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->maybeForceBuilderInitialization()V

    .line 53521
    return-void
.end method

.method static synthetic access$75300(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53514
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$75400()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 1

    .prologue
    .line 53514
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53556
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    .line 53557
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 53558
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 53561
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 1

    .prologue
    .line 53526
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMentionIsMutable()V
    .registers 3

    .prologue
    .line 53677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 53678
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53681
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 53524
    return-void
.end method


# virtual methods
.method public addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 53744
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53745
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 53747
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 53737
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53738
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53740
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 53720
    if-nez p2, :cond_8

    .line 53721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53723
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53724
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53726
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 53730
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53731
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53733
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53710
    if-nez p1, :cond_8

    .line 53711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53713
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53714
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53716
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 3

    .prologue
    .line 53547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    .line 53548
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 53549
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 53551
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 6

    .prologue
    .line 53565
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 53566
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53567
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 53568
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 53569
    or-int/lit8 v2, v2, 0x1

    .line 53571
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75602(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53572
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 53573
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53574
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53576
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75702(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Ljava/util/List;)Ljava/util/List;

    .line 53577
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75802(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;I)I

    .line 53578
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2

    .prologue
    .line 53530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 53531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53534
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53535
    return-object p0
.end method

.method public clearEditableContent()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2

    .prologue
    .line 53662
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53663
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getEditableContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53665
    return-object p0
.end method

.method public clearMention()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2

    .prologue
    .line 53750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53753
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 3

    .prologue
    .line 53539
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

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
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53514
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 2

    .prologue
    .line 53543
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEditableContent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53643
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53644
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 53645
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 53646
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53649
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

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 53690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 53687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMentionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEditableContent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53640
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 53600
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
    .line 53514
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53514
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

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
    .line 53514
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 53609
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 53614
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53616
    :sswitch_d
    return-object p0

    .line 53621
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53622
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    goto :goto_0

    .line 53626
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    .line 53627
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53628
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    goto :goto_0

    .line 53609
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 53582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 53596
    :cond_6
    :goto_6
    return-object p0

    .line 53583
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->hasEditableContent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53584
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getEditableContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->setEditableContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    .line 53586
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75700(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 53587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 53588
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75700(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    .line 53589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 53591
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53592
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->access$75700(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setEditableContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53653
    if-nez p1, :cond_8

    .line 53654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53656
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->bitField0_:I

    .line 53657
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->editableContent_:Ljava/lang/Object;

    .line 53659
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 53704
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53705
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53707
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 53694
    if-nez p2, :cond_8

    .line 53695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53697
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->ensureMentionIsMutable()V

    .line 53698
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53700
    return-object p0
.end method
