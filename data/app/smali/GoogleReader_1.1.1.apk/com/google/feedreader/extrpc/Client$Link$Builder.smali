.class public final Lcom/google/feedreader/extrpc/Client$Link$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Link;",
        "Lcom/google/feedreader/extrpc/Client$Link$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private length_:J

.field private relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

.field private titleLanguage_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2813
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 2626
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->maybeForceBuilderInitialization()V

    .line 2627
    return-void
.end method

.method static synthetic access$2700(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2620
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 1

    .prologue
    .line 2620
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->create()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    .line 2673
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Link;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2674
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2677
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 1

    .prologue
    .line 2632
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2630
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    .line 2664
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Link;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2665
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2667
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 6

    .prologue
    .line 2681
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Link;-><init>(Lcom/google/feedreader/extrpc/Client$Link$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 2682
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2683
    const/4 v2, 0x0

    .line 2684
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2685
    or-int/lit8 v2, v2, 0x1

    .line 2687
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Link;->access$3002(Lcom/google/feedreader/extrpc/Client$Link;Lcom/google/feedreader/extrpc/Client$Link$Relation;)Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2688
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2689
    or-int/lit8 v2, v2, 0x2

    .line 2691
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->url_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Link;->access$3102(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2693
    or-int/lit8 v2, v2, 0x4

    .line 2695
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->type_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Link;->access$3202(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 2697
    or-int/lit8 v2, v2, 0x8

    .line 2699
    :cond_35
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->length_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$Link;->access$3302(Lcom/google/feedreader/extrpc/Client$Link;J)J

    .line 2700
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 2701
    or-int/lit8 v2, v2, 0x10

    .line 2703
    :cond_42
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->language_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Link;->access$3402(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 2705
    or-int/lit8 v2, v2, 0x20

    .line 2707
    :cond_4f
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Link;->access$3502(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_65

    .line 2709
    or-int/lit8 v1, v2, 0x40

    .line 2711
    :goto_5c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->titleLanguage_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Link;->access$3602(Lcom/google/feedreader/extrpc/Client$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    #setter for: Lcom/google/feedreader/extrpc/Client$Link;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Link;->access$3702(Lcom/google/feedreader/extrpc/Client$Link;I)I

    .line 2713
    return-object v0

    :cond_65
    move v1, v2

    goto :goto_5c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3

    .prologue
    .line 2636
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2637
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2638
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2640
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2642
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    .line 2644
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2645
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2646
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 2648
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 2650
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2651
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLanguage()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2954
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2955
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2957
    return-object p0
.end method

.method public clearLength()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3

    .prologue
    .line 2923
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2924
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    .line 2926
    return-object p0
.end method

.method public clearRelation()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2830
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2831
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2833
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2990
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2991
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 2993
    return-object p0
.end method

.method public clearTitleLanguage()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 3026
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 3027
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 3029
    return-object p0
.end method

.method public clearType()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2897
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2898
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2900
    return-object p0
.end method

.method public clearUrl()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 2

    .prologue
    .line 2861
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2862
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2864
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3

    .prologue
    .line 2655
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->create()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Link$Builder;

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
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Link;
    .registers 2

    .prologue
    .line 2659
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2936
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2937
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2938
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    move-object v2, v1

    .line 2941
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 2914
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    return-wide v0
.end method

.method public getRelation()Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 2

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 2972
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2973
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2974
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 2977
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitleLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 3008
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3009
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3010
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    move-object v2, v1

    .line 3013
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2879
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2880
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2881
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    move-object v2, v1

    .line 2884
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2843
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2844
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2845
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    move-object v2, v1

    .line 2848
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasLanguage()Z
    .registers 3

    .prologue
    .line 2932
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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

.method public hasLength()Z
    .registers 3

    .prologue
    .line 2911
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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

.method public hasRelation()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2815
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 2968
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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

.method public hasTitleLanguage()Z
    .registers 3

    .prologue
    .line 3004
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 2875
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 2839
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

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
    .line 2743
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2745
    const/4 v0, 0x0

    .line 2747
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2717
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 2739
    :goto_7
    return-object v0

    .line 2718
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasRelation()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2719
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getRelation()Lcom/google/feedreader/extrpc/Client$Link$Relation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setRelation(Lcom/google/feedreader/extrpc/Client$Link$Relation;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2721
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2722
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2724
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2725
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setType(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2727
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2728
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setLength(J)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2730
    :cond_3c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2731
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2733
    :cond_49
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2734
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    .line 2736
    :cond_56
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->hasTitleLanguage()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2737
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link;->getTitleLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->setTitleLanguage(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    :cond_63
    move-object v0, p0

    .line 2739
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2755
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2756
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_70

    .line 2761
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2763
    :sswitch_d
    return-object p0

    .line 2768
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2769
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Link$Relation;->valueOf(I)Lcom/google/feedreader/extrpc/Client$Link$Relation;

    move-result-object v2

    .line 2770
    .local v2, value:Lcom/google/feedreader/extrpc/Client$Link$Relation;
    if-eqz v2, :cond_0

    .line 2771
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2772
    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_0

    .line 2777
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/feedreader/extrpc/Client$Link$Relation;
    :sswitch_21
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2778
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 2782
    :sswitch_2e
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 2787
    :sswitch_3b
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    goto :goto_0

    .line 2792
    :sswitch_48
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2793
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    goto :goto_0

    .line 2797
    :sswitch_55
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2798
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 2802
    :sswitch_62
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2803
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    goto :goto_0

    .line 2756
    nop

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_62
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
    .line 2620
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2620
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Link;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

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
    .line 2620
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2945
    if-nez p1, :cond_8

    .line 2946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2948
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2949
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2951
    return-object p0
.end method

.method setLanguage(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2960
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2961
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->language_:Ljava/lang/Object;

    .line 2963
    return-void
.end method

.method public setLength(J)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2917
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2918
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->length_:J

    .line 2920
    return-object p0
.end method

.method public setRelation(Lcom/google/feedreader/extrpc/Client$Link$Relation;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2821
    if-nez p1, :cond_8

    .line 2822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2824
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2825
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->relation_:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2827
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2981
    if-nez p1, :cond_8

    .line 2982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2984
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2985
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 2987
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2996
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2997
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->title_:Ljava/lang/Object;

    .line 2999
    return-void
.end method

.method public setTitleLanguage(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3017
    if-nez p1, :cond_8

    .line 3018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3020
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 3021
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 3023
    return-object p0
.end method

.method setTitleLanguage(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3032
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 3033
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->titleLanguage_:Ljava/lang/Object;

    .line 3035
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2888
    if-nez p1, :cond_8

    .line 2889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2891
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2892
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2894
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2903
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2904
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->type_:Ljava/lang/Object;

    .line 2906
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2852
    if-nez p1, :cond_8

    .line 2853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2855
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2856
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2858
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 2867
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->bitField0_:I

    .line 2868
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Link$Builder;->url_:Ljava/lang/Object;

    .line 2870
    return-void
.end method
