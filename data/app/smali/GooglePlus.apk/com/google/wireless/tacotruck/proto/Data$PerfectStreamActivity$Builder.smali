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
.field private a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private activityId_:Ljava/lang/Object;

.field private authorGaiaId_:J

.field private bitField0_:I

.field private collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

.field private creationSource_:Ljava/lang/Object;

.field private embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

.field private embedClientJspb_:Ljava/lang/Object;

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

.field private isPopularPost_:Z

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private source_:Lcom/google/wireless/tacotruck/proto/Data$Source;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 1075
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 1207
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1250
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1350
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1393
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1472
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1515
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 1558
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 689
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->maybeForceBuilderInitialization()V

    .line 690
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 695
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExplanationIsMutable()V
    .registers 3

    .prologue
    .line 1121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 1123
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1125
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 693
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
    .line 1188
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Explanation;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1189
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1191
    return-object p0
.end method

.method public addExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1182
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1184
    return-object p0
.end method

.method public addExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1164
    if-nez p2, :cond_8

    .line 1165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1167
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1168
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1170
    return-object p0
.end method

.method public addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1175
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    return-object p0
.end method

.method public addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1154
    if-nez p1, :cond_8

    .line 1155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1157
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    .line 743
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 744
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 746
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 6

    .prologue
    .line 760
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 761
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 762
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 763
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 764
    or-int/lit8 v2, v2, 0x1

    .line 766
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 768
    or-int/lit8 v2, v2, 0x2

    .line 770
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 771
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 772
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 773
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 775
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/util/List;)Ljava/util/List;

    .line 776
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 777
    or-int/lit8 v2, v2, 0x4

    .line 779
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 780
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 781
    or-int/lit8 v2, v2, 0x8

    .line 783
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 784
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 785
    or-int/lit8 v2, v2, 0x10

    .line 787
    :cond_5d
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;J)J

    .line 788
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 789
    or-int/lit8 v2, v2, 0x20

    .line 791
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$902(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 793
    or-int/lit8 v2, v2, 0x40

    .line 795
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1002(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 796
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 797
    or-int/lit16 v2, v2, 0x80

    .line 799
    :cond_84
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1102(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 800
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 801
    or-int/lit16 v2, v2, 0x100

    .line 803
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1202(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 805
    or-int/lit16 v2, v2, 0x200

    .line 807
    :cond_9e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 808
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_ab

    .line 809
    or-int/lit16 v2, v2, 0x400

    .line 811
    :cond_ab
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 812
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b8

    .line 813
    or-int/lit16 v2, v2, 0x800

    .line 815
    :cond_b8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 816
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_c5

    .line 817
    or-int/lit16 v2, v2, 0x1000

    .line 819
    :cond_c5
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_d2

    .line 821
    or-int/lit16 v2, v2, 0x2000

    .line 823
    :cond_d2
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Z)Z

    .line 824
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$1802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;I)I

    .line 825
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 699
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 701
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 702
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 703
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 704
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 706
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 708
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 710
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 714
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 715
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 716
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 720
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 722
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 723
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 724
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    .line 729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 730
    return-object p0
.end method

.method public clearA2AHangoutData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1551
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 1553
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1554
    return-object p0
.end method

.method public clearActionState()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1386
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1389
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1063
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1064
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 1066
    return-object p0
.end method

.method public clearAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 1307
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 1310
    return-object p0
.end method

.method public clearCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1243
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1246
    return-object p0
.end method

.method public clearCreationSource()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1460
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1461
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1463
    return-object p0
.end method

.method public clearEmbedClientItem()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1594
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1597
    return-object p0
.end method

.method public clearEmbedClientJspb()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1625
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1626
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientJspb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 1628
    return-object p0
.end method

.method public clearExpandedData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1286
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1288
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1289
    return-object p0
.end method

.method public clearExplanation()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 1195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1197
    return-object p0
.end method

.method public clearFocusObfuscatedAuthorId()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1339
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1341
    return-object p0
.end method

.method public clearHangoutData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1508
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1511
    return-object p0
.end method

.method public clearIsPopularPost()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    .line 1654
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1429
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1432
    return-object p0
.end method

.method public clearSource()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 1111
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1114
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3

    .prologue
    .line 734
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
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 1045
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1046
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 1050
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
    .line 1298
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method public getCreationSource()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1442
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1443
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1447
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
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 738
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getEmbedClientJspb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 1607
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1609
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 1612
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

.method public getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method public getExplanation(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3
    .parameter "index"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getExplanationCount()I
    .registers 2

    .prologue
    .line 1131
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
    .line 1128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1320
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1321
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1322
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1325
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object v0
.end method

.method public getIsPopularPost()Z
    .registers 2

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    return v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public hasA2AHangoutData()Z
    .registers 3

    .prologue
    .line 1517
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 1352
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

    .line 1041
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
    .line 1295
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
    .line 1209
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
    .line 1438
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

.method public hasEmbedClientItem()Z
    .registers 3

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

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

.method public hasEmbedClientJspb()Z
    .registers 3

    .prologue
    .line 1603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

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
    .line 1252
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
    .line 1316
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1474
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

.method public hasIsPopularPost()Z
    .registers 3

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

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
    .line 1395
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
    .line 1077
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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasExpandedData()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 904
    :cond_11
    :goto_11
    return v0

    .line 892
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasA2AHangoutData()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 893
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 898
    :cond_22
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasEmbedClientItem()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 899
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 904
    :cond_32
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeA2AHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1541
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 1547
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1548
    return-object p0

    .line 1544
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    goto :goto_20
.end method

.method public mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1376
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1382
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1383
    return-object p0

    .line 1379
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    goto :goto_20
.end method

.method public mergeCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1239
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1240
    return-object p0

    .line 1236
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    goto :goto_20
.end method

.method public mergeEmbedClientItem(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1584
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1590
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1591
    return-object p0

    .line 1587
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    goto :goto_20
.end method

.method public mergeExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1274
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1276
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1282
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1283
    return-object p0

    .line 1279
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
    .line 683
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 683
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

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
    .line 683
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
    .line 912
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 913
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_156

    .line 918
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    :sswitch_d
    return-object p0

    .line 925
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 926
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 930
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    .line 931
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    .line 934
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 935
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 939
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    .line 940
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 941
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->addExplanation(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 945
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    .line 946
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasCollapsedData()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 949
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 950
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 954
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    .line 955
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasExpandedData()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 956
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 958
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 959
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto :goto_0

    .line 963
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    :sswitch_7e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    goto/16 :goto_0

    .line 968
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    .line 969
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasActionState()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 970
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 972
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 973
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 977
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 978
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 979
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 981
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 982
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 986
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_c6
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 991
    :sswitch_d4
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    .line 992
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasHangoutData()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 993
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    .line 995
    :cond_e5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 996
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 1000
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;
    :sswitch_f1
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1005
    :sswitch_ff
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    .line 1006
    .local v0, subBuilder:Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasEmbedClientItem()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1007
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    .line 1009
    :cond_110
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1010
    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setEmbedClientItem(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 1014
    .end local v0           #subBuilder:Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    :sswitch_11c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1015
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1019
    :sswitch_12a
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    .line 1020
    .local v0, subBuilder:Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hasA2AHangoutData()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 1021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    .line 1023
    :cond_13b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1024
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setA2AHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_0

    .line 1028
    .end local v0           #subBuilder:Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;
    :sswitch_147
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    goto/16 :goto_0

    .line 913
    nop

    :sswitch_data_156
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
        0x62 -> :sswitch_ff
        0x6a -> :sswitch_11c
        0x72 -> :sswitch_12a
        0x78 -> :sswitch_147
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 829
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 882
    :cond_6
    :goto_6
    return-object p0

    .line 830
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 831
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 833
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 834
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 836
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 837
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 838
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    .line 839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 846
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCollapsedData()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 847
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 849
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 850
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 852
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 853
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 855
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasFocusObfuscatedAuthorId()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 856
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 858
    :cond_73
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasActionState()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 859
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 861
    :cond_80
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 862
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 864
    :cond_8d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCreationSource()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 865
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setCreationSource(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 867
    :cond_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasHangoutData()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 868
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 870
    :cond_a7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasA2AHangoutData()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 871
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeA2AHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 873
    :cond_b4
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasEmbedClientItem()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 874
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeEmbedClientItem(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 876
    :cond_c1
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasEmbedClientJspb()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 877
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientJspb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setEmbedClientJspb(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 879
    :cond_ce
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasIsPopularPost()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 880
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getIsPopularPost()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->setIsPopularPost(Z)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    goto/16 :goto_6

    .line 841
    :cond_dd
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 842
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3f
.end method

.method public mergeHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1498
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1504
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1505
    return-object p0

    .line 1501
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    goto :goto_20
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1419
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1425
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1426
    return-object p0

    .line 1422
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public mergeSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1099
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1107
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1108
    return-object p0

    .line 1104
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    goto :goto_1f
.end method

.method public setA2AHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1533
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 1535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1536
    return-object p0
.end method

.method public setA2AHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1523
    if-nez p1, :cond_8

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1526
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 1528
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1529
    return-object p0
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1368
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1371
    return-object p0
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1358
    if-nez p1, :cond_8

    .line 1359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1361
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 1363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1364
    return-object p0
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1054
    if-nez p1, :cond_8

    .line 1055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1057
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1058
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 1060
    return-object p0
.end method

.method public setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1301
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1302
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->authorGaiaId_:J

    .line 1304
    return-object p0
.end method

.method public setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1225
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1227
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1228
    return-object p0
.end method

.method public setCollapsedData(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1215
    if-nez p1, :cond_8

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 1220
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1221
    return-object p0
.end method

.method public setCreationSource(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1451
    if-nez p1, :cond_8

    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1454
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1455
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->creationSource_:Ljava/lang/Object;

    .line 1457
    return-object p0
.end method

.method public setEmbedClientItem(Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1576
    invoke-virtual {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->build()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1578
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1579
    return-object p0
.end method

.method public setEmbedClientItem(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1566
    if-nez p1, :cond_8

    .line 1567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1569
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1572
    return-object p0
.end method

.method public setEmbedClientJspb(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1616
    if-nez p1, :cond_8

    .line 1617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1619
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1620
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->embedClientJspb_:Ljava/lang/Object;

    .line 1622
    return-object p0
.end method

.method public setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1268
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1270
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1271
    return-object p0
.end method

.method public setExpandedData(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1258
    if-nez p1, :cond_8

    .line 1259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1261
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 1263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1264
    return-object p0
.end method

.method public setExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1151
    return-object p0
.end method

.method public setExplanation(ILcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1138
    if-nez p2, :cond_8

    .line 1139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1141
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->ensureExplanationIsMutable()V

    .line 1142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1144
    return-object p0
.end method

.method public setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1329
    if-nez p1, :cond_8

    .line 1330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1332
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1333
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 1335
    return-object p0
.end method

.method public setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1493
    return-object p0
.end method

.method public setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1480
    if-nez p1, :cond_8

    .line 1481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1483
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 1485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1486
    return-object p0
.end method

.method public setIsPopularPost(Z)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1646
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->isPopularPost_:Z

    .line 1648
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1411
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1413
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1414
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1401
    if-nez p1, :cond_8

    .line 1402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1404
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1406
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1407
    return-object p0
.end method

.method public setSource(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1093
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1095
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1096
    return-object p0
.end method

.method public setSource(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1083
    if-nez p1, :cond_8

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->bitField0_:I

    .line 1089
    return-object p0
.end method
