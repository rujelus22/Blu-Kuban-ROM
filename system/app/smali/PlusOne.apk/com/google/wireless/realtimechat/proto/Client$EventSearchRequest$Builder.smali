.class public final Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentQuery_:Ljava/lang/Object;

.field private conversationId_:Ljava/lang/Object;

.field private fromQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private hasPhotoQuery_:Z

.field private locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

.field private unstructuredQuery_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36590
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36715
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36779
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36822
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36304
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 36305
    return-void
.end method

.method static synthetic access$49900()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 1

    .prologue
    .line 36298
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 1

    .prologue
    .line 36310
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFromQueryIsMutable()V
    .registers 3

    .prologue
    .line 36593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 36594
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36595
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36597
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36308
    return-void
.end method


# virtual methods
.method public addAllFromQuery(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 36660
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36661
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36663
    return-object p0
.end method

.method public addFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36653
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36654
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36656
    return-object p0
.end method

.method public addFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36636
    if-nez p2, :cond_8

    .line 36637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36639
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36640
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36642
    return-object p0
.end method

.method public addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 36646
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36647
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36649
    return-object p0
.end method

.method public addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36626
    if-nez p1, :cond_8

    .line 36627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36629
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36630
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36632
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 3

    .prologue
    .line 36343
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    .line 36344
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36345
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36347
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 6

    .prologue
    .line 36361
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 36362
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36363
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36364
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36365
    or-int/lit8 v2, v2, 0x1

    .line 36367
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50102(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36368
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36369
    or-int/lit8 v2, v2, 0x2

    .line 36371
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50202(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36372
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 36373
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36374
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36376
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50302(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/util/List;)Ljava/util/List;

    .line 36377
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 36378
    or-int/lit8 v2, v2, 0x4

    .line 36380
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50402(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36381
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 36382
    or-int/lit8 v2, v2, 0x8

    .line 36384
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50502(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36385
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 36386
    or-int/lit8 v2, v2, 0x10

    .line 36388
    :cond_5d
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50602(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Z)Z

    .line 36389
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 36390
    or-int/lit8 v2, v2, 0x20

    .line 36392
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50702(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36393
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 36394
    or-int/lit8 v2, v2, 0x40

    .line 36396
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50802(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36397
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50902(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;I)I

    .line 36398
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36314
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36316
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36320
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36323
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36324
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 36326
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36328
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36329
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36330
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36331
    return-object p0
.end method

.method public clearContentQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36703
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36704
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getContentQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36706
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36543
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36545
    return-object p0
.end method

.method public clearFromQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36667
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36669
    return-object p0
.end method

.method public clearHasPhotoQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36772
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 36775
    return-object p0
.end method

.method public clearLocationQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36751
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36754
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36858
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36861
    return-object p0
.end method

.method public clearTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36817
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36818
    return-object p0
.end method

.method public clearUnstructuredQuery()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36579
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getUnstructuredQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36581
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3

    .prologue
    .line 36335
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

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
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36685
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36686
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36687
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36690
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

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36523
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36524
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36525
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36526
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36529
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 36339
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFromQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 36606
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFromQueryCount()I
    .registers 2

    .prologue
    .line 36603
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFromQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36600
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHasPhotoQuery()Z
    .registers 2

    .prologue
    .line 36763
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    return v0
.end method

.method public getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 36720
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 36827
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 36784
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method public getUnstructuredQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36559
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36560
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36561
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36562
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36565
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

.method public hasContentQuery()Z
    .registers 3

    .prologue
    .line 36681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

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

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36520
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHasPhotoQuery()Z
    .registers 3

    .prologue
    .line 36760
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocationQuery()Z
    .registers 3

    .prologue
    .line 36717
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 36824
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimeRangeQuery()Z
    .registers 3

    .prologue
    .line 36781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUnstructuredQuery()Z
    .registers 3

    .prologue
    .line 36556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

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
    .line 36298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

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
    .line 36298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 36447
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_a8

    .line 36452
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36454
    :sswitch_d
    return-object p0

    .line 36459
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 36464
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 36469
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    .line 36470
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36471
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    goto :goto_0

    .line 36475
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36476
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 36480
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    .line 36481
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasLocationQuery()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 36482
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 36484
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36485
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    goto :goto_0

    .line 36489
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    :sswitch_60
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36490
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    goto :goto_0

    .line 36494
    :sswitch_6d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    .line 36495
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasTimeRangeQuery()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 36496
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    .line 36498
    :cond_7e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36499
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    goto/16 :goto_0

    .line 36503
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    :sswitch_8a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 36504
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 36505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 36507
    :cond_9b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36508
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    goto/16 :goto_0

    .line 36447
    nop

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_37
        0x2a -> :sswitch_44
        0x30 -> :sswitch_60
        0x3a -> :sswitch_6d
        0x42 -> :sswitch_8a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 36402
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36434
    :cond_6
    :goto_6
    return-object p0

    .line 36403
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36404
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36406
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasUnstructuredQuery()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36407
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getUnstructuredQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setUnstructuredQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36409
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50300(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 36410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 36411
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50300(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 36412
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36419
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasContentQuery()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 36420
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getContentQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setContentQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36422
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasLocationQuery()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 36423
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36425
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasHasPhotoQuery()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 36426
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getHasPhotoQuery()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->setHasPhotoQuery(Z)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36428
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasTimeRangeQuery()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 36429
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 36431
    :cond_73
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36432
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    goto :goto_6

    .line 36414
    :cond_81
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36415
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->access$50300(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36739
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 36741
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36747
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36748
    return-object p0

    .line 36744
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    goto :goto_20
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36846
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 36848
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36854
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36855
    return-object p0

    .line 36851
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public mergeTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 36805
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36811
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36812
    return-object p0

    .line 36808
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    goto :goto_20
.end method

.method public setContentQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36694
    if-nez p1, :cond_8

    .line 36695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36697
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36698
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 36700
    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36533
    if-nez p1, :cond_8

    .line 36534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36536
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36537
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 36539
    return-object p0
.end method

.method public setFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36620
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36621
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36623
    return-object p0
.end method

.method public setFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36610
    if-nez p2, :cond_8

    .line 36611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36613
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 36614
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36616
    return-object p0
.end method

.method public setHasPhotoQuery(Z)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36766
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36767
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 36769
    return-object p0
.end method

.method public setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 36733
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36735
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36736
    return-object p0
.end method

.method public setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36723
    if-nez p1, :cond_8

    .line 36724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36726
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36728
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36729
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 36840
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36843
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36830
    if-nez p1, :cond_8

    .line 36831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36833
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36835
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36836
    return-object p0
.end method

.method public setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 36797
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36800
    return-object p0
.end method

.method public setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36787
    if-nez p1, :cond_8

    .line 36788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36790
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36792
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36793
    return-object p0
.end method

.method public setUnstructuredQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36569
    if-nez p1, :cond_8

    .line 36570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36572
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->bitField0_:I

    .line 36573
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 36575
    return-object p0
.end method
