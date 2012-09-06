.class public final Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

.field private focusObfuscatedSubjectId_:Ljava/lang/Object;

.field private id_:J

.field private lowerRightX_:I

.field private lowerRightY_:I

.field private nameTagCreatorGaiaId_:J

.field private normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

.field private photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

.field private status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field private subjectGaiaId_:J

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private upperLeftX_:I

.field private upperLeftY_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20855
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21251
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 21315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 21351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 21440
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 21485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 21521
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 20856
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->maybeForceBuilderInitialization()V

    .line 20857
    return-void
.end method

.method static synthetic access$27200()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 20850
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 20862
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestionIsMutable()V
    .registers 3

    .prologue
    .line 21354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 21355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 21356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21358
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20860
    return-void
.end method


# virtual methods
.method public addAllSuggestion(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;"
        }
    .end annotation

    .prologue
    .line 21421
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21422
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21424
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21414
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21417
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21397
    if-nez p2, :cond_8

    .line 21398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21400
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21401
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21403
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 21407
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21408
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21410
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21387
    if-nez p1, :cond_8

    .line 21388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21390
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21391
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21393
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3

    .prologue
    .line 20905
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    .line 20906
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20907
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20909
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 6

    .prologue
    .line 20923
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 20924
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20925
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20926
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20927
    or-int/lit8 v2, v2, 0x1

    .line 20929
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 20930
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20931
    or-int/lit8 v2, v2, 0x2

    .line 20933
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 20934
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 20935
    or-int/lit8 v2, v2, 0x4

    .line 20937
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 20938
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 20939
    or-int/lit8 v2, v2, 0x8

    .line 20941
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 20942
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 20943
    or-int/lit8 v2, v2, 0x10

    .line 20945
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 20946
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 20947
    or-int/lit8 v2, v2, 0x20

    .line 20949
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$27902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 20950
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 20951
    or-int/lit8 v2, v2, 0x40

    .line 20953
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 20954
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 20955
    or-int/lit16 v2, v2, 0x80

    .line 20957
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28102(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20958
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 20959
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 20960
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20962
    :cond_84
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28202(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/util/List;)Ljava/util/List;

    .line 20963
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 20964
    or-int/lit16 v2, v2, 0x100

    .line 20966
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 20967
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 20968
    or-int/lit16 v2, v2, 0x200

    .line 20970
    :cond_9e
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 20971
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_ab

    .line 20972
    or-int/lit16 v2, v2, 0x400

    .line 20974
    :cond_ab
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20975
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b8

    .line 20976
    or-int/lit16 v2, v2, 0x800

    .line 20978
    :cond_b8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 20979
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 20980
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20866
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20867
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 20868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20869
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 20870
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20871
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 20872
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20873
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 20874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20875
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 20876
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 20878
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20879
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 20880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20881
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 20882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 20884
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20885
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 20886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20887
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 20888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 20890
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20891
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 20892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 20893
    return-object p0
.end method

.method public clearFocusObfuscatedNameTagCreatorId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21509
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21510
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 21512
    return-object p0
.end method

.method public clearFocusObfuscatedSubjectId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21339
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21340
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 21342
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 21160
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 21163
    return-object p0
.end method

.method public clearLowerRightX()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21224
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 21226
    return-object p0
.end method

.method public clearLowerRightY()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21244
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 21247
    return-object p0
.end method

.method public clearNameTagCreatorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 21478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 21481
    return-object p0
.end method

.method public clearNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21557
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 21559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21560
    return-object p0
.end method

.method public clearPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21287
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 21289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21290
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21457
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21458
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 21460
    return-object p0
.end method

.method public clearSubjectGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 21308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 21311
    return-object p0
.end method

.method public clearSuggestion()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 21427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 21428
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21430
    return-object p0
.end method

.method public clearUpperLeftX()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21181
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 21184
    return-object p0
.end method

.method public clearUpperLeftY()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21202
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21203
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 21205
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 20897
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

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
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 2

    .prologue
    .line 20901
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21490
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 21491
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21492
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21493
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 21496
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

.method public getFocusObfuscatedSubjectId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21320
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 21321
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21322
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21323
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 21326
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

.method public getId()J
    .registers 3

    .prologue
    .line 21151
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    return-wide v0
.end method

.method public getLowerRightX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    return v0
.end method

.method public getLowerRightY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21235
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    return v0
.end method

.method public getNameTagCreatorGaiaId()J
    .registers 3

    .prologue
    .line 21469
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    return-wide v0
.end method

.method public getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 21526
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 21256
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2

    .prologue
    .line 21445
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method

.method public getSubjectGaiaId()J
    .registers 3

    .prologue
    .line 21299
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    return-wide v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 21367
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 21364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21361
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpperLeftX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    return v0
.end method

.method public getUpperLeftY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    return v0
.end method

.method public hasFocusObfuscatedNameTagCreatorId()Z
    .registers 3

    .prologue
    .line 21487
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedSubjectId()Z
    .registers 3

    .prologue
    .line 21317
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21148
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLowerRightX()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasLowerRightY()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21232
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasNameTagCreatorGaiaId()Z
    .registers 3

    .prologue
    .line 21466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasNormalizedBounds()Z
    .registers 3

    .prologue
    .line 21523
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasPhotoActionState()Z
    .registers 3

    .prologue
    .line 21253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 21442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasSubjectGaiaId()Z
    .registers 3

    .prologue
    .line 21296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasUpperLeftX()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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

.method public hasUpperLeftY()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21190
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

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
    .line 21035
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->hasNormalizedBounds()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 21036
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 21038
    const/4 v0, 0x0

    .line 21041
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
    .line 20850
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20850
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

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
    .line 20850
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21049
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 21050
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_e4

    .line 21055
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21057
    :sswitch_d
    return-object p0

    .line 21062
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    goto :goto_0

    .line 21067
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21068
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    goto :goto_0

    .line 21072
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    goto :goto_0

    .line 21077
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21078
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    goto :goto_0

    .line 21082
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21083
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    goto :goto_0

    .line 21087
    :sswitch_4f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v1

    .line 21088
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->hasPhotoActionState()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 21089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 21091
    :cond_60
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21092
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto :goto_0

    .line 21096
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    :sswitch_6b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21097
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    goto :goto_0

    .line 21101
    :sswitch_78
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v1

    .line 21102
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21103
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_0

    .line 21107
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    :sswitch_88
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 21108
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v3

    .line 21109
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    if-eqz v3, :cond_0

    .line 21110
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21111
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto/16 :goto_0

    .line 21116
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    :sswitch_9c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    goto/16 :goto_0

    .line 21121
    :sswitch_aa
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v1

    .line 21122
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->hasNormalizedBounds()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 21123
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 21125
    :cond_bb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21126
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_0

    .line 21130
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    :sswitch_c7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21135
    :sswitch_d5
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21050
    nop

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x15 -> :sswitch_1b
        0x1d -> :sswitch_28
        0x25 -> :sswitch_35
        0x2d -> :sswitch_42
        0x32 -> :sswitch_4f
        0x38 -> :sswitch_6b
        0x42 -> :sswitch_78
        0x48 -> :sswitch_88
        0x50 -> :sswitch_9c
        0x5a -> :sswitch_aa
        0x62 -> :sswitch_c7
        0x6a -> :sswitch_d5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 20984
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21031
    :cond_6
    :goto_6
    return-object p0

    .line 20985
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20986
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 20988
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasUpperLeftX()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 20989
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getUpperLeftX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setUpperLeftX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 20991
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasUpperLeftY()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 20992
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getUpperLeftY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setUpperLeftY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 20994
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasLowerRightX()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 20995
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getLowerRightX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setLowerRightX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 20997
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasLowerRightY()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 20998
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getLowerRightY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setLowerRightY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21000
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasPhotoActionState()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21001
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21003
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasSubjectGaiaId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 21004
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSubjectGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setSubjectGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21006
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasFocusObfuscatedSubjectId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 21007
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setFocusObfuscatedSubjectId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21009
    :cond_6f
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 21010
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 21011
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 21012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21019
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 21020
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21022
    :cond_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNameTagCreatorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 21023
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNameTagCreatorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setNameTagCreatorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21025
    :cond_a7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasFocusObfuscatedNameTagCreatorId()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 21026
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setFocusObfuscatedNameTagCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 21028
    :cond_b4
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNormalizedBounds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21029
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_6

    .line 21014
    :cond_c3
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21015
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$28200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8d
.end method

.method public mergeNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21545
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 21547
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 21553
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21554
    return-object p0

    .line 21550
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    goto :goto_20
.end method

.method public mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 21277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 21283
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21284
    return-object p0

    .line 21280
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    goto :goto_20
.end method

.method public setFocusObfuscatedNameTagCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21500
    if-nez p1, :cond_8

    .line 21501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21503
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21504
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 21506
    return-object p0
.end method

.method public setFocusObfuscatedSubjectId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21330
    if-nez p1, :cond_8

    .line 21331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21333
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21334
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 21336
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21155
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 21157
    return-object p0
.end method

.method public setLowerRightX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21217
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21218
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 21220
    return-object p0
.end method

.method public setLowerRightY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21239
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 21241
    return-object p0
.end method

.method public setNameTagCreatorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21473
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 21475
    return-object p0
.end method

.method public setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21539
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 21541
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21542
    return-object p0
.end method

.method public setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21529
    if-nez p1, :cond_8

    .line 21530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21532
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 21534
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21535
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21269
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 21271
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21272
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21259
    if-nez p1, :cond_8

    .line 21260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21262
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 21264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21265
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21448
    if-nez p1, :cond_8

    .line 21449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21451
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21452
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 21454
    return-object p0
.end method

.method public setSubjectGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21303
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 21305
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21381
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21384
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21371
    if-nez p2, :cond_8

    .line 21372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21374
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 21375
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21377
    return-object p0
.end method

.method public setUpperLeftX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21176
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 21178
    return-object p0
.end method

.method public setUpperLeftY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21196
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 21197
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 21199
    return-object p0
.end method
