.class public final Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$NBestOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;",
        "Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$NBestOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private includeCosts_:Z

.field private includeEdges_:Z

.field private includeLabels_:Z

.field private numPaths_:I

.field private uniqueText_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5724
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    .line 5725
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->maybeForceBuilderInitialization()V

    .line 5726
    return-void
.end method

.method static synthetic access$6300()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 1

    .prologue
    .line 5719
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 1

    .prologue
    .line 5731
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5729
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 3

    .prologue
    .line 5758
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    .line 5759
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5760
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5762
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 6

    .prologue
    .line 5766
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 5767
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5768
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5769
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5770
    or-int/lit8 v2, v2, 0x1

    .line 5772
    :cond_10
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->numPaths_:I

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->numPaths_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$6502(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;I)I

    .line 5773
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5774
    or-int/lit8 v2, v2, 0x2

    .line 5776
    :cond_1c
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->uniqueText_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$6602(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z

    .line 5777
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5778
    or-int/lit8 v2, v2, 0x4

    .line 5780
    :cond_28
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeEdges_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeEdges_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$6702(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z

    .line 5781
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 5782
    or-int/lit8 v2, v2, 0x8

    .line 5784
    :cond_35
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeLabels_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeLabels_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$6802(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z

    .line 5785
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 5786
    or-int/lit8 v2, v2, 0x10

    .line 5788
    :cond_42
    iget-boolean v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeCosts_:Z

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->includeCosts_:Z
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$6902(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;Z)Z

    .line 5789
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->access$7002(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;I)I

    .line 5790
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5735
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5736
    iput v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->numPaths_:I

    .line 5737
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    .line 5739
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5740
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeEdges_:Z

    .line 5741
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5742
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeLabels_:Z

    .line 5743
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5744
    iput-boolean v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeCosts_:Z

    .line 5745
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5746
    return-object p0
.end method

.method public clearIncludeCosts()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5935
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeCosts_:Z

    .line 5938
    return-object p0
.end method

.method public clearIncludeEdges()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5893
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeEdges_:Z

    .line 5896
    return-object p0
.end method

.method public clearIncludeLabels()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5914
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeLabels_:Z

    .line 5917
    return-object p0
.end method

.method public clearNumPaths()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5851
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5852
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->numPaths_:I

    .line 5854
    return-object p0
.end method

.method public clearUniqueText()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 2

    .prologue
    .line 5872
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    .line 5875
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3

    .prologue
    .line 5750
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

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
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    .registers 2

    .prologue
    .line 5754
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeCosts()Z
    .registers 2

    .prologue
    .line 5926
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeCosts_:Z

    return v0
.end method

.method public getIncludeEdges()Z
    .registers 2

    .prologue
    .line 5884
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeEdges_:Z

    return v0
.end method

.method public getIncludeLabels()Z
    .registers 2

    .prologue
    .line 5905
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeLabels_:Z

    return v0
.end method

.method public getNumPaths()I
    .registers 2

    .prologue
    .line 5842
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->numPaths_:I

    return v0
.end method

.method public getUniqueText()Z
    .registers 2

    .prologue
    .line 5863
    iget-boolean v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    return v0
.end method

.method public hasIncludeCosts()Z
    .registers 3

    .prologue
    .line 5923
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

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

.method public hasIncludeEdges()Z
    .registers 3

    .prologue
    .line 5881
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

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

.method public hasIncludeLabels()Z
    .registers 3

    .prologue
    .line 5902
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

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

.method public hasNumPaths()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5839
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUniqueText()Z
    .registers 3

    .prologue
    .line 5860
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

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
    .line 5814
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
    .line 5719
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5719
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

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
    .line 5719
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5821
    const/4 v2, 0x0

    .line 5823
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 5828
    if-eqz v2, :cond_10

    .line 5829
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 5832
    :cond_10
    return-object p0

    .line 5824
    :catch_11
    move-exception v1

    .line 5825
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-object v2, v0

    .line 5826
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 5828
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 5829
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5794
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5810
    :cond_6
    :goto_6
    return-object p0

    .line 5795
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->hasNumPaths()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5796
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getNumPaths()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->setNumPaths(I)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 5798
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->hasUniqueText()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5799
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getUniqueText()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->setUniqueText(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 5801
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->hasIncludeEdges()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5802
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getIncludeEdges()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->setIncludeEdges(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 5804
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->hasIncludeLabels()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5805
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getIncludeLabels()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->setIncludeLabels(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    .line 5807
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->hasIncludeCosts()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5808
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions;->getIncludeCosts()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->setIncludeCosts(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;

    goto :goto_6
.end method

.method public setIncludeCosts(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5929
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5930
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeCosts_:Z

    .line 5932
    return-object p0
.end method

.method public setIncludeEdges(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5887
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5888
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeEdges_:Z

    .line 5890
    return-object p0
.end method

.method public setIncludeLabels(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5908
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5909
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->includeLabels_:Z

    .line 5911
    return-object p0
.end method

.method public setNumPaths(I)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5845
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5846
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->numPaths_:I

    .line 5848
    return-object p0
.end method

.method public setUniqueText(Z)Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5866
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->bitField0_:I

    .line 5867
    iput-boolean p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$NBestOptions$Builder;->uniqueText_:Z

    .line 5869
    return-object p0
.end method
