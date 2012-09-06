.class public final Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
        "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private shared_:Ljava/lang/Object;

.field private sortid_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private unreadCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19548
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19833
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19549
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->maybeForceBuilderInitialization()V

    .line 19550
    return-void
.end method

.method static synthetic access$23700(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19543
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23800()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 1

    .prologue
    .line 19543
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    .line 19592
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 19593
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 19596
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 1

    .prologue
    .line 19555
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19553
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3

    .prologue
    .line 19582
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    .line 19583
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19584
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19586
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 6

    .prologue
    .line 19600
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;-><init>(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 19601
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19602
    const/4 v2, 0x0

    .line 19603
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19604
    or-int/lit8 v2, v2, 0x1

    .line 19606
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24002(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19607
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19608
    or-int/lit8 v2, v2, 0x2

    .line 19610
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24102(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19611
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19612
    or-int/lit8 v2, v2, 0x4

    .line 19614
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->shared_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24202(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19615
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 19616
    or-int/lit8 v2, v2, 0x8

    .line 19618
    :cond_35
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->unreadCount_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24302(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;I)I

    .line 19619
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4b

    .line 19620
    or-int/lit8 v1, v2, 0x10

    .line 19622
    :goto_42
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->sortid_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24402(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19623
    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->access$24502(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;I)I

    .line 19624
    return-object v0

    :cond_4b
    move v1, v2

    goto :goto_42
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19559
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19561
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19562
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19563
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19565
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19566
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    .line 19567
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19569
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19570
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19728
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19729
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19731
    return-object p0
.end method

.method public clearShared()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19800
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19801
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getShared()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19803
    return-object p0
.end method

.method public clearSortid()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19857
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19858
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSortid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19860
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19764
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19765
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19767
    return-object p0
.end method

.method public clearUnreadCount()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 2

    .prologue
    .line 19826
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19827
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    .line 19829
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3

    .prologue
    .line 19574
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

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
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 2

    .prologue
    .line 19578
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19709
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19710
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 19711
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19712
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 19715
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

.method public getShared()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19781
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19782
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 19783
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19784
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    move-object v2, v1

    .line 19787
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

.method public getSortid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19838
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19839
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 19840
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19841
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    move-object v2, v1

    .line 19844
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
    .line 19745
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19746
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 19747
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19748
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 19751
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

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 19817
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    return v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 19706
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasShared()Z
    .registers 3

    .prologue
    .line 19778
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

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

.method public hasSortid()Z
    .registers 3

    .prologue
    .line 19835
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 19742
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

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

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    .line 19814
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 19648
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19650
    const/4 v0, 0x0

    .line 19652
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter

    .prologue
    .line 19628
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 19644
    :goto_7
    return-object v0

    .line 19629
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 19630
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    .line 19632
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 19633
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    .line 19635
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasShared()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 19636
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getShared()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->setShared(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    .line 19638
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasUnreadCount()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 19639
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->setUnreadCount(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    .line 19641
    :cond_3c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->hasSortid()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 19642
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSortid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->setSortid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    :cond_49
    move-object v0, p0

    .line 19644
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19660
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 19661
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 19666
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19668
    :sswitch_d
    return-object p0

    .line 19673
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19674
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 19678
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19679
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 19683
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19684
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    goto :goto_0

    .line 19688
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    goto :goto_0

    .line 19693
    :sswitch_42
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    goto :goto_0

    .line 19661
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
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
    .line 19543
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19543
    check-cast p1, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

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
    .line 19543
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19719
    if-nez p1, :cond_8

    .line 19720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19722
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19723
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19725
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 19734
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19735
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->id_:Ljava/lang/Object;

    .line 19737
    return-void
.end method

.method public setShared(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19791
    if-nez p1, :cond_8

    .line 19792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19794
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19795
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19797
    return-object p0
.end method

.method setShared(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 19806
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19807
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->shared_:Ljava/lang/Object;

    .line 19809
    return-void
.end method

.method public setSortid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19848
    if-nez p1, :cond_8

    .line 19849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19851
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19852
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19854
    return-object p0
.end method

.method setSortid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 19863
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19864
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->sortid_:Ljava/lang/Object;

    .line 19866
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19755
    if-nez p1, :cond_8

    .line 19756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19758
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19759
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19761
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 19770
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19771
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->title_:Ljava/lang/Object;

    .line 19773
    return-void
.end method

.method public setUnreadCount(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19820
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->bitField0_:I

    .line 19821
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->unreadCount_:I

    .line 19823
    return-object p0
.end method
