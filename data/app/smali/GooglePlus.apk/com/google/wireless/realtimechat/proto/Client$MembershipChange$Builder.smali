.class public final Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$MembershipChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;",
        "Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$MembershipChangeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private participantId_:Ljava/lang/Object;

.field private participant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 12357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12559
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12583
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12691
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12358
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->maybeForceBuilderInitialization()V

    .line 12359
    return-void
.end method

.method static synthetic access$16300()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 1

    .prologue
    .line 12352
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 1

    .prologue
    .line 12364
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantIsMutable()V
    .registers 3

    .prologue
    .line 12771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 12772
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12775
    :cond_17
    return-void
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 12693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 12694
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12697
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12362
    return-void
.end method


# virtual methods
.method public addAllParticipant(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;"
        }
    .end annotation

    .prologue
    .line 12838
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12839
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12841
    return-object p0
.end method

.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;"
        }
    .end annotation

    .prologue
    .line 12729
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureRecipientIdIsMutable()V

    .line 12730
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12732
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12831
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12832
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12834
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12814
    if-nez p2, :cond_8

    .line 12815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12817
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12818
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12820
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12824
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12825
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12827
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12804
    if-nez p1, :cond_8

    .line 12805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12807
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12808
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12810
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12719
    if-nez p1, :cond_8

    .line 12720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12722
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureRecipientIdIsMutable()V

    .line 12723
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12725
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 3

    .prologue
    .line 12395
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    .line 12396
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12397
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12399
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 6

    .prologue
    .line 12413
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;-><init>(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 12414
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12415
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12416
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12417
    or-int/lit8 v2, v2, 0x1

    .line 12419
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16502(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12420
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 12421
    or-int/lit8 v2, v2, 0x2

    .line 12423
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16602(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12424
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 12425
    or-int/lit8 v2, v2, 0x4

    .line 12427
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16702(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12428
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 12429
    or-int/lit8 v2, v2, 0x8

    .line 12431
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16802(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12432
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 12433
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12435
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12437
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16902(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12438
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5e

    .line 12439
    or-int/lit8 v2, v2, 0x10

    .line 12441
    :cond_5e
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17002(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;J)J

    .line 12442
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_79

    .line 12443
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12444
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12446
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17102(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/util/List;)Ljava/util/List;

    .line 12447
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17202(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;I)I

    .line 12448
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3

    .prologue
    .line 12368
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12369
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12370
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12372
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12374
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12376
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12377
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12378
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    .line 12380
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12381
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12382
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12383
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12643
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12644
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12646
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12845
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12847
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12679
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12680
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12682
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12735
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12736
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12738
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12608
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12610
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3

    .prologue
    .line 12761
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12762
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    .line 12764
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2

    .prologue
    .line 12576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12577
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12579
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3

    .prologue
    .line 12387
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

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
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12624
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12625
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12626
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12627
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12630
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
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12352
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 12391
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 12784
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 12781
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12660
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12661
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12662
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12663
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12666
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

.method public getParticipantList()Ljava/util/List;
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
    .line 12778
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12706
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 12703
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12700
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12588
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12589
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12590
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12591
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12594
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 12752
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    .registers 2

    .prologue
    .line 12564
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 12621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    .line 12657
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 12585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 12749
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12561
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

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
    .line 12492
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
    .line 12352
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12352
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

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
    .line 12352
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12500
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12501
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_72

    .line 12506
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12508
    :sswitch_d
    return-object p0

    .line 12513
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12514
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v3

    .line 12515
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    if-eqz v3, :cond_0

    .line 12516
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12517
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    goto :goto_0

    .line 12522
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 12527
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12528
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 12532
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12533
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 12537
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureRecipientIdIsMutable()V

    .line 12538
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12542
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12543
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    goto :goto_0

    .line 12547
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 12548
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12549
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    goto :goto_0

    .line 12501
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x30 -> :sswitch_55
        0x3a -> :sswitch_62
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 12452
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12488
    :cond_6
    :goto_6
    return-object p0

    .line 12453
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12454
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 12456
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12457
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 12459
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12460
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 12462
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12463
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 12465
    :cond_3b
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16900(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 12466
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 12467
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16900(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12468
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12475
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 12476
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 12478
    :cond_66
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17100(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12479
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 12480
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17100(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    .line 12481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    goto :goto_6

    .line 12470
    :cond_85
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureRecipientIdIsMutable()V

    .line 12471
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$16900(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_59

    .line 12483
    :cond_92
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12484
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->access$17100(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12634
    if-nez p1, :cond_8

    .line 12635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12637
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12638
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->conversationId_:Ljava/lang/Object;

    .line 12640
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12798
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12799
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12801
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12788
    if-nez p2, :cond_8

    .line 12789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12791
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureParticipantIsMutable()V

    .line 12792
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12794
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12670
    if-nez p1, :cond_8

    .line 12671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12673
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12674
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->participantId_:Ljava/lang/Object;

    .line 12676
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12710
    if-nez p2, :cond_8

    .line 12711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12713
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->ensureRecipientIdIsMutable()V

    .line 12714
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12716
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12598
    if-nez p1, :cond_8

    .line 12599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12601
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12602
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->senderId_:Ljava/lang/Object;

    .line 12604
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12755
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12756
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->timestamp_:J

    .line 12758
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12567
    if-nez p1, :cond_8

    .line 12568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12570
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->bitField0_:I

    .line 12571
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12573
    return-object p0
.end method
