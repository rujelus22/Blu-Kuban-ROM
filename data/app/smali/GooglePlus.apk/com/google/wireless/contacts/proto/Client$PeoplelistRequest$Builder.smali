.class public final Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PeoplelistRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;",
        "Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$PeoplelistRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private key_:Ljava/lang/Object;

.field private lastUpdated_:J

.field private offset_:I

.field private requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

.field private search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10719
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10743
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10546
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->maybeForceBuilderInitialization()V

    .line 10547
    return-void
.end method

.method static synthetic access$13700()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 1

    .prologue
    .line 10540
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 1

    .prologue
    .line 10552
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10550
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 3

    .prologue
    .line 10581
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    .line 10582
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10583
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10585
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 6

    .prologue
    .line 10599
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 10600
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10601
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10602
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10603
    or-int/lit8 v2, v2, 0x1

    .line 10605
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$13902(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10606
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10607
    or-int/lit8 v2, v2, 0x2

    .line 10609
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14002(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10610
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 10611
    or-int/lit8 v2, v2, 0x4

    .line 10613
    :cond_28
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14102(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I

    .line 10614
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 10615
    or-int/lit8 v2, v2, 0x8

    .line 10617
    :cond_35
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14202(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I

    .line 10618
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 10619
    or-int/lit8 v2, v2, 0x10

    .line 10621
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14302(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;J)J

    .line 10622
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 10623
    or-int/lit8 v2, v2, 0x20

    .line 10625
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14402(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10626
    #setter for: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->access$14502(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I

    .line 10627
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10556
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10557
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10559
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10560
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10561
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    .line 10562
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10563
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    .line 10564
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    .line 10566
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10568
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10569
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2

    .prologue
    .line 10821
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10822
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    .line 10824
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2

    .prologue
    .line 10873
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10874
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10876
    return-object p0
.end method

.method public clearLastUpdated()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3

    .prologue
    .line 10842
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    .line 10845
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2

    .prologue
    .line 10800
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10801
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    .line 10803
    return-object p0
.end method

.method public clearRequestType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2

    .prologue
    .line 10736
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10737
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10739
    return-object p0
.end method

.method public clearSearch()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2

    .prologue
    .line 10779
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10781
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10782
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3

    .prologue
    .line 10573
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

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
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 10812
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 2

    .prologue
    .line 10577
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10854
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10855
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10856
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10857
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10860
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

.method public getLastUpdated()J
    .registers 3

    .prologue
    .line 10833
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 10791
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    return v0
.end method

.method public getRequestType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 2

    .prologue
    .line 10724
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    return-object v0
.end method

.method public getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 10748
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 10809
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 10851
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

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

.method public hasLastUpdated()Z
    .registers 3

    .prologue
    .line 10830
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 10788
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

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

.method public hasRequestType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10721
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearch()Z
    .registers 3

    .prologue
    .line 10745
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

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
    .line 10654
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
    .line 10540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10540
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

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
    .line 10540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 10663
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_72

    .line 10668
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10670
    :sswitch_d
    return-object p0

    .line 10675
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10676
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    move-result-object v3

    .line 10677
    .local v3, value:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    if-eqz v3, :cond_0

    .line 10678
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10679
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    goto :goto_0

    .line 10684
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v1

    .line 10685
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->hasSearch()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 10686
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    .line 10688
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10689
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    goto :goto_0

    .line 10693
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    :sswitch_3d
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    goto :goto_0

    .line 10698
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    goto :goto_0

    .line 10703
    :sswitch_57
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    goto :goto_0

    .line 10708
    :sswitch_64
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10709
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 10663
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_3d
        0x20 -> :sswitch_4a
        0x28 -> :sswitch_57
        0x32 -> :sswitch_64
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10631
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10650
    :cond_6
    :goto_6
    return-object p0

    .line 10632
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10633
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getRequestType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setRequestType(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 10635
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10636
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 10638
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 10639
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setOffset(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 10641
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 10642
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setCount(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 10644
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasLastUpdated()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 10645
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setLastUpdated(J)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 10647
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10648
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    goto :goto_6
.end method

.method public mergeSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 10767
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 10769
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10775
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10776
    return-object p0

    .line 10772
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    goto :goto_1f
.end method

.method public setCount(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10815
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10816
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->count_:I

    .line 10818
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10864
    if-nez p1, :cond_8

    .line 10865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10867
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10868
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->key_:Ljava/lang/Object;

    .line 10870
    return-object p0
.end method

.method public setLastUpdated(J)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 10836
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10837
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->lastUpdated_:J

    .line 10839
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10794
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10795
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->offset_:I

    .line 10797
    return-object p0
.end method

.method public setRequestType(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10727
    if-nez p1, :cond_8

    .line 10728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10730
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10731
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10733
    return-object p0
.end method

.method public setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 10761
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10763
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10764
    return-object p0
.end method

.method public setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10751
    if-nez p1, :cond_8

    .line 10752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10754
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10756
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->bitField0_:I

    .line 10757
    return-object p0
.end method
