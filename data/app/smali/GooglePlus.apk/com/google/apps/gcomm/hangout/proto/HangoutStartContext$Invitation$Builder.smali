.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field private inviterGaiaId_:Ljava/lang/Object;

.field private inviterProfileName_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private shouldAutoAccept_:Z

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterGaiaId_:Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterProfileName_:Ljava/lang/Object;

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 561
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->maybeForceBuilderInitialization()V

    .line 562
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 1

    .prologue
    .line 555
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 1

    .prologue
    .line 567
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 565
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    .line 597
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 598
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 600
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 6

    .prologue
    .line 614
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V

    .line 615
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 616
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 617
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 618
    or-int/lit8 v2, v2, 0x1

    .line 620
    :cond_10
    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->timestamp_:J

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;J)J

    .line 621
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 622
    or-int/lit8 v2, v2, 0x2

    .line 624
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 626
    or-int/lit8 v2, v2, 0x4

    .line 628
    :cond_28
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 629
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 630
    or-int/lit8 v2, v2, 0x8

    .line 632
    :cond_35
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterProfileName_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 634
    or-int/lit8 v2, v2, 0x10

    .line 636
    :cond_42
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->shouldAutoAccept_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Z)Z

    .line 637
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 638
    or-int/lit8 v2, v2, 0x20

    .line 640
    :cond_4f
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->access$902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;I)I

    .line 642
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3

    .prologue
    .line 571
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->timestamp_:J

    .line 573
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterGaiaId_:Ljava/lang/Object;

    .line 575
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 576
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 577
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterProfileName_:Ljava/lang/Object;

    .line 579
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->shouldAutoAccept_:Z

    .line 581
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 583
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 584
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3

    .prologue
    .line 588
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

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
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 2

    .prologue
    .line 592
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public hasInviterGaiaId()Z
    .registers 3

    .prologue
    .line 761
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

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
    const/4 v0, 0x1

    .line 740
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->hasTimestamp()Z

    move-result v1

    if-nez v1, :cond_8

    .line 677
    :cond_7
    :goto_7
    return v0

    .line 673
    :cond_8
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->hasInviterGaiaId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 677
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 646
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 665
    :cond_6
    :goto_6
    return-object p0

    .line 647
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 648
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setTimestamp(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 650
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasInviterGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 651
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setInviterGaiaId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 653
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasInvitationType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 654
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInvitationType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setInvitationType(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 656
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasInviterProfileName()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 657
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setInviterProfileName(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 659
    :cond_3b
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasShouldAutoAccept()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 660
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getShouldAutoAccept()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setShouldAutoAccept(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 662
    :cond_48
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 686
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 691
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    :sswitch_d
    return-object p0

    .line 698
    :sswitch_e
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->timestamp_:J

    goto :goto_0

    .line 703
    :sswitch_1b
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 708
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 709
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-result-object v2

    .line 710
    .local v2, value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    if-eqz v2, :cond_0

    .line 711
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 712
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    goto :goto_0

    .line 717
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    :sswitch_3b
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 718
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterProfileName_:Ljava/lang/Object;

    goto :goto_0

    .line 722
    :sswitch_48
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->shouldAutoAccept_:Z

    goto :goto_0

    .line 727
    :sswitch_55
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 728
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 686
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x32 -> :sswitch_55
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
    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 555
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

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
    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInvitationType(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 803
    if-nez p1, :cond_8

    .line 804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 806
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 807
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 809
    return-object p0
.end method

.method public setInviterGaiaId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 774
    if-nez p1, :cond_8

    .line 775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 777
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 778
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterGaiaId_:Ljava/lang/Object;

    .line 780
    return-object p0
.end method

.method public setInviterProfileName(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 834
    if-nez p1, :cond_8

    .line 835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 837
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 838
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->inviterProfileName_:Ljava/lang/Object;

    .line 840
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 891
    if-nez p1, :cond_8

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 895
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 897
    return-object p0
.end method

.method public setShouldAutoAccept(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 863
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 864
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->shouldAutoAccept_:Z

    .line 866
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 746
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->bitField0_:I

    .line 747
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->timestamp_:J

    .line 749
    return-object p0
.end method
