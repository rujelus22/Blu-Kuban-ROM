.class public final Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

.field private key_:Ljava/lang/Object;

.field private member_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private ownerGaiaId_:Ljava/lang/Object;

.field private serverTime_:J

.field private suggestedMember_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3308
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3028
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->maybeForceBuilderInitialization()V

    .line 3029
    return-void
.end method

.method static synthetic access$3400(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3022
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 1

    .prologue
    .line 3022
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3072
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    .line 3073
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3074
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3077
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 1

    .prologue
    .line 3034
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMemberIsMutable()V
    .registers 3

    .prologue
    .line 3354
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 3355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3356
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3358
    :cond_17
    return-void
.end method

.method private ensureSuggestedMemberIsMutable()V
    .registers 3

    .prologue
    .line 3443
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3444
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3445
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3447
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3032
    return-void
.end method


# virtual methods
.method public addAllMember(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3421
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3422
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3424
    return-object p0
.end method

.method public addAllSuggestedMember(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3510
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3511
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3513
    return-object p0
.end method

.method public addMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3414
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3415
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3417
    return-object p0
.end method

.method public addMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3397
    if-nez p2, :cond_8

    .line 3398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3400
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3401
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3403
    return-object p0
.end method

.method public addMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3407
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3408
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3410
    return-object p0
.end method

.method public addMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3387
    if-nez p1, :cond_8

    .line 3388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3390
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3391
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3393
    return-object p0
.end method

.method public addSuggestedMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3503
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3504
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3506
    return-object p0
.end method

.method public addSuggestedMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3486
    if-nez p2, :cond_8

    .line 3487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3489
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3490
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3492
    return-object p0
.end method

.method public addSuggestedMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3496
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3497
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3499
    return-object p0
.end method

.method public addSuggestedMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3476
    if-nez p1, :cond_8

    .line 3477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3479
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3480
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3482
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 3

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    .line 3064
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3065
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3067
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 6

    .prologue
    .line 3081
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 3082
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3083
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3084
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3085
    or-int/lit8 v2, v2, 0x1

    .line 3087
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$3702(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3089
    or-int/lit8 v2, v2, 0x2

    .line 3091
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$3802(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;J)J

    .line 3092
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3093
    or-int/lit8 v2, v2, 0x4

    .line 3095
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$3902(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3097
    or-int/lit8 v2, v2, 0x8

    .line 3099
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4002(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3100
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 3101
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3102
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3104
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4102(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/util/List;)Ljava/util/List;

    .line 3105
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6b

    .line 3106
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3107
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3109
    :cond_6b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4202(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/util/List;)Ljava/util/List;

    .line 3110
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4302(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;I)I

    .line 3111
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3

    .prologue
    .line 3038
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3040
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    .line 3042
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3044
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3045
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3046
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3047
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3048
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3049
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3050
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3051
    return-object p0
.end method

.method public clearCircle()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3344
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3346
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3347
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3296
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3297
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3299
    return-object p0
.end method

.method public clearMember()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3428
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3430
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3239
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3240
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3242
    return-object p0
.end method

.method public clearServerTime()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3

    .prologue
    .line 3265
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    .line 3268
    return-object p0
.end method

.method public clearSuggestedMember()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3517
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3519
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3

    .prologue
    .line 3055
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

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
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircle()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 2

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2

    .prologue
    .line 3059
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3278
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3279
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3280
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3283
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

.method public getMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberList()Ljava/util/List;
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
    .line 3361
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3221
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3223
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3226
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

.method public getServerTime()J
    .registers 3

    .prologue
    .line 3256
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    return-wide v0
.end method

.method public getSuggestedMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getSuggestedMemberCount()I
    .registers 2

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestedMemberList()Ljava/util/List;
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
    .line 3450
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCircle()Z
    .registers 3

    .prologue
    .line 3310
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

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
    .line 3274
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3217
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 3253
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

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

.method public mergeCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3332
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3334
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3340
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3341
    return-object p0

    .line 3337
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    goto :goto_20
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
    .line 3022
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

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
    .line 3022
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3160
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3161
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_70

    .line 3166
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3168
    :sswitch_d
    return-object p0

    .line 3173
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3174
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 3178
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    goto :goto_0

    .line 3183
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 3188
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    .line 3189
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->hasCircle()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3190
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->getCircle()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 3192
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3193
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->setCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    goto :goto_0

    .line 3197
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 3198
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3199
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->addMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    goto :goto_0

    .line 3203
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    :sswitch_60
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 3204
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3205
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->addSuggestedMember(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    goto :goto_0

    .line 3161
    nop

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
        0x32 -> :sswitch_60
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3115
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3148
    :cond_6
    :goto_6
    return-object p0

    .line 3116
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3117
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    .line 3119
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3120
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    .line 3122
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3123
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    .line 3125
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->hasCircle()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3126
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getCircle()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    .line 3128
    :cond_3b
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4100(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 3129
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3130
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4100(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    .line 3131
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3138
    :cond_59
    :goto_59
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4200(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3139
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 3140
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4200(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    .line 3141
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 3133
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3134
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4100(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59

    .line 3143
    :cond_85
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3144
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->access$4200(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3326
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3328
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3329
    return-object p0
.end method

.method public setCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3316
    if-nez p1, :cond_8

    .line 3317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3319
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 3321
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3322
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3287
    if-nez p1, :cond_8

    .line 3288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3290
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3291
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->key_:Ljava/lang/Object;

    .line 3293
    return-object p0
.end method

.method public setMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3382
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3384
    return-object p0
.end method

.method public setMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3371
    if-nez p2, :cond_8

    .line 3372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3374
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureMemberIsMutable()V

    .line 3375
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->member_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3377
    return-object p0
.end method

.method public setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3230
    if-nez p1, :cond_8

    .line 3231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3233
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3234
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3236
    return-object p0
.end method

.method public setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3259
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->bitField0_:I

    .line 3260
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->serverTime_:J

    .line 3262
    return-object p0
.end method

.method public setSuggestedMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3470
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3471
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3473
    return-object p0
.end method

.method public setSuggestedMember(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3460
    if-nez p2, :cond_8

    .line 3461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3463
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->ensureSuggestedMemberIsMutable()V

    .line 3464
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3466
    return-object p0
.end method
