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
    .line 19118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19514
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19703
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19784
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19119
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->maybeForceBuilderInitialization()V

    .line 19120
    return-void
.end method

.method static synthetic access$25100()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 19113
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 19125
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSuggestionIsMutable()V
    .registers 3

    .prologue
    .line 19617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 19618
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19619
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19621
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19123
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
    .line 19684
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19687
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19677
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19678
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19680
    return-object p0
.end method

.method public addSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19660
    if-nez p2, :cond_8

    .line 19661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19663
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19664
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19666
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 19670
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19671
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19673
    return-object p0
.end method

.method public addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19650
    if-nez p1, :cond_8

    .line 19651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19653
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19654
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19656
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3

    .prologue
    .line 19168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    .line 19169
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19170
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19172
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 6

    .prologue
    .line 19186
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 19187
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19188
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19189
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19190
    or-int/lit8 v2, v2, 0x1

    .line 19192
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 19193
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19194
    or-int/lit8 v2, v2, 0x2

    .line 19196
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 19197
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19198
    or-int/lit8 v2, v2, 0x4

    .line 19200
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 19201
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 19202
    or-int/lit8 v2, v2, 0x8

    .line 19204
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 19205
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 19206
    or-int/lit8 v2, v2, 0x10

    .line 19208
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 19209
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 19210
    or-int/lit8 v2, v2, 0x20

    .line 19212
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19213
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 19214
    or-int/lit8 v2, v2, 0x40

    .line 19216
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$25902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 19217
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 19218
    or-int/lit16 v2, v2, 0x80

    .line 19220
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19221
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 19222
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19223
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19225
    :cond_84
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26102(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/util/List;)Ljava/util/List;

    .line 19226
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_91

    .line 19227
    or-int/lit16 v2, v2, 0x100

    .line 19229
    :cond_91
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26202(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19230
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9e

    .line 19231
    or-int/lit16 v2, v2, 0x200

    .line 19233
    :cond_9e
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J

    .line 19234
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_ab

    .line 19235
    or-int/lit16 v2, v2, 0x400

    .line 19237
    :cond_ab
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19238
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b8

    .line 19239
    or-int/lit16 v2, v2, 0x800

    .line 19241
    :cond_b8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19242
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I

    .line 19243
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 19129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19130
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 19131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19132
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 19133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19134
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 19135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19136
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 19137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19138
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 19139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19140
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19142
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 19143
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19145
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19148
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19149
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19150
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 19151
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19153
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19156
    return-object p0
.end method

.method public clearFocusObfuscatedNameTagCreatorId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19773
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19775
    return-object p0
.end method

.method public clearFocusObfuscatedSubjectId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19603
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19605
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 19423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 19426
    return-object p0
.end method

.method public clearLowerRightX()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19486
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19487
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 19489
    return-object p0
.end method

.method public clearLowerRightY()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19507
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19508
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 19510
    return-object p0
.end method

.method public clearNameTagCreatorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 19741
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 19744
    return-object p0
.end method

.method public clearNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19820
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19822
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19823
    return-object p0
.end method

.method public clearPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19553
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19720
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19721
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19723
    return-object p0
.end method

.method public clearSubjectGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 19571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 19574
    return-object p0
.end method

.method public clearSuggestion()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 19690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19693
    return-object p0
.end method

.method public clearUpperLeftX()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19445
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 19447
    return-object p0
.end method

.method public clearUpperLeftY()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19466
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 19468
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3

    .prologue
    .line 19160
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
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 2

    .prologue
    .line 19164
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19753
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19754
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19755
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19756
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19759
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
    .line 19583
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19584
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19586
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19589
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
    .line 19414
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    return-wide v0
.end method

.method public getLowerRightX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    return v0
.end method

.method public getLowerRightY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    return v0
.end method

.method public getNameTagCreatorGaiaId()J
    .registers 3

    .prologue
    .line 19732
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    return-wide v0
.end method

.method public getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 19789
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 19519
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2

    .prologue
    .line 19708
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method

.method public getSubjectGaiaId()J
    .registers 3

    .prologue
    .line 19562
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    return-wide v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 19630
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 19627
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
    .line 19624
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
    .line 19435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    return v0
.end method

.method public getUpperLeftY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    return v0
.end method

.method public hasFocusObfuscatedNameTagCreatorId()Z
    .registers 3

    .prologue
    .line 19750
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
    .line 19580
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

    .line 19411
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
    .line 19474
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
    .line 19495
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
    .line 19729
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
    .line 19786
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
    .line 19516
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
    .line 19705
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
    .line 19559
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
    .line 19432
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
    .line 19453
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
    .line 19113
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

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
    .line 19113
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
    .line 19312
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 19313
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_e4

    .line 19318
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19320
    :sswitch_d
    return-object p0

    .line 19325
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19326
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    goto :goto_0

    .line 19330
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19331
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    goto :goto_0

    .line 19335
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    goto :goto_0

    .line 19340
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    goto :goto_0

    .line 19345
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    goto :goto_0

    .line 19350
    :sswitch_4f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v1

    .line 19351
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->hasPhotoActionState()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 19352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 19354
    :cond_60
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19355
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto :goto_0

    .line 19359
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    :sswitch_6b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    goto :goto_0

    .line 19364
    :sswitch_78
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v1

    .line 19365
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19366
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->addSuggestion(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_0

    .line 19370
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    :sswitch_88
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 19371
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v3

    .line 19372
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    if-eqz v3, :cond_0

    .line 19373
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19374
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto/16 :goto_0

    .line 19379
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    :sswitch_9c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19380
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    goto/16 :goto_0

    .line 19384
    :sswitch_aa
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v1

    .line 19385
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->hasNormalizedBounds()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 19386
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 19388
    :cond_bb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19389
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_0

    .line 19393
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    :sswitch_c7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19394
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19398
    :sswitch_d5
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19399
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19313
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
    .line 19247
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19294
    :cond_6
    :goto_6
    return-object p0

    .line 19248
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19249
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19251
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasUpperLeftX()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19252
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getUpperLeftX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setUpperLeftX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19254
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasUpperLeftY()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19255
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getUpperLeftY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setUpperLeftY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19257
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasLowerRightX()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 19258
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getLowerRightX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setLowerRightX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19260
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasLowerRightY()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 19261
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getLowerRightY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setLowerRightY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19263
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasPhotoActionState()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 19264
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19266
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasSubjectGaiaId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 19267
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSubjectGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setSubjectGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19269
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasFocusObfuscatedSubjectId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 19270
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setFocusObfuscatedSubjectId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19272
    :cond_6f
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26100(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 19273
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 19274
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26100(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    .line 19275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19282
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 19283
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19285
    :cond_9a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNameTagCreatorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 19286
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNameTagCreatorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setNameTagCreatorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19288
    :cond_a7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasFocusObfuscatedNameTagCreatorId()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 19289
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->setFocusObfuscatedNameTagCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    .line 19291
    :cond_b4
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNormalizedBounds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19292
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    goto/16 :goto_6

    .line 19277
    :cond_c3
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19278
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->access$26100(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8d
.end method

.method public mergeNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19810
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19816
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19817
    return-object p0

    .line 19813
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    goto :goto_20
.end method

.method public mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19538
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19540
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19546
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19547
    return-object p0

    .line 19543
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    goto :goto_20
.end method

.method public setFocusObfuscatedNameTagCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19763
    if-nez p1, :cond_8

    .line 19764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19766
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19767
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 19769
    return-object p0
.end method

.method public setFocusObfuscatedSubjectId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19593
    if-nez p1, :cond_8

    .line 19594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19596
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19597
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 19599
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19418
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->id_:J

    .line 19420
    return-object p0
.end method

.method public setLowerRightX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19480
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19481
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightX_:I

    .line 19483
    return-object p0
.end method

.method public setLowerRightY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19502
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->lowerRightY_:I

    .line 19504
    return-object p0
.end method

.method public setNameTagCreatorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19735
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19736
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->nameTagCreatorGaiaId_:J

    .line 19738
    return-object p0
.end method

.method public setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19802
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19805
    return-object p0
.end method

.method public setNormalizedBounds(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19792
    if-nez p1, :cond_8

    .line 19793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19795
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 19797
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19798
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19532
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19534
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19535
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19522
    if-nez p1, :cond_8

    .line 19523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19525
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 19527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19528
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19711
    if-nez p1, :cond_8

    .line 19712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19714
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19715
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19717
    return-object p0
.end method

.method public setSubjectGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19565
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19566
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->subjectGaiaId_:J

    .line 19568
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19644
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19645
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19647
    return-object p0
.end method

.method public setSuggestion(ILcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19634
    if-nez p2, :cond_8

    .line 19635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19637
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->ensureSuggestionIsMutable()V

    .line 19638
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19640
    return-object p0
.end method

.method public setUpperLeftX(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19438
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19439
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftX_:I

    .line 19441
    return-object p0
.end method

.method public setUpperLeftY(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19459
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->bitField0_:I

    .line 19460
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->upperLeftY_:I

    .line 19462
    return-object p0
.end method
