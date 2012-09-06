.class public final Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;",
        "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private computeNodePosteriors_:Z

.field private includeEdgeBounds_:Z

.field private includeNodeState_:Z

.field private logCostMultiplier_:F

.field private maxAbsoluteCost_:D

.field private maxEdgeFactor_:D

.field private maxRelativeCost_:D

.field private nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const-wide/high16 v1, 0x7ff0

    .line 6343
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6483
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    .line 6546
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    .line 6567
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6631
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    .line 6652
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    .line 6344
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maybeForceBuilderInitialization()V

    .line 6345
    return-void
.end method

.method static synthetic access$7200()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 1

    .prologue
    .line 6338
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 1

    .prologue
    .line 6350
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6348
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 3

    .prologue
    .line 6383
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    .line 6384
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6385
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6387
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 6

    .prologue
    .line 6391
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 6392
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6393
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6394
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6395
    or-int/lit8 v2, v2, 0x1

    .line 6397
    :cond_10
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxEdgeFactor_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7402(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D

    .line 6398
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6399
    or-int/lit8 v2, v2, 0x2

    .line 6401
    :cond_1c
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeNodeState_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeNodeState_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7502(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z

    .line 6402
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6403
    or-int/lit8 v2, v2, 0x4

    .line 6405
    :cond_28
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->computeNodePosteriors_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->computeNodePosteriors_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7602(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z

    .line 6406
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 6407
    or-int/lit8 v2, v2, 0x8

    .line 6409
    :cond_35
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->logCostMultiplier_:F
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7702(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;F)F

    .line 6410
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 6411
    or-int/lit8 v2, v2, 0x10

    .line 6413
    :cond_42
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7802(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6414
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 6415
    or-int/lit8 v2, v2, 0x20

    .line 6417
    :cond_4f
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeEdgeBounds_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->includeEdgeBounds_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$7902(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;Z)Z

    .line 6418
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 6419
    or-int/lit8 v2, v2, 0x40

    .line 6421
    :cond_5c
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxAbsoluteCost_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$8002(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D

    .line 6422
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 6423
    or-int/lit16 v2, v2, 0x80

    .line 6425
    :cond_69
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->maxRelativeCost_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$8102(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;D)D

    .line 6426
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->access$8202(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;I)I

    .line 6427
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v1, 0x7ff0

    .line 6354
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6355
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    .line 6356
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6357
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeNodeState_:Z

    .line 6358
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6359
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->computeNodePosteriors_:Z

    .line 6360
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6361
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    .line 6362
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6363
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6364
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6365
    iput-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeEdgeBounds_:Z

    .line 6366
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6367
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    .line 6368
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6369
    iput-wide v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    .line 6370
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6371
    return-object p0
.end method

.method public clearComputeNodePosteriors()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6539
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->computeNodePosteriors_:Z

    .line 6542
    return-object p0
.end method

.method public clearIncludeEdgeBounds()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6624
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeEdgeBounds_:Z

    .line 6627
    return-object p0
.end method

.method public clearIncludeNodeState()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6518
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeNodeState_:Z

    .line 6521
    return-object p0
.end method

.method public clearLogCostMultiplier()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6560
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6561
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    .line 6563
    return-object p0
.end method

.method public clearMaxAbsoluteCost()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3

    .prologue
    .line 6645
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6646
    const-wide/high16 v0, 0x7ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    .line 6648
    return-object p0
.end method

.method public clearMaxEdgeFactor()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3

    .prologue
    .line 6497
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6498
    const-wide/high16 v0, 0x7ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    .line 6500
    return-object p0
.end method

.method public clearMaxRelativeCost()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3

    .prologue
    .line 6666
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6667
    const-wide/high16 v0, 0x7ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    .line 6669
    return-object p0
.end method

.method public clearNbest()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 2

    .prologue
    .line 6603
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6605
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6606
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3

    .prologue
    .line 6375
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

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
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComputeNodePosteriors()Z
    .registers 2

    .prologue
    .line 6530
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->computeNodePosteriors_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6338
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    .registers 2

    .prologue
    .line 6379
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeEdgeBounds()Z
    .registers 2

    .prologue
    .line 6615
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeEdgeBounds_:Z

    return v0
.end method

.method public getIncludeNodeState()Z
    .registers 2

    .prologue
    .line 6509
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeNodeState_:Z

    return v0
.end method

.method public getLogCostMultiplier()F
    .registers 2

    .prologue
    .line 6551
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    return v0
.end method

.method public getMaxAbsoluteCost()D
    .registers 3

    .prologue
    .line 6636
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    return-wide v0
.end method

.method public getMaxEdgeFactor()D
    .registers 3

    .prologue
    .line 6488
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    return-wide v0
.end method

.method public getMaxRelativeCost()D
    .registers 3

    .prologue
    .line 6657
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    return-wide v0
.end method

.method public getNbest()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2

    .prologue
    .line 6572
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    return-object v0
.end method

.method public hasComputeNodePosteriors()Z
    .registers 3

    .prologue
    .line 6527
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasIncludeEdgeBounds()Z
    .registers 3

    .prologue
    .line 6612
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasIncludeNodeState()Z
    .registers 3

    .prologue
    .line 6506
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasLogCostMultiplier()Z
    .registers 3

    .prologue
    .line 6548
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasMaxAbsoluteCost()Z
    .registers 3

    .prologue
    .line 6633
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasMaxEdgeFactor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6485
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxRelativeCost()Z
    .registers 3

    .prologue
    .line 6654
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public hasNbest()Z
    .registers 3

    .prologue
    .line 6569
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 6460
    const/4 v0, 0x1

    return v0
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
    .line 6338
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6338
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

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
    .line 6338
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6467
    const/4 v2, 0x0

    .line 6469
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 6474
    if-eqz v2, :cond_10

    .line 6475
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6478
    :cond_10
    return-object p0

    .line 6470
    :catch_11
    move-exception v1

    .line 6471
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-object v2, v0

    .line 6472
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 6474
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 6475
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6431
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6456
    :cond_6
    :goto_6
    return-object p0

    .line 6432
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasMaxEdgeFactor()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6433
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getMaxEdgeFactor()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setMaxEdgeFactor(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6435
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasIncludeNodeState()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6436
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getIncludeNodeState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setIncludeNodeState(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6438
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasComputeNodePosteriors()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6439
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getComputeNodePosteriors()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setComputeNodePosteriors(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6441
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasLogCostMultiplier()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6442
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getLogCostMultiplier()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setLogCostMultiplier(F)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6444
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasNbest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 6445
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getNbest()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->mergeNbest(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6447
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasIncludeEdgeBounds()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 6448
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getIncludeEdgeBounds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setIncludeEdgeBounds(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6450
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasMaxAbsoluteCost()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 6451
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getMaxAbsoluteCost()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setMaxAbsoluteCost(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    .line 6453
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->hasMaxRelativeCost()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6454
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions;->getMaxRelativeCost()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->setMaxRelativeCost(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;

    goto :goto_6
.end method

.method public mergeNbest(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6591
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6593
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->newBuilder(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6599
    :goto_20
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6600
    return-object p0

    .line 6596
    :cond_27
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    goto :goto_20
.end method

.method public setComputeNodePosteriors(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6533
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6534
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->computeNodePosteriors_:Z

    .line 6536
    return-object p0
.end method

.method public setIncludeEdgeBounds(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6618
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6619
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeEdgeBounds_:Z

    .line 6621
    return-object p0
.end method

.method public setIncludeNodeState(Z)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6512
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6513
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->includeNodeState_:Z

    .line 6515
    return-object p0
.end method

.method public setLogCostMultiplier(F)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6554
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6555
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->logCostMultiplier_:F

    .line 6557
    return-object p0
.end method

.method public setMaxAbsoluteCost(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6639
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6640
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxAbsoluteCost_:D

    .line 6642
    return-object p0
.end method

.method public setMaxEdgeFactor(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6491
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6492
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxEdgeFactor_:D

    .line 6494
    return-object p0
.end method

.method public setMaxRelativeCost(D)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6660
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6661
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->maxRelativeCost_:D

    .line 6663
    return-object p0
.end method

.method public setNbest(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6585
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6587
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6588
    return-object p0
.end method

.method public setNbest(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6575
    if-nez p1, :cond_8

    .line 6576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6578
    :cond_8
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->nbest_:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .line 6580
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$LatticeOptions$Builder;->bitField0_:I

    .line 6581
    return-object p0
.end method
