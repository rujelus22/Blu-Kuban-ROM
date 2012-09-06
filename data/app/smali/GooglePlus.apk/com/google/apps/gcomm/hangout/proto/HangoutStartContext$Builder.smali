.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContextOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private appData_:Ljava/lang/Object;

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

.field private circleId_:Ljava/lang/Object;

.field private contextId_:Ljava/lang/Object;

.field private create_:Z

.field private dEPRECATEDCallback_:Z

.field private externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

.field private flippy_:Z

.field private hangoutId_:Ljava/lang/Object;

.field private hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

.field private invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

.field private invitee_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;",
            ">;"
        }
    .end annotation
.end field

.field private latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

.field private nick_:Ljava/lang/Object;

.field private profileId_:Lcom/google/protobuf/LazyStringList;

.field private referringUrl_:Ljava/lang/Object;

.field private shouldAutoInvite_:Z

.field private shouldMuteVideo_:Z

.field private source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field private topic_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutId_:Ljava/lang/Object;

    .line 3045
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    .line 3069
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->topic_:Ljava/lang/Object;

    .line 3105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->referringUrl_:Ljava/lang/Object;

    .line 3141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->circleId_:Ljava/lang/Object;

    .line 3177
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 3233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->activityId_:Ljava/lang/Object;

    .line 3269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appId_:Ljava/lang/Object;

    .line 3305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appData_:Ljava/lang/Object;

    .line 3383
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 3407
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 3471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->nick_:Ljava/lang/Object;

    .line 3507
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 3550
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->NONE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    .line 3574
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 3617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    .line 3727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->contextId_:Ljava/lang/Object;

    .line 2552
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->maybeForceBuilderInitialization()V

    .line 2553
    return-void
.end method

.method static synthetic access$2500()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 1

    .prologue
    .line 2546
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 1

    .prologue
    .line 2558
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInviteeIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x4

    .line 3620
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 3621
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    .line 3622
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3624
    :cond_15
    return-void
.end method

.method private ensureProfileIdIsMutable()V
    .registers 3

    .prologue
    .line 3179
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3180
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 3181
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3183
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2556
    return-void
.end method


# virtual methods
.method public addInvitee(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3653
    if-nez p1, :cond_8

    .line 3654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3656
    :cond_8
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->ensureInviteeIsMutable()V

    .line 3657
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3659
    return-object p0
.end method

.method public build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 3

    .prologue
    .line 2619
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    .line 2620
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2621
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2623
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 2637
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V

    .line 2638
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2639
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2640
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 2641
    or-int/lit8 v2, v2, 0x1

    .line 2643
    :cond_1b
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$2702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 2645
    or-int/lit8 v2, v2, 0x2

    .line 2647
    :cond_27
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$2802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    .line 2648
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 2649
    or-int/lit8 v2, v2, 0x4

    .line 2651
    :cond_33
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->topic_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$2902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 2653
    or-int/lit8 v2, v2, 0x8

    .line 2655
    :cond_40
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->referringUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3002(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2656
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 2657
    or-int/lit8 v2, v2, 0x10

    .line 2659
    :cond_4d
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->circleId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_69

    .line 2661
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 2663
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2665
    :cond_69
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2666
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_76

    .line 2667
    or-int/lit8 v2, v2, 0x20

    .line 2669
    :cond_76
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_83

    .line 2671
    or-int/lit8 v2, v2, 0x40

    .line 2673
    :cond_83
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_90

    .line 2675
    or-int/lit16 v2, v2, 0x80

    .line 2677
    :cond_90
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appData_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9d

    .line 2679
    or-int/lit16 v2, v2, 0x100

    .line 2681
    :cond_9d
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->flippy_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z

    .line 2682
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_aa

    .line 2683
    or-int/lit16 v2, v2, 0x200

    .line 2685
    :cond_aa
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->dEPRECATEDCallback_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z

    .line 2686
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b7

    .line 2687
    or-int/lit16 v2, v2, 0x400

    .line 2689
    :cond_b7
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 2690
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c4

    .line 2691
    or-int/lit16 v2, v2, 0x800

    .line 2693
    :cond_c4
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 2694
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d1

    .line 2695
    or-int/lit16 v2, v2, 0x1000

    .line 2697
    :cond_d1
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4002(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z

    .line 2698
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_de

    .line 2699
    or-int/lit16 v2, v2, 0x2000

    .line 2701
    :cond_de
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->nick_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    and-int v3, v0, v5

    if-ne v3, v5, :cond_e9

    .line 2703
    or-int/lit16 v2, v2, 0x4000

    .line 2705
    :cond_e9
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 2706
    and-int v3, v0, v6

    if-ne v3, v6, :cond_f3

    .line 2707
    or-int/2addr v2, v5

    .line 2709
    :cond_f3
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    .line 2710
    and-int v3, v0, v7

    if-ne v3, v7, :cond_fd

    .line 2711
    or-int/2addr v2, v6

    .line 2713
    :cond_fd
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 2714
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_117

    .line 2715
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    .line 2716
    iget v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v4, -0x40001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2718
    :cond_117
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/util/List;)Ljava/util/List;

    .line 2719
    and-int v3, v0, v9

    if-ne v3, v9, :cond_121

    .line 2720
    or-int/2addr v2, v7

    .line 2722
    :cond_121
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldAutoInvite_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z

    .line 2723
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_12e

    .line 2724
    or-int/2addr v2, v8

    .line 2726
    :cond_12e
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->contextId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_13b

    .line 2728
    or-int/2addr v2, v9

    .line 2730
    :cond_13b
    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldMuteVideo_:Z

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z

    .line 2731
    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;I)I

    .line 2732
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2562
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutId_:Ljava/lang/Object;

    .line 2564
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2565
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    .line 2566
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->topic_:Ljava/lang/Object;

    .line 2568
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->referringUrl_:Ljava/lang/Object;

    .line 2570
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2571
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->circleId_:Ljava/lang/Object;

    .line 2572
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2573
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 2574
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->activityId_:Ljava/lang/Object;

    .line 2576
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appId_:Ljava/lang/Object;

    .line 2578
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appData_:Ljava/lang/Object;

    .line 2580
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2581
    iput-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->flippy_:Z

    .line 2582
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2583
    iput-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->dEPRECATEDCallback_:Z

    .line 2584
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2585
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 2586
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2587
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 2588
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2589
    iput-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create_:Z

    .line 2590
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->nick_:Ljava/lang/Object;

    .line 2592
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2593
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 2594
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2595
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->NONE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    .line 2596
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2597
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 2598
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    .line 2600
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2601
    iput-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldAutoInvite_:Z

    .line 2602
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->contextId_:Ljava/lang/Object;

    .line 2604
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2605
    iput-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldMuteVideo_:Z

    .line 2606
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2607
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3

    .prologue
    .line 2611
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

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
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 2

    .prologue
    .line 2615
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    return-object v0
.end method

.method public getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 2

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    return-object v0
.end method

.method public getInvitee(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 3
    .parameter "index"

    .prologue
    .line 3633
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    return-object v0
.end method

.method public getInviteeCount()I
    .registers 2

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLatencyMarks()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 2

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    return-object v0
.end method

.method public hasExternalKey()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 3576
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3011
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHangoutType()Z
    .registers 3

    .prologue
    .line 3047
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

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

.method public hasInvitation()Z
    .registers 3

    .prologue
    .line 3409
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatencyMarks()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 3509
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2821
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasHangoutId()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2847
    :cond_7
    :goto_7
    return v1

    .line 2825
    :cond_8
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasHangoutType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2829
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasInvitation()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2830
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2835
    :cond_1e
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasExternalKey()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2836
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2841
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getInviteeCount()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 2842
    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getInvitee(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2841
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 2847
    :cond_42
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeExternalKey(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 3598
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 3600
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 3606
    :goto_1f
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3607
    return-object p0

    .line 3603
    :cond_25
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2736
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2817
    :cond_6
    :goto_6
    return-object p0

    .line 2737
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasHangoutId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2738
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setHangoutId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2740
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasHangoutType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2741
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setHangoutType(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2743
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasTopic()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2744
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setTopic(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2746
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasReferringUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2747
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getReferringUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setReferringUrl(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2749
    :cond_3b
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasCircleId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2750
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getCircleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setCircleId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2752
    :cond_48
    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3200(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2753
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 2754
    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3200(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 2755
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2762
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2763
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2765
    :cond_73
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2766
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setAppId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2768
    :cond_80
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasAppData()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2769
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setAppData(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2771
    :cond_8d
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasFlippy()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2772
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getFlippy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setFlippy(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2774
    :cond_9a
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasDEPRECATEDCallback()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 2775
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDEPRECATEDCallback()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setDEPRECATEDCallback(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2777
    :cond_a7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2778
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getSource()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setSource(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2780
    :cond_b4
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasInvitation()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2781
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeInvitation(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2783
    :cond_c1
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasCreate()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 2784
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getCreate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setCreate(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2786
    :cond_ce
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasNick()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 2787
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setNick(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2789
    :cond_db
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasLatencyMarks()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2790
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getLatencyMarks()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeLatencyMarks(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2792
    :cond_e8
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 2793
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getCallback()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setCallback(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2795
    :cond_f5
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasExternalKey()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 2796
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeExternalKey(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2798
    :cond_102
    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4500(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_122

    .line 2799
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 2800
    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4500(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    .line 2801
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2808
    :cond_122
    :goto_122
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasShouldAutoInvite()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 2809
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getShouldAutoInvite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setShouldAutoInvite(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2811
    :cond_12f
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasContextId()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 2812
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getContextId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setContextId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    .line 2814
    :cond_13c
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasShouldMuteVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2815
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getShouldMuteVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setShouldMuteVideo(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    goto/16 :goto_6

    .line 2757
    :cond_14b
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->ensureProfileIdIsMutable()V

    .line 2758
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$3200(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_66

    .line 2803
    :cond_159
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->ensureInviteeIsMutable()V

    .line 2804
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitee_:Ljava/util/List;

    #getter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->access$4500(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_122
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2856
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_180

    .line 2861
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2863
    :sswitch_d
    return-object p0

    .line 2868
    :sswitch_e
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutId_:Ljava/lang/Object;

    goto :goto_0

    .line 2873
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2874
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v3

    .line 2875
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    if-eqz v3, :cond_0

    .line 2876
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2877
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    goto :goto_0

    .line 2882
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    :sswitch_2e
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->topic_:Ljava/lang/Object;

    goto :goto_0

    .line 2887
    :sswitch_3b
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2888
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->referringUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2892
    :sswitch_48
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2893
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->circleId_:Ljava/lang/Object;

    goto :goto_0

    .line 2897
    :sswitch_55
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->ensureProfileIdIsMutable()V

    .line 2898
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 2902
    :sswitch_62
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2903
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 2907
    :sswitch_6f
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2908
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appId_:Ljava/lang/Object;

    goto :goto_0

    .line 2912
    :sswitch_7c
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appData_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2917
    :sswitch_8a
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2918
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->flippy_:Z

    goto/16 :goto_0

    .line 2922
    :sswitch_98
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2923
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->dEPRECATEDCallback_:Z

    goto/16 :goto_0

    .line 2927
    :sswitch_a6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2928
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    move-result-object v3

    .line 2929
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    if-eqz v3, :cond_0

    .line 2930
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2931
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto/16 :goto_0

    .line 2936
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    :sswitch_ba
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v1

    .line 2937
    .local v1, subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasInvitation()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 2938
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    .line 2940
    :cond_cb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2941
    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setInvitation(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    goto/16 :goto_0

    .line 2945
    .end local v1           #subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    :sswitch_d7
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2946
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create_:Z

    goto/16 :goto_0

    .line 2950
    :sswitch_e5
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2951
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->nick_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2955
    :sswitch_f3
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v1

    .line 2956
    .local v1, subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasLatencyMarks()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 2957
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getLatencyMarks()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    .line 2959
    :cond_104
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2960
    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setLatencyMarks(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    goto/16 :goto_0

    .line 2964
    .end local v1           #subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    :sswitch_110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2965
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    move-result-object v3

    .line 2966
    .local v3, value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;
    if-eqz v3, :cond_0

    .line 2967
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2968
    iput-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    goto/16 :goto_0

    .line 2973
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;
    :sswitch_125
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v1

    .line 2974
    .local v1, subBuilder:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hasExternalKey()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 2975
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    .line 2977
    :cond_136
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2978
    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->setExternalKey(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    goto/16 :goto_0

    .line 2982
    .end local v1           #subBuilder:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    :sswitch_142
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v1

    .line 2983
    .local v1, subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2984
    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->addInvitee(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    goto/16 :goto_0

    .line 2988
    .end local v1           #subBuilder:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    :sswitch_152
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2989
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldAutoInvite_:Z

    goto/16 :goto_0

    .line 2993
    :sswitch_161
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2994
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->contextId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2998
    :sswitch_170
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v5, 0x20

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 2999
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldMuteVideo_:Z

    goto/16 :goto_0

    .line 2856
    nop

    :sswitch_data_180
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_62
        0x42 -> :sswitch_6f
        0x4a -> :sswitch_7c
        0x50 -> :sswitch_8a
        0x58 -> :sswitch_98
        0x60 -> :sswitch_a6
        0x6a -> :sswitch_ba
        0x70 -> :sswitch_d7
        0x7a -> :sswitch_e5
        0x82 -> :sswitch_f3
        0x88 -> :sswitch_110
        0x92 -> :sswitch_125
        0x9a -> :sswitch_142
        0xa0 -> :sswitch_152
        0xaa -> :sswitch_161
        0xb0 -> :sswitch_170
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
    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2546
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

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
    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeInvitation(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3431
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3433
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 3439
    :goto_20
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3440
    return-object p0

    .line 3436
    :cond_27
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    goto :goto_20
.end method

.method public mergeLatencyMarks(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 3531
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3533
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 3539
    :goto_20
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3540
    return-object p0

    .line 3536
    :cond_26
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3248
    if-nez p1, :cond_8

    .line 3249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3251
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3252
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->activityId_:Ljava/lang/Object;

    .line 3254
    return-object p0
.end method

.method public setAppData(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3320
    if-nez p1, :cond_8

    .line 3321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3323
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3324
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appData_:Ljava/lang/Object;

    .line 3326
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3284
    if-nez p1, :cond_8

    .line 3285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3287
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3288
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->appId_:Ljava/lang/Object;

    .line 3290
    return-object p0
.end method

.method public setCallback(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3558
    if-nez p1, :cond_8

    .line 3559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3561
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3562
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    .line 3564
    return-object p0
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3156
    if-nez p1, :cond_8

    .line 3157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3159
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3160
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->circleId_:Ljava/lang/Object;

    .line 3162
    return-object p0
.end method

.method public setContextId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3742
    if-nez p1, :cond_8

    .line 3743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3745
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3746
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->contextId_:Ljava/lang/Object;

    .line 3748
    return-object p0
.end method

.method public setCreate(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3458
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3459
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create_:Z

    .line 3461
    return-object p0
.end method

.method public setDEPRECATEDCallback(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3370
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3371
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->dEPRECATEDCallback_:Z

    .line 3373
    return-object p0
.end method

.method public setExternalKey(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3582
    if-nez p1, :cond_8

    .line 3583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3585
    :cond_8
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 3587
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3588
    return-object p0
.end method

.method public setFlippy(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3349
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3350
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->flippy_:Z

    .line 3352
    return-object p0
.end method

.method public setHangoutId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3024
    if-nez p1, :cond_8

    .line 3025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3027
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3028
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutId_:Ljava/lang/Object;

    .line 3030
    return-object p0
.end method

.method public setHangoutType(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3053
    if-nez p1, :cond_8

    .line 3054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3056
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3057
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    .line 3059
    return-object p0
.end method

.method public setInvitation(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3415
    if-nez p1, :cond_8

    .line 3416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3418
    :cond_8
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 3420
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3421
    return-object p0
.end method

.method public setLatencyMarks(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3515
    if-nez p1, :cond_8

    .line 3516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3518
    :cond_8
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 3520
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3521
    return-object p0
.end method

.method public setNick(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3486
    if-nez p1, :cond_8

    .line 3487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3489
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3490
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->nick_:Ljava/lang/Object;

    .line 3492
    return-object p0
.end method

.method public setReferringUrl(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3120
    if-nez p1, :cond_8

    .line 3121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3123
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3124
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->referringUrl_:Ljava/lang/Object;

    .line 3126
    return-object p0
.end method

.method public setShouldAutoInvite(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3714
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3715
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldAutoInvite_:Z

    .line 3717
    return-object p0
.end method

.method public setShouldMuteVideo(Z)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3771
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3772
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->shouldMuteVideo_:Z

    .line 3774
    return-object p0
.end method

.method public setSource(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3391
    if-nez p1, :cond_8

    .line 3392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3394
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3395
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 3397
    return-object p0
.end method

.method public setTopic(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3084
    if-nez p1, :cond_8

    .line 3085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3087
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->bitField0_:I

    .line 3088
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->topic_:Ljava/lang/Object;

    .line 3090
    return-object p0
.end method
