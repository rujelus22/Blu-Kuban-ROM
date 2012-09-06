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
    .line 563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 564
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->maybeForceBuilderInitialization()V

    .line 565
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 1

    .prologue
    .line 558
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 1

    .prologue
    .line 570
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 568
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    .line 600
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 601
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 603
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 6

    .prologue
    .line 617
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 618
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 619
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 620
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 621
    or-int/lit8 v2, v2, 0x1

    .line 623
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$302(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 625
    or-int/lit8 v2, v2, 0x2

    .line 627
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$402(Lcom/google/wireless/realtimechat/proto/Data$Participant;J)J

    .line 628
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 629
    or-int/lit8 v2, v2, 0x4

    .line 631
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$502(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 633
    or-int/lit8 v2, v2, 0x8

    .line 635
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$602(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 637
    or-int/lit8 v2, v2, 0x10

    .line 639
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$702(Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 640
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 641
    or-int/lit8 v2, v2, 0x20

    .line 643
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$802(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->access$902(Lcom/google/wireless/realtimechat/proto/Data$Participant;I)I

    .line 645
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 574
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 580
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 582
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 583
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 584
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 587
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 850
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 851
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 853
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 814
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 817
    return-object p0
.end method

.method public clearLastSeenAt()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 784
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 786
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 757
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 758
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 760
    return-object p0
.end method

.method public clearProfilePhotoUrl()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 910
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 911
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 913
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 879
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 880
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 882
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3

    .prologue
    .line 591
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
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 595
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 832
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 833
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 837
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
    .line 795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 796
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 797
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 801
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
    .line 774
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    return-wide v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 739
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 740
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 744
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
    .line 891
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 892
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 893
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 897
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
    .line 867
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object v0
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 828
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
    .line 792
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
    .line 771
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

    .line 735
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
    .line 888
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
    .line 864
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 672
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
    .line 558
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

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
    .line 558
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
    .line 680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 681
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 686
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    :sswitch_d
    return-object p0

    .line 693
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 698
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    goto :goto_0

    .line 703
    :sswitch_28
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 708
    :sswitch_35
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 709
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 713
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 714
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v2

    .line 715
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    if-eqz v2, :cond_0

    .line 716
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 717
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_0

    .line 722
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    :sswitch_55
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 681
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
    .line 649
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 668
    :cond_6
    :goto_6
    return-object p0

    .line 650
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 651
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 653
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasLastSeenAt()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 654
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getLastSeenAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setLastSeenAt(J)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 656
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 657
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 659
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 660
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 662
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasType()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 663
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 665
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasProfilePhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 666
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    goto :goto_6
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 841
    if-nez p1, :cond_8

    .line 842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 844
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 845
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->firstName_:Ljava/lang/Object;

    .line 847
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 805
    if-nez p1, :cond_8

    .line 806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 808
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 809
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->fullName_:Ljava/lang/Object;

    .line 811
    return-object p0
.end method

.method public setLastSeenAt(J)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 778
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->lastSeenAt_:J

    .line 780
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 748
    if-nez p1, :cond_8

    .line 749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 751
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 752
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->participantId_:Ljava/lang/Object;

    .line 754
    return-object p0
.end method

.method public setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 901
    if-nez p1, :cond_8

    .line 902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 904
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 905
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 907
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 870
    if-nez p1, :cond_8

    .line 871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 873
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->bitField0_:I

    .line 874
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 876
    return-object p0
.end method
