.class public final Lcom/google/goggles/FlowProtos$FlowData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FlowProtos.java"

# interfaces
.implements Lcom/google/goggles/FlowProtos$FlowDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FlowProtos$FlowData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/FlowProtos$FlowData;",
        "Lcom/google/goggles/FlowProtos$FlowData$Builder;",
        ">;",
        "Lcom/google/goggles/FlowProtos$FlowDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private frameChange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;"
        }
    .end annotation
.end field

.field private prePackedCorrespondences_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 674
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 550
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->maybeForceBuilderInitialization()V

    .line 551
    return-void
.end method

.method static synthetic access$400(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 1

    .prologue
    .line 544
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->create()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FlowData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 588
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 591
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 1

    .prologue
    .line 556
    new-instance v0, Lcom/google/goggles/FlowProtos$FlowData$Builder;

    invoke-direct {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFrameChangeIsMutable()V
    .registers 3

    .prologue
    .line 677
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 679
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 681
    :cond_16
    return-void
.end method

.method private ensurePrePackedCorrespondencesIsMutable()V
    .registers 3

    .prologue
    .line 765
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 767
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 769
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 554
    return-void
.end method


# virtual methods
.method public addAllFrameChange(Ljava/lang/Iterable;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;)",
            "Lcom/google/goggles/FlowProtos$FlowData$Builder;"
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 745
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 747
    return-object p0
.end method

.method public addAllPrePackedCorrespondences(Ljava/lang/Iterable;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/google/goggles/FlowProtos$FlowData$Builder;"
        }
    .end annotation

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensurePrePackedCorrespondencesIsMutable()V

    .line 802
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 804
    return-object p0
.end method

.method public addFrameChange(ILcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 738
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->build()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 740
    return-object p0
.end method

.method public addFrameChange(ILcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 720
    if-nez p2, :cond_8

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 723
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 724
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 726
    return-object p0
.end method

.method public addFrameChange(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 731
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->build()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    return-object p0
.end method

.method public addFrameChange(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 710
    if-nez p1, :cond_8

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 713
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 714
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    return-object p0
.end method

.method public addPrePackedCorrespondences(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 791
    if-nez p1, :cond_8

    .line 792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 794
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensurePrePackedCorrespondencesIsMutable()V

    .line 795
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object p0
.end method

.method public build()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FlowData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 579
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 581
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->build()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 4

    .prologue
    .line 595
    new-instance v0, Lcom/google/goggles/FlowProtos$FlowData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/FlowProtos$FlowData;-><init>(Lcom/google/goggles/FlowProtos$FlowData$Builder;Lcom/google/goggles/FlowProtos$1;)V

    .line 596
    iget v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 597
    iget v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 598
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 599
    iget v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 601
    :cond_1d
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FlowProtos$FlowData;->access$702(Lcom/google/goggles/FlowProtos$FlowData;Ljava/util/List;)Ljava/util/List;

    .line 602
    iget v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 603
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 604
    iget v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 606
    :cond_37
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FlowProtos$FlowData;->access$802(Lcom/google/goggles/FlowProtos$FlowData;Ljava/util/List;)Ljava/util/List;

    .line 607
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2

    .prologue
    .line 560
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 561
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 562
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 564
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 565
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clear()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clear()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFrameChange()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2

    .prologue
    .line 750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 751
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 753
    return-object p0
.end method

.method public clearPrePackedCorrespondences()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 2

    .prologue
    .line 807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 808
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 810
    return-object p0
.end method

.method public clone()Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3

    .prologue
    .line 569
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->create()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clone()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clone()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clone()Lcom/google/goggles/FlowProtos$FlowData$Builder;

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
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->clone()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2

    .prologue
    .line 573
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    return-object v0
.end method

.method public getFrameChange(I)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange;

    return-object v0
.end method

.method public getFrameChangeCount()I
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameChangeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrePackedCorrespondences(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrePackedCorrespondencesCount()I
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrePackedCorrespondencesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 611
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 632
    :cond_6
    :goto_6
    return-object p0

    .line 612
    :cond_7
    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$700(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 613
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 614
    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$700(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    .line 615
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    .line 622
    :cond_25
    :goto_25
    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$800(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 623
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 624
    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$800(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    .line 625
    iget v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->bitField0_:I

    goto :goto_6

    .line 617
    :cond_44
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 618
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->frameChange_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$700(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 627
    :cond_51
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensurePrePackedCorrespondencesIsMutable()V

    .line 628
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FlowProtos$FlowData;->prePackedCorrespondences_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FlowData;->access$800(Lcom/google/goggles/FlowProtos$FlowData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 645
    sparse-switch v0, :sswitch_data_2a

    .line 650
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    :sswitch_d
    return-object p0

    .line 657
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    .line 658
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 659
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->addFrameChange(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    goto :goto_0

    .line 663
    :sswitch_1d
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensurePrePackedCorrespondencesIsMutable()V

    .line 664
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 544
    check-cast p1, Lcom/google/goggles/FlowProtos$FlowData;

    invoke-virtual {p0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFrameChange(I)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 757
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 759
    return-object p0
.end method

.method public setFrameChange(ILcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 705
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->build()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-object p0
.end method

.method public setFrameChange(ILcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 694
    if-nez p2, :cond_8

    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 697
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensureFrameChangeIsMutable()V

    .line 698
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->frameChange_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-object p0
.end method

.method public setPrePackedCorrespondences(ILcom/google/protobuf/ByteString;)Lcom/google/goggles/FlowProtos$FlowData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 782
    if-nez p2, :cond_8

    .line 783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 785
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->ensurePrePackedCorrespondencesIsMutable()V

    .line 786
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FlowData$Builder;->prePackedCorrespondences_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 788
    return-object p0
.end method
