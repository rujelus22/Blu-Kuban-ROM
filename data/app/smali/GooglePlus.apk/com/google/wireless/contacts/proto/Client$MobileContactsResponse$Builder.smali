.class public final Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileContactsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private invalidId_:Lcom/google/protobuf/LazyStringList;

.field private isContiguousSet_:Z

.field private key_:Ljava/lang/Object;

.field private lastContactIndex_:I

.field private numberWithoutPublicProfiles_:I

.field private serverTime_:J

.field private syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4647
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4983
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 5072
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 5128
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4648
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 4649
    return-void
.end method

.method static synthetic access$5300(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4642
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 1

    .prologue
    .line 4642
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4696
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    .line 4697
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4698
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4701
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 1

    .prologue
    .line 4654
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .registers 3

    .prologue
    .line 4986
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 4987
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 4988
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4990
    :cond_17
    return-void
.end method

.method private ensureInvalidIdIsMutable()V
    .registers 3

    .prologue
    .line 5074
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 5075
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 5076
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 5078
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4652
    return-void
.end method


# virtual methods
.method public addAllContact(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5053
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5054
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5056
    return-object p0
.end method

.method public addAllInvalidId(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5110
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureInvalidIdIsMutable()V

    .line 5111
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5113
    return-object p0
.end method

.method public addContact(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5046
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5047
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5049
    return-object p0
.end method

.method public addContact(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5029
    if-nez p2, :cond_8

    .line 5030
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5032
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5033
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5035
    return-object p0
.end method

.method public addContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5039
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5040
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5042
    return-object p0
.end method

.method public addContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5019
    if-nez p1, :cond_8

    .line 5020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5022
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5023
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5025
    return-object p0
.end method

.method public addInvalidId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5100
    if-nez p1, :cond_8

    .line 5101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5103
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureInvalidIdIsMutable()V

    .line 5104
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5106
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 3

    .prologue
    .line 4687
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    .line 4688
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4689
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4691
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 6

    .prologue
    .line 4705
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 4706
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4707
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4708
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4709
    or-int/lit8 v2, v2, 0x1

    .line 4711
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$5602(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;J)J

    .line 4712
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4713
    or-int/lit8 v2, v2, 0x2

    .line 4715
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$5702(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4716
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4717
    or-int/lit8 v2, v2, 0x4

    .line 4719
    :cond_28
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$5802(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I

    .line 4720
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4721
    or-int/lit8 v2, v2, 0x8

    .line 4723
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$5902(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Z)Z

    .line 4724
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 4725
    or-int/lit8 v2, v2, 0x10

    .line 4727
    :cond_42
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6002(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I

    .line 4728
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 4729
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 4730
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4732
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6102(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Ljava/util/List;)Ljava/util/List;

    .line 4733
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_79

    .line 4734
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 4736
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4738
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6202(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 4739
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_86

    .line 4740
    or-int/lit8 v2, v2, 0x20

    .line 4742
    :cond_86
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6302(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4743
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6402(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I

    .line 4744
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4658
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    .line 4660
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4662
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4663
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    .line 4664
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4665
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    .line 4666
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4667
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    .line 4668
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 4670
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4671
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 4672
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4673
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4674
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4675
    return-object p0
.end method

.method public clearContact()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 5059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 5060
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 5062
    return-object p0
.end method

.method public clearInvalidId()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 5116
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 5117
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 5119
    return-object p0
.end method

.method public clearIsContiguousSet()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4955
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    .line 4958
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 4908
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4909
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4911
    return-object p0
.end method

.method public clearLastContactIndex()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 4934
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4935
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    .line 4937
    return-object p0
.end method

.method public clearNumberWithoutPublicProfiles()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 4976
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4977
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    .line 4979
    return-object p0
.end method

.method public clearServerTime()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3

    .prologue
    .line 4877
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4878
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    .line 4880
    return-object p0
.end method

.method public clearSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2

    .prologue
    .line 5145
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 5146
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 5148
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3

    .prologue
    .line 4679
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

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
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContact(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 4999
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getContactCount()I
    .registers 2

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4993
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2

    .prologue
    .line 4683
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidIdCount()I
    .registers 2

    .prologue
    .line 5084
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInvalidIdList()Ljava/util/List;
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
    .line 5081
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsContiguousSet()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4946
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4889
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4890
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4891
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4892
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4895
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

.method public getLastContactIndex()I
    .registers 2

    .prologue
    .line 4925
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    return v0
.end method

.method public getNumberWithoutPublicProfiles()I
    .registers 2

    .prologue
    .line 4967
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    return v0
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 4868
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    return-wide v0
.end method

.method public getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 2

    .prologue
    .line 5133
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    return-object v0
.end method

.method public hasIsContiguousSet()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4943
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

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
    .line 4886
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

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

.method public hasLastContactIndex()Z
    .registers 3

    .prologue
    .line 4922
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

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

.method public hasNumberWithoutPublicProfiles()Z
    .registers 3

    .prologue
    .line 4964
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

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

.method public hasServerTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4865
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSyncType()Z
    .registers 3

    .prologue
    .line 5130
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4791
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
    .line 4642
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4642
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

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
    .line 4642
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4800
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_7e

    .line 4805
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4807
    :sswitch_d
    return-object p0

    .line 4812
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    goto :goto_0

    .line 4817
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 4822
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4823
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    goto :goto_0

    .line 4827
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4828
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    goto :goto_0

    .line 4832
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4833
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    goto :goto_0

    .line 4837
    :sswitch_4f
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v1

    .line 4838
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4839
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->addContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    goto :goto_0

    .line 4843
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    :sswitch_5e
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureInvalidIdIsMutable()V

    .line 4844
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 4848
    :sswitch_6b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4849
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-result-object v3

    .line 4850
    .local v3, value:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    if-eqz v3, :cond_0

    .line 4851
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4852
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    goto :goto_0

    .line 4800
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_5e
        0x40 -> :sswitch_6b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4748
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4787
    :cond_6
    :goto_6
    return-object p0

    .line 4749
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4750
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 4752
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4753
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 4755
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasLastContactIndex()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4756
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getLastContactIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setLastContactIndex(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 4758
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasIsContiguousSet()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4759
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getIsContiguousSet()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setIsContiguousSet(Z)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 4761
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasNumberWithoutPublicProfiles()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4762
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getNumberWithoutPublicProfiles()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setNumberWithoutPublicProfiles(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 4764
    :cond_48
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6100(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 4765
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 4766
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6100(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    .line 4767
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4774
    :cond_66
    :goto_66
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6200(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 4775
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 4776
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6200(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 4777
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4784
    :cond_84
    :goto_84
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->hasSyncType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4785
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->setSyncType(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    goto/16 :goto_6

    .line 4769
    :cond_93
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 4770
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6100(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_66

    .line 4779
    :cond_a0
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureInvalidIdIsMutable()V

    .line 4780
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->access$6200(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_84
.end method

.method public setContact(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5013
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5014
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5016
    return-object p0
.end method

.method public setContact(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5003
    if-nez p2, :cond_8

    .line 5004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5006
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureContactIsMutable()V

    .line 5007
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5009
    return-object p0
.end method

.method public setInvalidId(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5091
    if-nez p2, :cond_8

    .line 5092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5094
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->ensureInvalidIdIsMutable()V

    .line 5095
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5097
    return-object p0
.end method

.method public setIsContiguousSet(Z)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4949
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4950
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->isContiguousSet_:Z

    .line 4952
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4899
    if-nez p1, :cond_8

    .line 4900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4902
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4903
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->key_:Ljava/lang/Object;

    .line 4905
    return-object p0
.end method

.method public setLastContactIndex(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4928
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4929
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->lastContactIndex_:I

    .line 4931
    return-object p0
.end method

.method public setNumberWithoutPublicProfiles(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4970
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4971
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->numberWithoutPublicProfiles_:I

    .line 4973
    return-object p0
.end method

.method public setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4871
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 4872
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->serverTime_:J

    .line 4874
    return-object p0
.end method

.method public setSyncType(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5136
    if-nez p1, :cond_8

    .line 5137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5139
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->bitField0_:I

    .line 5140
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 5142
    return-object p0
.end method
