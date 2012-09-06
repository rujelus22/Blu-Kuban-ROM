.class public final Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SharingAclContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SharingAclContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$SharingAclContent;",
        "Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$SharingAclContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isEditingDisabled_:Z

.field private memberId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30587
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30588
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->maybeForceBuilderInitialization()V

    .line 30589
    return-void
.end method

.method static synthetic access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30582
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38200()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 1

    .prologue
    .line 30582
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30626
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    .line 30627
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 30628
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 30631
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 1

    .prologue
    .line 30594
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMemberIdIsMutable()V
    .registers 3

    .prologue
    .line 30774
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 30775
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30776
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30778
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30592
    return-void
.end method


# virtual methods
.method public addAllMemberId(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;"
        }
    .end annotation

    .prologue
    .line 30804
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->ensureMemberIdIsMutable()V

    .line 30805
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 30807
    return-object p0
.end method

.method public addMemberId(J)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 5
    .parameter

    .prologue
    .line 30797
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->ensureMemberIdIsMutable()V

    .line 30798
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30800
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3

    .prologue
    .line 30617
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    .line 30618
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30619
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30621
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 6

    .prologue
    .line 30635
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;-><init>(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 30636
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30637
    const/4 v2, 0x0

    .line 30638
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30639
    or-int/lit8 v2, v2, 0x1

    .line 30641
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38402(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30642
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 30643
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30644
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30646
    :cond_2a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38502(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Ljava/util/List;)Ljava/util/List;

    .line 30647
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3f

    .line 30648
    or-int/lit8 v1, v2, 0x2

    .line 30650
    :goto_36
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38602(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Z)Z

    .line 30651
    #setter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38702(Lcom/google/feedreader/extrpc/Client$SharingAclContent;I)I

    .line 30652
    return-object v0

    :cond_3f
    move v1, v2

    goto :goto_36
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30598
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30600
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30602
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    .line 30604
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30605
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsEditingDisabled()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30831
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    .line 30834
    return-object p0
.end method

.method public clearMemberId()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30811
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30813
    return-object p0
.end method

.method public clearType()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30760
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30761
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30763
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 3

    .prologue
    .line 30609
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

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
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2

    .prologue
    .line 30613
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public getIsEditingDisabled()Z
    .registers 2

    .prologue
    .line 30822
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    return v0
.end method

.method public getMemberId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 30787
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberIdCount()I
    .registers 2

    .prologue
    .line 30784
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30781
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30741
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30742
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 30743
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30744
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    move-object v2, v1

    .line 30747
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasIsEditingDisabled()Z
    .registers 3

    .prologue
    .line 30819
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 30738
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30677
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 30685
    :goto_8
    return v0

    .line 30681
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->hasIsEditingDisabled()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 30683
    goto :goto_8

    .line 30685
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 30656
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 30673
    :goto_7
    return-object v0

    .line 30657
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->hasType()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 30658
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->setType(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    .line 30660
    :cond_15
    #getter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38500(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 30661
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 30662
    #getter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38500(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    .line 30663
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30670
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->hasIsEditingDisabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 30671
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getIsEditingDisabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->setIsEditingDisabled(Z)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    :cond_40
    move-object v0, p0

    .line 30673
    goto :goto_7

    .line 30665
    :cond_42
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->ensureMemberIdIsMutable()V

    .line 30666
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->access$38500(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_33
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30693
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 30694
    sparse-switch v0, :sswitch_data_56

    .line 30699
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 30701
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 30697
    goto :goto_e

    .line 30706
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30707
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 30711
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->ensureMemberIdIsMutable()V

    .line 30712
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30716
    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 30717
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 30718
    :goto_37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_45

    .line 30719
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->addMemberId(J)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    goto :goto_37

    .line 30721
    :cond_45
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 30725
    :sswitch_49
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    goto :goto_0

    .line 30694
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x10 -> :sswitch_1e
        0x12 -> :sswitch_2f
        0x18 -> :sswitch_49
    .end sparse-switch
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
    .line 30582
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30582
    check-cast p1, Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

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
    .line 30582
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsEditingDisabled(Z)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30825
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30826
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->isEditingDisabled_:Z

    .line 30828
    return-object p0
.end method

.method public setMemberId(IJ)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 30791
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->ensureMemberIdIsMutable()V

    .line 30792
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->memberId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30794
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30751
    if-nez p1, :cond_8

    .line 30752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30754
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30755
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30757
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 30766
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->bitField0_:I

    .line 30767
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->type_:Ljava/lang/Object;

    .line 30769
    return-void
.end method
