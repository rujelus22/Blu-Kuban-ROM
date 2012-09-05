.class public final Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
        "Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private lastSeenAt_:J

.field private participantId_:Ljava/lang/Object;

.field private profilePhotoUrl_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->maybeForceBuilderInitialization()V

    .line 559
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 1

    .prologue
    .line 552
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 1

    .prologue
    .line 564
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 562
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    .line 594
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 595
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 597
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 6

    .prologue
    .line 611
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 612
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 613
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 614
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 615
    or-int/lit8 v2, v2, 0x1

    .line 617
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$302(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 619
    or-int/lit8 v2, v2, 0x2

    .line 621
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$402(Lcom/google/wireless/realtimechat/proto/Data$Participant;J)J

    .line 622
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 623
    or-int/lit8 v2, v2, 0x4

    .line 625
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$502(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 627
    or-int/lit8 v2, v2, 0x8

    .line 629
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$602(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 631
    or-int/lit8 v2, v2, 0x10

    .line 633
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$702(Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 634
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 635
    or-int/lit8 v2, v2, 0x20

    .line 637
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$802(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$902(Lcom/google/wireless/realtimechat/proto/Data$Participant;I)I

    .line 639
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 568
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 570
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 571
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 574
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 577
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 580
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 581
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 845
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 847
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 808
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 809
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 811
    return-object p0
.end method

.method public clearLastSeenAt()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 780
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 752
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 754
    return-object p0
.end method

.method public clearProfilePhotoUrl()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 905
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 907
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 874
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 876
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 585
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

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
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 589
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 826
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 827
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 831
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

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 790
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 791
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 795
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

.method public getLastSeenAt()J
    .registers 3

    .prologue
    .line 768
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    return-wide v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 733
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 734
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 738
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

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 886
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 891
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

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object v0
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 786
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

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

.method public hasLastSeenAt()Z
    .registers 3

    .prologue
    .line 765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 729
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 882
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

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
    .line 858
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

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
    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

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
    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 675
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 680
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    :sswitch_d
    return-object p0

    .line 687
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 692
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    goto :goto_0

    .line 697
    :sswitch_28
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 702
    :sswitch_35
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 707
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 708
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v2

    .line 709
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    if-eqz v2, :cond_0

    .line 710
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 711
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_0

    .line 716
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    :sswitch_55
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 675
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
        0x32 -> :sswitch_55
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 643
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 662
    :cond_6
    :goto_6
    return-object p0

    .line 644
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 645
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 647
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasLastSeenAt()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 648
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getLastSeenAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setLastSeenAt(J)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 650
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 651
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 653
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 654
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 656
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasType()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 657
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 659
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasProfilePhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 660
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    goto :goto_6
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 835
    if-nez p1, :cond_8

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 839
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 841
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 799
    if-nez p1, :cond_8

    .line 800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 802
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 803
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 805
    return-object p0
.end method

.method public setLastSeenAt(J)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 772
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 774
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 742
    if-nez p1, :cond_8

    .line 743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 745
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 746
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 748
    return-object p0
.end method

.method public setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 895
    if-nez p1, :cond_8

    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 898
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 899
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 901
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 864
    if-nez p1, :cond_8

    .line 865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 867
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 868
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 870
    return-object p0
.end method
