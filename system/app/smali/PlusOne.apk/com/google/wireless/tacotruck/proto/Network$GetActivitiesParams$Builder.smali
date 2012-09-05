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
    .line 3428
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3718
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3818
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3926
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3971
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3429
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maybeForceBuilderInitialization()V

    .line 3430
    return-void
.end method

.method static synthetic access$3700()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3423
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3435
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3433
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 3

    .prologue
    .line 3474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    .line 3475
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3476
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3478
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 6

    .prologue
    .line 3492
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 3493
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3494
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3495
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3496
    or-int/lit8 v2, v2, 0x1

    .line 3498
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$3902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3500
    or-int/lit8 v2, v2, 0x2

    .line 3502
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3503
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3504
    or-int/lit8 v2, v2, 0x4

    .line 3506
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;J)J

    .line 3507
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3508
    or-int/lit8 v2, v2, 0x8

    .line 3510
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 3512
    or-int/lit8 v2, v2, 0x10

    .line 3514
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 3516
    or-int/lit8 v2, v2, 0x20

    .line 3518
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 3520
    or-int/lit8 v2, v2, 0x40

    .line 3522
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 3524
    or-int/lit16 v2, v2, 0x80

    .line 3526
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3527
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 3528
    or-int/lit16 v2, v2, 0x100

    .line 3530
    :cond_76
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I

    .line 3531
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 3532
    or-int/lit16 v2, v2, 0x200

    .line 3534
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3535
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 3536
    or-int/lit16 v2, v2, 0x400

    .line 3538
    :cond_90
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$4902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z

    .line 3539
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->access$5002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I

    .line 3540
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3439
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3442
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3443
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3445
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3446
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3453
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3454
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3456
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 3457
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3458
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3459
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3460
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 3461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3462
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 4009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 4012
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3843
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3845
    return-object p0
.end method

.method public clearFocusGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3878
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3879
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3881
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3807
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3809
    return-object p0
.end method

.method public clearGaiaGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3915
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3917
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3756
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3757
    return-object p0
.end method

.method public clearMaxCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3965
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 3967
    return-object p0
.end method

.method public clearSearchQuery()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3706
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3707
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3709
    return-object p0
.end method

.method public clearSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3944
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3946
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3

    .prologue
    .line 3775
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3778
    return-object p0
.end method

.method public clearView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3988
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3989
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3991
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3

    .prologue
    .line 3466
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
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 4000
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3823
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3824
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3825
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3826
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3829
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
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 3470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3860
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3861
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3862
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3865
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
    .line 3787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3788
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3789
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3790
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3793
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
    .line 3895
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3896
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3897
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3898
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3901
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
    .line 3723
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 3955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3688
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3689
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3690
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3693
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
    .line 3931
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 3766
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 3997
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
    .line 3820
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

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 3856
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
    .line 3784
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
    .line 3892
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
    .line 3720
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
    .line 3952
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

    .line 3684
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
    .line 3928
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
    .line 3763
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
    .line 3973
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
    .line 3423
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

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
    .line 3423
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
    .line 3596
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3597
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_bc

    .line 3602
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3604
    :sswitch_d
    return-object p0

    .line 3609
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3610
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    goto :goto_0

    .line 3614
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v1

    .line 3615
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3616
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 3618
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3619
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto :goto_0

    .line 3623
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3624
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    goto :goto_0

    .line 3628
    :sswitch_44
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 3633
    :sswitch_51
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 3638
    :sswitch_5e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 3643
    :sswitch_6b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3644
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    move-result-object v3

    .line 3645
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    if-eqz v3, :cond_0

    .line 3646
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3647
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    goto :goto_0

    .line 3652
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    :sswitch_7e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    goto/16 :goto_0

    .line 3657
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3658
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v3

    .line 3659
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    if-eqz v3, :cond_0

    .line 3660
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3661
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto/16 :goto_0

    .line 3666
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :sswitch_a0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3671
    :sswitch_ae
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3672
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    goto/16 :goto_0

    .line 3597
    :sswitch_data_bc
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
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3544
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3578
    :cond_6
    :goto_6
    return-object p0

    .line 3545
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3546
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setSearchQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3548
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3549
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3551
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3552
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3554
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3555
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3557
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3558
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3560
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3561
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3563
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3564
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3566
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasSorting()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3567
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setSorting(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3569
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 3570
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3572
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasView()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3573
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 3575
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3576
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto/16 :goto_6
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3742
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3750
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3751
    return-object p0

    .line 3747
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_1f
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4003
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 4004
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->collapsedDataOnly_:Z

    .line 4006
    return-object p0
.end method

.method public setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3833
    if-nez p1, :cond_8

    .line 3834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3836
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3837
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->continuationToken_:Ljava/lang/Object;

    .line 3839
    return-object p0
.end method

.method public setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3869
    if-nez p1, :cond_8

    .line 3870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3872
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3873
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 3875
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3797
    if-nez p1, :cond_8

    .line 3798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3800
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3801
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3803
    return-object p0
.end method

.method public setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3905
    if-nez p1, :cond_8

    .line 3906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3908
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3909
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 3911
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3736
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3739
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3726
    if-nez p1, :cond_8

    .line 3727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3729
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3732
    return-object p0
.end method

.method public setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3959
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->maxCount_:I

    .line 3961
    return-object p0
.end method

.method public setSearchQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3697
    if-nez p1, :cond_8

    .line 3698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3700
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3701
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->searchQuery_:Ljava/lang/Object;

    .line 3703
    return-object p0
.end method

.method public setSorting(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3934
    if-nez p1, :cond_8

    .line 3935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3937
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3938
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3940
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3769
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3770
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->userGaiaId_:J

    .line 3772
    return-object p0
.end method

.method public setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3979
    if-nez p1, :cond_8

    .line 3980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3982
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->bitField0_:I

    .line 3983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3985
    return-object p0
.end method
