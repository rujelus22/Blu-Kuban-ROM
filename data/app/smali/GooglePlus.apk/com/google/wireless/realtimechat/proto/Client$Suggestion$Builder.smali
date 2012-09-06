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
    .line 40550
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40551
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->maybeForceBuilderInitialization()V

    .line 40552
    return-void
.end method

.method static synthetic access$56100()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 1

    .prologue
    .line 40545
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 1

    .prologue
    .line 40557
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestedUserIsMutable()V
    .registers 3

    .prologue
    .line 40656
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40657
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40660
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40555
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
    .line 40723
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40724
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40726
    return-object p0
.end method

.method public addSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40716
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40717
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40719
    return-object p0
.end method

.method public addSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40699
    if-nez p2, :cond_8

    .line 40700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40702
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40703
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40705
    return-object p0
.end method

.method public addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40709
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40710
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40712
    return-object p0
.end method

.method public addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40689
    if-nez p1, :cond_8

    .line 40690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40692
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40693
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40695
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 3

    .prologue
    .line 40576
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    .line 40577
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40578
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40580
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 5

    .prologue
    .line 40594
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 40595
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40596
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 40597
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40598
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40600
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56302(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;Ljava/util/List;)Ljava/util/List;

    .line 40601
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 2

    .prologue
    .line 40561
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40563
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40564
    return-object p0
.end method

.method public clearSuggestedUser()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 2

    .prologue
    .line 40729
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40730
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    .line 40732
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 3

    .prologue
    .line 40568
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
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40545
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 2

    .prologue
    .line 40572
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedUser(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 40669
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getSuggestedUserCount()I
    .registers 2

    .prologue
    .line 40666
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
    .line 40663
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 40620
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
    .line 40545
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40545
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

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
    .line 40545
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
    .line 40628
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 40629
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 40634
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40636
    :sswitch_d
    return-object p0

    .line 40641
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 40642
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40643
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->addSuggestedUser(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    goto :goto_0

    .line 40629
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
    .line 40605
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40616
    :cond_6
    :goto_6
    return-object p0

    .line 40606
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56300(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40607
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 40608
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56300(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    .line 40609
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->bitField0_:I

    goto :goto_6

    .line 40611
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40612
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->access$56300(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40683
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40686
    return-object p0
.end method

.method public setSuggestedUser(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40673
    if-nez p2, :cond_8

    .line 40674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40676
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->ensureSuggestedUserIsMutable()V

    .line 40677
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40679
    return-object p0
.end method
