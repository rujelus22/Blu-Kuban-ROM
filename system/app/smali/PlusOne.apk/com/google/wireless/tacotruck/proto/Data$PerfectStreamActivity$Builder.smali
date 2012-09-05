.class public final Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
        "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;"
    }
.end annotation


# instance fields
.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private activityId_:Ljava/lang/Object;

.field private authorGaiaId_:J

.field private bitField0_:I

.field private collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

.field private creationSource_:Ljava/lang/Object;

.field private expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

.field private explanation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;"
        }
    .end annotation
.end field

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private source_:Lcom/google/wireless/tacotruck/proto/Data$Source;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 841
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 920
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 1009
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1052
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1152
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1274
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 567
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->maybeForceBuilderInitialization()V

    .line 568
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 561
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 573
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExplanationIsMutable()V
    .registers 3

    .prologue
    .line 923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 927
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 571
    return-void
.end method


# virtual methods
.method public addAllExplanation(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Explanation;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 991
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 993
    return-object p0
.end method

.method public addExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 984
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 986
    return-object p0
.end method

.method public addExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 966
    if-nez p2, :cond_8

    .line 967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 969
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 970
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 972
    return-object p0
.end method

.method public addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 977
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    return-object p0
.end method

.method public addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 956
    if-nez p1, :cond_8

    .line 957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 959
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 960
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    .line 613
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 614
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 616
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 6

    .prologue
    .line 630
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 631
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 632
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 633
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 634
    or-int/lit8 v2, v2, 0x1

    .line 636
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 638
    or-int/lit8 v2, v2, 0x2

    .line 640
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 641
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 642
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 643
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 645
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/util/List;)Ljava/util/List;

    .line 646
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 647
    or-int/lit8 v2, v2, 0x4

    .line 649
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 650
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 651
    or-int/lit8 v2, v2, 0x8

    .line 653
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 654
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 655
    or-int/lit8 v2, v2, 0x10

    .line 657
    :cond_5d
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;J)J

    .line 658
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 659
    or-int/lit8 v2, v2, 0x20

    .line 661
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$902(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 663
    or-int/lit8 v2, v2, 0x40

    .line 665
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1002(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 666
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 667
    or-int/lit16 v2, v2, 0x80

    .line 669
    :cond_84
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1102(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 670
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 671
    or-int/lit16 v2, v2, 0x100

    .line 673
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1202(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 675
    or-int/lit16 v2, v2, 0x200

    .line 677
    :cond_9e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 678
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;I)I

    .line 679
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 577
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 580
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 581
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 585
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 586
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 593
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 594
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 597
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 598
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 600
    return-object p0
.end method

.method public clearActionState()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1188
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1190
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1191
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 865
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 866
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 868
    return-object p0
.end method

.method public clearAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 1109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 1112
    return-object p0
.end method

.method public clearCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1045
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1047
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1048
    return-object p0
.end method

.method public clearCreationSource()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1263
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1265
    return-object p0
.end method

.method public clearExpandedData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1088
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1091
    return-object p0
.end method

.method public clearExplanation()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 996
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 997
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 999
    return-object p0
.end method

.method public clearFocusObfuscatedAuthorId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1141
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1143
    return-object p0
.end method

.method public clearHangoutData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1310
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1312
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1313
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1231
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1234
    return-object p0
.end method

.method public clearSource()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 913
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 916
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 604
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

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
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 847
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 848
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 852
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

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 1100
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method public getCreationSource()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1244
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1249
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
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 608
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method public getExplanation(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3
    .parameter "index"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getExplanationCount()I
    .registers 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExplanationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1122
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1123
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1127
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

.method public getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    .registers 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 1154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 843
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasCollapsedData()Z
    .registers 3

    .prologue
    .line 1011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasCreationSource()Z
    .registers 3

    .prologue
    .line 1240
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasExpandedData()Z
    .registers 3

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedAuthorId()Z
    .registers 3

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasHangoutData()Z
    .registers 3

    .prologue
    .line 1276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 1197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasSource()Z
    .registers 3

    .prologue
    .line 879
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1176
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1178
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1184
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1185
    return-object p0

    .line 1181
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    goto :goto_20
.end method

.method public mergeCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1041
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1042
    return-object p0

    .line 1038
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    goto :goto_20
.end method

.method public mergeExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1084
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1085
    return-object p0

    .line 1081
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

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
    .line 561
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

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
    .line 561
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 743
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_100

    .line 748
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    :sswitch_d
    return-object p0

    .line 755
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 760
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    .line 761
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 762
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    .line 764
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 765
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 769
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    .line 770
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 771
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 775
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    .line 776
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasCollapsedData()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 777
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 779
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 780
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 784
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    .line 785
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasExpandedData()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 786
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 788
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 789
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 793
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    :sswitch_7e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 794
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    goto/16 :goto_0

    .line 798
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    .line 799
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasActionState()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 802
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 803
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 807
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 808
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 811
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 812
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 816
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_c6
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 817
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 821
    :sswitch_d4
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    .line 822
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasHangoutData()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 823
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    .line 825
    :cond_e5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 826
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 830
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;
    :sswitch_f1
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 831
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 743
    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_37
        0x22 -> :sswitch_46
        0x2a -> :sswitch_62
        0x30 -> :sswitch_7e
        0x3a -> :sswitch_8c
        0x42 -> :sswitch_a9
        0x4a -> :sswitch_c6
        0x52 -> :sswitch_d4
        0x5a -> :sswitch_f1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 724
    :cond_6
    :goto_6
    return-object p0

    .line 684
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 685
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 687
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 688
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 690
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 691
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 692
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 700
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCollapsedData()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 701
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 703
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 704
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 706
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 707
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 709
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasFocusObfuscatedAuthorId()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 710
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 712
    :cond_73
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasActionState()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 713
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 715
    :cond_80
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 716
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 718
    :cond_8d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCreationSource()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 719
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setCreationSource(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 721
    :cond_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasHangoutData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 722
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_6

    .line 695
    :cond_a9
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 696
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1300
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1306
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1307
    return-object p0

    .line 1303
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    goto :goto_20
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1219
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1221
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1227
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1228
    return-object p0

    .line 1224
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public mergeSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 909
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 910
    return-object p0

    .line 906
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    goto :goto_1f
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1170
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1173
    return-object p0
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1160
    if-nez p1, :cond_8

    .line 1161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1163
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1166
    return-object p0
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 856
    if-nez p1, :cond_8

    .line 857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 859
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 860
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 862
    return-object p0
.end method

.method public setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1104
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 1106
    return-object p0
.end method

.method public setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1027
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1029
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1030
    return-object p0
.end method

.method public setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1017
    if-nez p1, :cond_8

    .line 1018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1020
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1022
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1023
    return-object p0
.end method

.method public setCreationSource(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1253
    if-nez p1, :cond_8

    .line 1254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1256
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1257
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1259
    return-object p0
.end method

.method public setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1070
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1073
    return-object p0
.end method

.method public setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1060
    if-nez p1, :cond_8

    .line 1061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1063
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1066
    return-object p0
.end method

.method public setExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 951
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 953
    return-object p0
.end method

.method public setExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 940
    if-nez p2, :cond_8

    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 943
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 944
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 946
    return-object p0
.end method

.method public setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1131
    if-nez p1, :cond_8

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1135
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1137
    return-object p0
.end method

.method public setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1292
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1294
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1295
    return-object p0
.end method

.method public setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1282
    if-nez p1, :cond_8

    .line 1283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1285
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1287
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1288
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1213
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1216
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1203
    if-nez p1, :cond_8

    .line 1204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1206
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1209
    return-object p0
.end method

.method public setSource(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 895
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 898
    return-object p0
.end method

.method public setSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 885
    if-nez p1, :cond_8

    .line 886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 888
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 890
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 891
    return-object p0
.end method
