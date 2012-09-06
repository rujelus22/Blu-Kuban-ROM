.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private continuationToken_:Ljava/lang/Object;

.field private fetchPopularPost_:Z

.field private focusGroupId_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaGroupId_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private maxCount_:I

.field private searchQuery_:Ljava/lang/Object;

.field private sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

.field private userGaiaId_:J

.field private view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3570
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3874
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 4010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 4046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 4082
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 4127
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3571
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maybeForceBuilderInitialization()V

    .line 3572
    return-void
.end method

.method static synthetic access$3800()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3565
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3577
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3575
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 3

    .prologue
    .line 3618
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    .line 3619
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3620
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3622
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 6

    .prologue
    .line 3636
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 3637
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3638
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3639
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3640
    or-int/lit8 v2, v2, 0x1

    .line 3642
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3644
    or-int/lit8 v2, v2, 0x2

    .line 3646
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3647
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3648
    or-int/lit8 v2, v2, 0x4

    .line 3650
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;J)J

    .line 3651
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3652
    or-int/lit8 v2, v2, 0x8

    .line 3654
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3655
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 3656
    or-int/lit8 v2, v2, 0x10

    .line 3658
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3659
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 3660
    or-int/lit8 v2, v2, 0x20

    .line 3662
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 3664
    or-int/lit8 v2, v2, 0x40

    .line 3666
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3667
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 3668
    or-int/lit16 v2, v2, 0x80

    .line 3670
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3671
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 3672
    or-int/lit16 v2, v2, 0x100

    .line 3674
    :cond_76
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I

    .line 3675
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 3676
    or-int/lit16 v2, v2, 0x200

    .line 3678
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3679
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 3680
    or-int/lit16 v2, v2, 0x400

    .line 3682
    :cond_90
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$5002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z

    .line 3683
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 3684
    or-int/lit16 v2, v2, 0x800

    .line 3686
    :cond_9d
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$5102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z

    .line 3687
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$5202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I

    .line 3688
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3585
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3586
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3593
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3596
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3597
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3598
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 3599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3600
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3602
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 3603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3604
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    .line 3605
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3606
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 4168
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3999
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 4001
    return-object p0
.end method

.method public clearFetchPopularPost()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4186
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    .line 4189
    return-object p0
.end method

.method public clearFocusGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4034
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4035
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 4037
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3963
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3965
    return-object p0
.end method

.method public clearGaiaGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4071
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 4073
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3910
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3913
    return-object p0
.end method

.method public clearMaxCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4120
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 4123
    return-object p0
.end method

.method public clearSearchQuery()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3863
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3865
    return-object p0
.end method

.method public clearSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4099
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4100
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 4102
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3

    .prologue
    .line 3931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3932
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3934
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4145
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 4147
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3

    .prologue
    .line 3610
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

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
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 4156
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3980
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3981
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3982
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3985
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
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 3614
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getFetchPopularPost()Z
    .registers 2

    .prologue
    .line 4177
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    return v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 4016
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4017
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4018
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 4021
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

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3943
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3944
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3945
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3946
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3949
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

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 4052
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4053
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4054
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 4057
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

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 3879
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 4111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3843
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3844
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3845
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3846
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3849
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

.method public getSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4087
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 3922
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 4153
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 3976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasFetchPopularPost()Z
    .registers 3

    .prologue
    .line 4174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 4012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 3940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasGaiaGroupId()Z
    .registers 3

    .prologue
    .line 4048
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 3876
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasMaxCount()Z
    .registers 3

    .prologue
    .line 4108
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasSearchQuery()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3840
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSorting()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4084
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    .line 3919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

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

.method public hasView()Z
    .registers 3

    .prologue
    .line 4129
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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
    .line 3733
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3734
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3736
    const/4 v0, 0x0

    .line 3739
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 3565
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3565
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

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
    .line 3565
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3747
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3748
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_ca

    .line 3753
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3755
    :sswitch_d
    return-object p0

    .line 3760
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 3765
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v1

    .line 3766
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3767
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 3769
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3770
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto :goto_0

    .line 3774
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3775
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    goto :goto_0

    .line 3779
    :sswitch_44
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3780
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 3784
    :sswitch_51
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3785
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 3789
    :sswitch_5e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3790
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 3794
    :sswitch_6b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3795
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    move-result-object v3

    .line 3796
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    if-eqz v3, :cond_0

    .line 3797
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3798
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    goto :goto_0

    .line 3803
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    :sswitch_7e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3804
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    goto/16 :goto_0

    .line 3808
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3809
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v3

    .line 3810
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    if-eqz v3, :cond_0

    .line 3811
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3812
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto/16 :goto_0

    .line 3817
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :sswitch_a0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3822
    :sswitch_ae
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3823
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    goto/16 :goto_0

    .line 3827
    :sswitch_bc
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3828
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    goto/16 :goto_0

    .line 3748
    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_37
        0x22 -> :sswitch_44
        0x2a -> :sswitch_51
        0x32 -> :sswitch_5e
        0x38 -> :sswitch_6b
        0x40 -> :sswitch_7e
        0x48 -> :sswitch_8c
        0x52 -> :sswitch_a0
        0x58 -> :sswitch_ae
        0x60 -> :sswitch_bc
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3692
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3729
    :cond_6
    :goto_6
    return-object p0

    .line 3693
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3694
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setSearchQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3696
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3697
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3699
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3700
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3702
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3703
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3705
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3706
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3708
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3709
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3711
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3712
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3714
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasSorting()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3715
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setSorting(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3717
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 3718
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3720
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasView()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3721
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3723
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 3724
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3726
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFetchPopularPost()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3727
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFetchPopularPost()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFetchPopularPost(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto/16 :goto_6
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3900
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3906
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3907
    return-object p0

    .line 3903
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_1f
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4160
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 4162
    return-object p0
.end method

.method public setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3989
    if-nez p1, :cond_8

    .line 3990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3992
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3993
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3995
    return-object p0
.end method

.method public setFetchPopularPost(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4180
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->fetchPopularPost_:Z

    .line 4183
    return-object p0
.end method

.method public setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4025
    if-nez p1, :cond_8

    .line 4026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4028
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4029
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 4031
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3953
    if-nez p1, :cond_8

    .line 3954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3956
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3959
    return-object p0
.end method

.method public setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4061
    if-nez p1, :cond_8

    .line 4062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4064
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4065
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 4067
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3892
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3895
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3882
    if-nez p1, :cond_8

    .line 3883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3885
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3887
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3888
    return-object p0
.end method

.method public setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4115
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 4117
    return-object p0
.end method

.method public setSearchQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3853
    if-nez p1, :cond_8

    .line 3854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3856
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3857
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3859
    return-object p0
.end method

.method public setSorting(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4090
    if-nez p1, :cond_8

    .line 4091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4093
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4094
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 4096
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3926
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3928
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4135
    if-nez p1, :cond_8

    .line 4136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4138
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4139
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 4141
    return-object p0
.end method
