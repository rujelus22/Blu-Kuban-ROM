.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private creationTimestampMs_:J

.field private momentId_:Ljava/lang/Object;

.field private reportAbuseUrl_:Ljava/lang/Object;

.field private userIsOwner_:Z

.field private userSubmittedDescription_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2455
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2625
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2456
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->maybeForceBuilderInitialization()V

    .line 2457
    return-void
.end method

.method static synthetic access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2450
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 1

    .prologue
    .line 2450
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2500
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    .line 2501
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2502
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2505
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 1

    .prologue
    .line 2462
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2460
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    .line 2492
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2493
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2495
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 2509
    new-instance v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 2510
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2511
    const/4 v1, 0x0

    .line 2512
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_56

    .line 2515
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$2902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2516
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 2517
    or-int/lit8 v0, v0, 0x2

    .line 2519
    :cond_1a
    iget-wide v4, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;J)J

    .line 2520
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 2521
    or-int/lit8 v0, v0, 0x4

    .line 2523
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 2525
    or-int/lit8 v0, v0, 0x8

    .line 2527
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 2529
    or-int/lit8 v0, v0, 0x10

    .line 2531
    :cond_40
    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Z)Z

    .line 2532
    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4d

    .line 2533
    or-int/lit8 v0, v0, 0x20

    .line 2535
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->access$3502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;I)I

    .line 2537
    return-object v2

    :cond_56
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3

    .prologue
    .line 2466
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2467
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2468
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    .line 2470
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2472
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2474
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    .line 2476
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2478
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2479
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2661
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2663
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2664
    return-object p0
.end method

.method public clearCreationTimestampMs()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3

    .prologue
    .line 2682
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    .line 2685
    return-object p0
.end method

.method public clearMomentId()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2806
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2807
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getMomentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2809
    return-object p0
.end method

.method public clearReportAbuseUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2749
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2750
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getReportAbuseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2752
    return-object p0
.end method

.method public clearUserIsOwner()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2775
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    .line 2778
    return-object p0
.end method

.method public clearUserSubmittedDescription()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2713
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2714
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getUserSubmittedDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2716
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3

    .prologue
    .line 2483
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

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
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getCreationTimestampMs()J
    .registers 3

    .prologue
    .line 2673
    iget-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2

    .prologue
    .line 2487
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2788
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2789
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2790
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2793
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getReportAbuseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2731
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2732
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2733
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2736
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getUserIsOwner()Z
    .registers 2

    .prologue
    .line 2766
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    return v0
.end method

.method public getUserSubmittedDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2695
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2696
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2697
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2700
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasContributor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2627
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreationTimestampMs()Z
    .registers 3

    .prologue
    .line 2670
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

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

.method public hasMomentId()Z
    .registers 3

    .prologue
    .line 2784
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

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

.method public hasReportAbuseUrl()Z
    .registers 3

    .prologue
    .line 2727
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

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

.method public hasUserIsOwner()Z
    .registers 3

    .prologue
    .line 2763
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

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

.method public hasUserSubmittedDescription()Z
    .registers 3

    .prologue
    .line 2691
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2564
    const/4 v0, 0x1

    return v0
.end method

.method public mergeContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2649
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2651
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2657
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2658
    return-object p0

    .line 2654
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2541
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2560
    :cond_6
    :goto_6
    return-object p0

    .line 2542
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasContributor()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2543
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 2545
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasCreationTimestampMs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2546
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getCreationTimestampMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setCreationTimestampMs(J)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 2548
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasUserSubmittedDescription()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2549
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getUserSubmittedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setUserSubmittedDescription(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 2551
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasReportAbuseUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2552
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getReportAbuseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setReportAbuseUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 2554
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasUserIsOwner()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2555
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getUserIsOwner()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setUserIsOwner(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 2557
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->hasMomentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2558
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getMomentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setMomentId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2573
    sparse-switch v0, :sswitch_data_6c

    .line 2578
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    :sswitch_d
    return-object p0

    .line 2585
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    .line 2586
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->hasContributor()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2587
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 2589
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2590
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    goto :goto_0

    .line 2594
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2595
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    goto :goto_0

    .line 2599
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2600
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    goto :goto_0

    .line 2604
    :sswitch_44
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2605
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2609
    :sswitch_51
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2610
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    goto :goto_0

    .line 2614
    :sswitch_5e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2615
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    goto :goto_0

    .line 2573
    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x18 -> :sswitch_2a
        0x22 -> :sswitch_37
        0x2a -> :sswitch_44
        0x30 -> :sswitch_51
        0x3a -> :sswitch_5e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2450
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2450
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2450
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2643
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2645
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2646
    return-object p0
.end method

.method public setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2633
    if-nez p1, :cond_8

    .line 2634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2636
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2638
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2639
    return-object p0
.end method

.method public setCreationTimestampMs(J)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2676
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2677
    iput-wide p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->creationTimestampMs_:J

    .line 2679
    return-object p0
.end method

.method public setMomentId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2797
    if-nez p1, :cond_8

    .line 2798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2800
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2801
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2803
    return-object p0
.end method

.method setMomentId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2812
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2813
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->momentId_:Ljava/lang/Object;

    .line 2815
    return-void
.end method

.method public setReportAbuseUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2740
    if-nez p1, :cond_8

    .line 2741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2743
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2744
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2746
    return-object p0
.end method

.method setReportAbuseUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2755
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2756
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2758
    return-void
.end method

.method public setUserIsOwner(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2769
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2770
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userIsOwner_:Z

    .line 2772
    return-object p0
.end method

.method public setUserSubmittedDescription(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2704
    if-nez p1, :cond_8

    .line 2705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2707
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2708
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2710
    return-object p0
.end method

.method setUserSubmittedDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2719
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->bitField0_:I

    .line 2720
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2722
    return-void
.end method
