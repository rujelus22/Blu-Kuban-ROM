.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentQuery_:Ljava/lang/Object;

.field private conversationQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
            ">;"
        }
    .end annotation
.end field

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

.field private toQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private unstructuredQuery_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35168
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35754
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35818
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35861
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35169
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 35170
    return-void
.end method

.method static synthetic access$48600()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 1

    .prologue
    .line 35163
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 1

    .prologue
    .line 35175
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConversationQueryIsMutable()V
    .registers 3

    .prologue
    .line 35632
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 35633
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35634
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35636
    :cond_17
    return-void
.end method

.method private ensureFromQueryIsMutable()V
    .registers 3

    .prologue
    .line 35454
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 35455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35456
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35458
    :cond_16
    return-void
.end method

.method private ensureToQueryIsMutable()V
    .registers 3

    .prologue
    .line 35543
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 35544
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35545
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35547
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35173
    return-void
.end method


# virtual methods
.method public addAllConversationQuery(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 35699
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35700
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35702
    return-object p0
.end method

.method public addAllFromQuery(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 35521
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35522
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35524
    return-object p0
.end method

.method public addAllToQuery(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 35610
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35611
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35613
    return-object p0
.end method

.method public addConversationQuery(ILcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35692
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35693
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35695
    return-object p0
.end method

.method public addConversationQuery(ILcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35675
    if-nez p2, :cond_8

    .line 35676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35678
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35679
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35681
    return-object p0
.end method

.method public addConversationQuery(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35685
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35686
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35688
    return-object p0
.end method

.method public addConversationQuery(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35665
    if-nez p1, :cond_8

    .line 35666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35668
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35669
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35671
    return-object p0
.end method

.method public addFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35514
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35515
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35517
    return-object p0
.end method

.method public addFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35497
    if-nez p2, :cond_8

    .line 35498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35500
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35501
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35503
    return-object p0
.end method

.method public addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35507
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35508
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35510
    return-object p0
.end method

.method public addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35487
    if-nez p1, :cond_8

    .line 35488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35490
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35491
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35493
    return-object p0
.end method

.method public addToQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35603
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35604
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35606
    return-object p0
.end method

.method public addToQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35586
    if-nez p2, :cond_8

    .line 35587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35589
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35590
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35592
    return-object p0
.end method

.method public addToQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35596
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35597
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35599
    return-object p0
.end method

.method public addToQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35576
    if-nez p1, :cond_8

    .line 35577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35579
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35580
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35582
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 3

    .prologue
    .line 35210
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    .line 35211
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35212
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35214
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 6

    .prologue
    .line 35228
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 35229
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35230
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35231
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35232
    or-int/lit8 v2, v2, 0x1

    .line 35234
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$48802(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35235
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 35236
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35237
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35239
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$48902(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;

    .line 35240
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 35241
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35242
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35244
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49002(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;

    .line 35245
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5f

    .line 35246
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35247
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35249
    :cond_5f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49102(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;

    .line 35250
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6c

    .line 35251
    or-int/lit8 v2, v2, 0x2

    .line 35253
    :cond_6c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49202(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35254
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_79

    .line 35255
    or-int/lit8 v2, v2, 0x4

    .line 35257
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49302(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35258
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_86

    .line 35259
    or-int/lit8 v2, v2, 0x8

    .line 35261
    :cond_86
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49402(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Z)Z

    .line 35262
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_93

    .line 35263
    or-int/lit8 v2, v2, 0x10

    .line 35265
    :cond_93
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49502(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35266
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a0

    .line 35267
    or-int/lit8 v2, v2, 0x20

    .line 35269
    :cond_a0
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49602(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35270
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49702(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;I)I

    .line 35271
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35179
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35183
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35190
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 35193
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35194
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35196
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35198
    return-object p0
.end method

.method public clearContentQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35742
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35743
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getContentQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35745
    return-object p0
.end method

.method public clearConversationQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35708
    return-object p0
.end method

.method public clearFromQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35530
    return-object p0
.end method

.method public clearHasPhotoQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 35814
    return-object p0
.end method

.method public clearLocationQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35790
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35792
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35793
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35897
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35900
    return-object p0
.end method

.method public clearTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35854
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35856
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35857
    return-object p0
.end method

.method public clearToQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35617
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35619
    return-object p0
.end method

.method public clearUnstructuredQuery()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2

    .prologue
    .line 35439
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35440
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getUnstructuredQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35442
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3

    .prologue
    .line 35202
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

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
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35723
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35724
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35725
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35726
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35729
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

.method public getConversationQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 35645
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    return-object v0
.end method

.method public getConversationQueryCount()I
    .registers 2

    .prologue
    .line 35642
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 35206
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFromQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 35467
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFromQueryCount()I
    .registers 2

    .prologue
    .line 35464
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

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
    .line 35461
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHasPhotoQuery()Z
    .registers 2

    .prologue
    .line 35802
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    return v0
.end method

.method public getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 35759
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 35866
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 35823
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method public getToQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 35556
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getToQueryCount()I
    .registers 2

    .prologue
    .line 35553
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getToQueryList()Ljava/util/List;
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
    .line 35550
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnstructuredQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35420
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35421
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35423
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35426
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
    .line 35720
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

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

.method public hasHasPhotoQuery()Z
    .registers 3

    .prologue
    .line 35799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

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

.method public hasLocationQuery()Z
    .registers 3

    .prologue
    .line 35756
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 35863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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
    .line 35820
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

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

.method public hasUnstructuredQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35417
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

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
    .line 35328
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
    .line 35163
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35163
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

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
    .line 35163
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35336
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35337
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_b8

    .line 35342
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35344
    :sswitch_d
    return-object p0

    .line 35349
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35350
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 35354
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    .line 35355
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35356
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->addFromQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto :goto_0

    .line 35360
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    .line 35361
    .restart local v0       #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35362
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->addToQuery(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto :goto_0

    .line 35366
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    .line 35367
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35368
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->addConversationQuery(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto :goto_0

    .line 35372
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    :sswitch_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35373
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 35377
    :sswitch_55
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    .line 35378
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasLocationQuery()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 35379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 35381
    :cond_66
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35382
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto :goto_0

    .line 35386
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    :sswitch_71
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    goto :goto_0

    .line 35391
    :sswitch_7e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    .line 35392
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasTimeRangeQuery()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 35393
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    .line 35395
    :cond_8f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35396
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto/16 :goto_0

    .line 35400
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    :sswitch_9b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 35401
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 35402
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 35404
    :cond_ac
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35405
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto/16 :goto_0

    .line 35337
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_2a
        0x22 -> :sswitch_39
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x38 -> :sswitch_71
        0x42 -> :sswitch_7e
        0x4a -> :sswitch_9b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 35275
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35324
    :cond_6
    :goto_6
    return-object p0

    .line 35276
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasUnstructuredQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35277
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getUnstructuredQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setUnstructuredQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 35279
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$48900(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 35280
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 35281
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$48900(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    .line 35282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35289
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49000(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 35290
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 35291
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49000(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    .line 35292
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35299
    :cond_50
    :goto_50
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49100(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 35300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 35301
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49100(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    .line 35302
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35309
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasContentQuery()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 35310
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getContentQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setContentQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 35312
    :cond_7b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasLocationQuery()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 35313
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 35315
    :cond_88
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasHasPhotoQuery()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 35316
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getHasPhotoQuery()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->setHasPhotoQuery(Z)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 35318
    :cond_95
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasTimeRangeQuery()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 35319
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 35321
    :cond_a2
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35322
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    goto/16 :goto_6

    .line 35284
    :cond_b1
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35285
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$48900(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_32

    .line 35294
    :cond_bf
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35295
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49000(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    .line 35304
    :cond_cc
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35305
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->access$49100(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6e
.end method

.method public mergeLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35778
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 35780
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35786
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35787
    return-object p0

    .line 35783
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    goto :goto_20
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 35887
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35893
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35894
    return-object p0

    .line 35890
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public mergeTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 35844
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35850
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35851
    return-object p0

    .line 35847
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    goto :goto_20
.end method

.method public setContentQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35733
    if-nez p1, :cond_8

    .line 35734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35736
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35737
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->contentQuery_:Ljava/lang/Object;

    .line 35739
    return-object p0
.end method

.method public setConversationQuery(ILcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35659
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35660
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35662
    return-object p0
.end method

.method public setConversationQuery(ILcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35649
    if-nez p2, :cond_8

    .line 35650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35652
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureConversationQueryIsMutable()V

    .line 35653
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35655
    return-object p0
.end method

.method public setFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35481
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35482
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35484
    return-object p0
.end method

.method public setFromQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35471
    if-nez p2, :cond_8

    .line 35472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35474
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureFromQueryIsMutable()V

    .line 35475
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35477
    return-object p0
.end method

.method public setHasPhotoQuery(Z)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35806
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->hasPhotoQuery_:Z

    .line 35808
    return-object p0
.end method

.method public setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35772
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35775
    return-object p0
.end method

.method public setLocationQuery(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35762
    if-nez p1, :cond_8

    .line 35763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35765
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 35767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35768
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35879
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35881
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35882
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35869
    if-nez p1, :cond_8

    .line 35870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35872
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 35874
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35875
    return-object p0
.end method

.method public setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35836
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35839
    return-object p0
.end method

.method public setTimeRangeQuery(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35826
    if-nez p1, :cond_8

    .line 35827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35829
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 35831
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35832
    return-object p0
.end method

.method public setToQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35570
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35571
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35573
    return-object p0
.end method

.method public setToQuery(ILcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35560
    if-nez p2, :cond_8

    .line 35561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35563
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->ensureToQueryIsMutable()V

    .line 35564
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35566
    return-object p0
.end method

.method public setUnstructuredQuery(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35430
    if-nez p1, :cond_8

    .line 35431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35433
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->bitField0_:I

    .line 35434
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->unstructuredQuery_:Ljava/lang/Object;

    .line 35436
    return-object p0
.end method
