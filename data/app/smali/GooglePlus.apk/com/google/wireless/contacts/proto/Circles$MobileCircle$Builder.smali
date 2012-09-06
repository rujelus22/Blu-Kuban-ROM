.class public final Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
        "Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memberCount_:I

.field private membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

.field private name_:Ljava/lang/Object;

.field private semanticHints_:I

.field private type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 780
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 490
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->maybeForceBuilderInitialization()V

    .line 491
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 1

    .prologue
    .line 484
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 1

    .prologue
    .line 496
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 494
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    .line 526
    .local v0, result:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 527
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 529
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 6

    .prologue
    .line 543
    new-instance v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;-><init>(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V

    .line 544
    .local v1, result:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 545
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 546
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 547
    or-int/lit8 v2, v2, 0x1

    .line 549
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$302(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 551
    or-int/lit8 v2, v2, 0x2

    .line 553
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$402(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 554
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 555
    or-int/lit8 v2, v2, 0x4

    .line 557
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$502(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 559
    or-int/lit8 v2, v2, 0x8

    .line 561
    :cond_35
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->memberCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$602(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I

    .line 562
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 563
    or-int/lit8 v2, v2, 0x10

    .line 565
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$702(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 566
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 567
    or-int/lit8 v2, v2, 0x20

    .line 569
    :cond_4f
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->semanticHints_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$802(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I

    .line 570
    #setter for: Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->access$902(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;I)I

    .line 571
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 502
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 503
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 504
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 506
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 507
    iput v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    .line 508
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 509
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 510
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 511
    iput v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    .line 512
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 513
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 688
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 690
    return-object p0
.end method

.method public clearMemberCount()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 773
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    .line 776
    return-object p0
.end method

.method public clearMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 797
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 798
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 800
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 747
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 748
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 750
    return-object p0
.end method

.method public clearSemanticHints()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 818
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    .line 821
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 2

    .prologue
    .line 716
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 717
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 719
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3

    .prologue
    .line 517
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

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
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 2

    .prologue
    .line 521
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 669
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 670
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 674
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

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 764
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    return v0
.end method

.method public getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 729
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 730
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 734
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

.method public getSemanticHints()I
    .registers 2

    .prologue
    .line 809
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 665
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMemberCount()Z
    .registers 3

    .prologue
    .line 761
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

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

.method public hasMembershipStatus()Z
    .registers 3

    .prologue
    .line 782
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 725
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

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

.method public hasSemanticHints()Z
    .registers 3

    .prologue
    .line 806
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

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
    .line 701
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

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
    .line 598
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
    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 484
    check-cast p1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

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
    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 607
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_68

    .line 612
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    :sswitch_d
    return-object p0

    .line 619
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 620
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 624
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 625
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 626
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-eqz v2, :cond_0

    .line 627
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 628
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_0

    .line 633
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 638
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    goto :goto_0

    .line 643
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 644
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v2

    .line 645
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    if-eqz v2, :cond_0

    .line 646
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 647
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    goto :goto_0

    .line 652
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;
    :sswitch_5b
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    goto :goto_0

    .line 607
    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x30 -> :sswitch_5b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 575
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 594
    :cond_6
    :goto_6
    return-object p0

    .line 576
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 577
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 579
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 580
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 582
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 583
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 585
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasMemberCount()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 586
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setMemberCount(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 588
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasMembershipStatus()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 589
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setMembershipStatus(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 591
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->hasSemanticHints()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 592
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSemanticHints()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setSemanticHints(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    goto :goto_6
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 678
    if-nez p1, :cond_8

    .line 679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 681
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 682
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->id_:Ljava/lang/Object;

    .line 684
    return-object p0
.end method

.method public setMemberCount(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 767
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 768
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->memberCount_:I

    .line 770
    return-object p0
.end method

.method public setMembershipStatus(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 788
    if-nez p1, :cond_8

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 791
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 792
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->membershipStatus_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    .line 794
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 738
    if-nez p1, :cond_8

    .line 739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 741
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 742
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->name_:Ljava/lang/Object;

    .line 744
    return-object p0
.end method

.method public setSemanticHints(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 812
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 813
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->semanticHints_:I

    .line 815
    return-object p0
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 707
    if-nez p1, :cond_8

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->bitField0_:I

    .line 711
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 713
    return-object p0
.end method
