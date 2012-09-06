.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;",
        ">;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpecOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private classifierType_:Ljava/lang/Object;

.field private inkreader_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private numResults_:I

.field private supportedChars_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2835
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2612
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->maybeForceBuilderInitialization()V

    .line 2613
    return-void
.end method

.method static synthetic access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2606
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 2606
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    .line 2655
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2656
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2659
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 2618
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2616
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    .line 2646
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2647
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2649
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2663
    new-instance v2, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V

    .line 2664
    iget v3, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2665
    const/4 v1, 0x0

    .line 2666
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_49

    .line 2669
    :goto_e
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3402(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 2671
    or-int/lit8 v0, v0, 0x2

    .line 2673
    :cond_1a
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3502(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 2675
    or-int/lit8 v0, v0, 0x4

    .line 2677
    :cond_26
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3602(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 2679
    or-int/lit8 v0, v0, 0x8

    .line 2681
    :cond_33
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3702(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_40

    .line 2683
    or-int/lit8 v0, v0, 0x10

    .line 2685
    :cond_40
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3802(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;I)I

    .line 2686
    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->access$3902(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;I)I

    .line 2687
    return-object v2

    :cond_49
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2624
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2626
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2628
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2630
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2631
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    .line 2632
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2633
    return-object p0
.end method

.method public clearClassifierType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2895
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2896
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getClassifierType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2898
    return-object p0
.end method

.method public clearInkreader()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2787
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2788
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getInkreader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2790
    return-object p0
.end method

.method public clearModel()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2823
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2824
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2826
    return-object p0
.end method

.method public clearNumResults()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2921
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2922
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    .line 2924
    return-object p0
.end method

.method public clearSupportedChars()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2859
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2860
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getSupportedChars()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2862
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3

    .prologue
    .line 2637
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

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
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassifierType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2877
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2878
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2879
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2882
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2

    .prologue
    .line 2641
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getInkreader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2769
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2770
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2771
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2774
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2805
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2806
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2807
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2810
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getNumResults()I
    .registers 2

    .prologue
    .line 2912
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    return v0
.end method

.method public getSupportedChars()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2841
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2842
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2843
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2846
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasClassifierType()Z
    .registers 3

    .prologue
    .line 2873
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

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

.method public hasInkreader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2765
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasModel()Z
    .registers 3

    .prologue
    .line 2801
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

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

.method public hasNumResults()Z
    .registers 3

    .prologue
    .line 2909
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

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

.method public hasSupportedChars()Z
    .registers 3

    .prologue
    .line 2837
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

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
    .line 2711
    const/4 v0, 0x1

    return v0
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
    .line 2606
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2606
    check-cast p1, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-virtual {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

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
    .line 2606
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2719
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2720
    sparse-switch v0, :sswitch_data_50

    .line 2725
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2727
    :sswitch_d
    return-object p0

    .line 2732
    :sswitch_e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2733
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    goto :goto_0

    .line 2737
    :sswitch_1b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 2742
    :sswitch_28
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    goto :goto_0

    .line 2747
    :sswitch_35
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    goto :goto_0

    .line 2752
    :sswitch_42
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    goto :goto_0

    .line 2720
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2691
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2707
    :cond_6
    :goto_6
    return-object p0

    .line 2692
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->hasInkreader()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2693
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getInkreader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->setInkreader(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    .line 2695
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2696
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->setModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    .line 2698
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->hasSupportedChars()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2699
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getSupportedChars()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->setSupportedChars(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    .line 2701
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->hasClassifierType()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2702
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getClassifierType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->setClassifierType(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    .line 2704
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->hasNumResults()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2705
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getNumResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->setNumResults(I)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    goto :goto_6
.end method

.method public setClassifierType(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2886
    if-nez p1, :cond_8

    .line 2887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2889
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2890
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2892
    return-object p0
.end method

.method setClassifierType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2901
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2902
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 2904
    return-void
.end method

.method public setInkreader(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2778
    if-nez p1, :cond_8

    .line 2779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2781
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2782
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2784
    return-object p0
.end method

.method setInkreader(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2793
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2794
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 2796
    return-void
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2814
    if-nez p1, :cond_8

    .line 2815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2817
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2818
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2820
    return-object p0
.end method

.method setModel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2829
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2830
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 2832
    return-void
.end method

.method public setNumResults(I)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2915
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2916
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->numResults_:I

    .line 2918
    return-object p0
.end method

.method public setSupportedChars(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2850
    if-nez p1, :cond_8

    .line 2851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2853
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2854
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2856
    return-object p0
.end method

.method setSupportedChars(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2865
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->bitField0_:I

    .line 2866
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->supportedChars_:Ljava/lang/Object;

    .line 2868
    return-void
.end method
