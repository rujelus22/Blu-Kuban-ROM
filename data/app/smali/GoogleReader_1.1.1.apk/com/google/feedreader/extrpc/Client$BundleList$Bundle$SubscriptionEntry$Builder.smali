.class public final Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20644
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20531
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->maybeForceBuilderInitialization()V

    .line 20532
    return-void
.end method

.method static synthetic access$25000(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20525
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25100()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 1

    .prologue
    .line 20525
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20567
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    .line 20568
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20569
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20572
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 1

    .prologue
    .line 20537
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20535
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3

    .prologue
    .line 20558
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    .line 20559
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20560
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20562
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 6

    .prologue
    .line 20576
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 20577
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20578
    const/4 v2, 0x0

    .line 20579
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20580
    or-int/lit8 v2, v2, 0x1

    .line 20582
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->access$25302(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20583
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 20584
    or-int/lit8 v1, v2, 0x2

    .line 20586
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->title_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->access$25402(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20587
    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->access$25502(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;I)I

    .line 20588
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2

    .prologue
    .line 20541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20543
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20545
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20546
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2

    .prologue
    .line 20668
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20669
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20671
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 2

    .prologue
    .line 20704
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20705
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20707
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 3

    .prologue
    .line 20550
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

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
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 2

    .prologue
    .line 20554
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20649
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20650
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 20651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20652
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 20655
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

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20685
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20686
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 20687
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20688
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 20691
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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 20646
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 20682
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

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
    .line 20603
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20605
    const/4 v0, 0x0

    .line 20607
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 3
    .parameter

    .prologue
    .line 20592
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 20599
    :goto_7
    return-object v0

    .line 20593
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 20594
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    .line 20596
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 20597
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    :cond_22
    move-object v0, p0

    .line 20599
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20615
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 20616
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 20621
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20623
    :sswitch_d
    return-object p0

    .line 20628
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 20633
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 20616
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
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
    .line 20525
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20525
    check-cast p1, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

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
    .line 20525
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20659
    if-nez p1, :cond_8

    .line 20660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20662
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20663
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20665
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 20674
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20675
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->id_:Ljava/lang/Object;

    .line 20677
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20695
    if-nez p1, :cond_8

    .line 20696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20698
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20699
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20701
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 20710
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->bitField0_:I

    .line 20711
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->title_:Ljava/lang/Object;

    .line 20713
    return-void
.end method
