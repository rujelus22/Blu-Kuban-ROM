.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private interaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation
.end field

.field private number_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30602
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30721
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30757
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30603
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 30604
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 1

    .prologue
    .line 30609
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInteractionIsMutable()V
    .registers 3

    .prologue
    .line 30760
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 30761
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30762
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30764
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30607
    return-void
.end method


# virtual methods
.method public addAllInteraction(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 30827
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Interaction;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30828
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 30830
    return-object p0
.end method

.method public addInteraction(ILcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 30820
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30821
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30823
    return-object p0
.end method

.method public addInteraction(ILcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 30803
    if-nez p2, :cond_8

    .line 30804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30806
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30807
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30809
    return-object p0
.end method

.method public addInteraction(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 30813
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30814
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30816
    return-object p0
.end method

.method public addInteraction(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30793
    if-nez p1, :cond_8

    .line 30794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30796
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30797
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30799
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 6

    .prologue
    .line 30648
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 30649
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30650
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30651
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30652
    or-int/lit8 v2, v2, 0x1

    .line 30654
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42402(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30655
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 30656
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30657
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30659
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42502(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/util/List;)Ljava/util/List;

    .line 30660
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42602(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;I)I

    .line 30661
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2

    .prologue
    .line 30613
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30618
    return-object p0
.end method

.method public clearInteraction()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2

    .prologue
    .line 30833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30836
    return-object p0
.end method

.method public clearNumber()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2

    .prologue
    .line 30745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30746
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30748
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 3

    .prologue
    .line 30622
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

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
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 2

    .prologue
    .line 30626
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInteraction(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 3
    .parameter "index"

    .prologue
    .line 30773
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    return-object v0
.end method

.method public getInteractionCount()I
    .registers 2

    .prologue
    .line 30770
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInteractionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30767
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30726
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30727
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30728
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30729
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30732
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

.method public hasNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30723
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 30597
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

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
    .line 30597
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30691
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30692
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 30697
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30699
    :sswitch_d
    return-object p0

    .line 30704
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 30709
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    .line 30710
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30711
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->addInteraction(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    goto :goto_0

    .line 30692
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 30665
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30679
    :cond_6
    :goto_6
    return-object p0

    .line 30666
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30667
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    .line 30669
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42500(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 30670
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 30671
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42500(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    .line 30672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 30674
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30675
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->access$42500(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setInteraction(ILcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 30787
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30788
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30790
    return-object p0
.end method

.method public setInteraction(ILcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 30777
    if-nez p2, :cond_8

    .line 30778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30780
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->ensureInteractionIsMutable()V

    .line 30781
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30783
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30736
    if-nez p1, :cond_8

    .line 30737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30739
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->bitField0_:I

    .line 30740
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->number_:Ljava/lang/Object;

    .line 30742
    return-object p0
.end method
