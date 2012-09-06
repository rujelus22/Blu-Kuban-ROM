.class public final Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$CostType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
        "Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$CostTypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private name_:Ljava/lang/Object;

.field private weight_:D


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 4219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4378
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    .line 4399
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4220
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->maybeForceBuilderInitialization()V

    .line 4221
    return-void
.end method

.method static synthetic access$4700()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 1

    .prologue
    .line 4214
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 1

    .prologue
    .line 4226
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDescriptionIsMutable()V
    .registers 3

    .prologue
    .line 4401
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 4402
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4403
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4405
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4224
    return-void
.end method


# virtual methods
.method public addAllDescription(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;"
        }
    .end annotation

    .prologue
    .line 4441
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->ensureDescriptionIsMutable()V

    .line 4442
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4444
    return-object p0
.end method

.method public addDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4431
    if-nez p1, :cond_8

    .line 4432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4434
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->ensureDescriptionIsMutable()V

    .line 4435
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4437
    return-object p0
.end method

.method public addDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4454
    if-nez p1, :cond_8

    .line 4455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4457
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->ensureDescriptionIsMutable()V

    .line 4458
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4460
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3

    .prologue
    .line 4249
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    .line 4250
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4251
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4253
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 6

    .prologue
    .line 4257
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 4258
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4259
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4260
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4261
    or-int/lit8 v2, v2, 0x1

    .line 4263
    :cond_10
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$4902(Lcom/google/protos/aksara/lattice/LatticeP$CostType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4265
    or-int/lit8 v2, v2, 0x2

    .line 4267
    :cond_1c
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->weight_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5002(Lcom/google/protos/aksara/lattice/LatticeP$CostType;D)D

    .line 4268
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 4269
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4271
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4273
    :cond_37
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5102(Lcom/google/protos/aksara/lattice/LatticeP$CostType;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 4274
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5202(Lcom/google/protos/aksara/lattice/LatticeP$CostType;I)I

    .line 4275
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3

    .prologue
    .line 4230
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4232
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4233
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    .line 4234
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4235
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4236
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4237
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 2

    .prologue
    .line 4447
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4448
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4450
    return-object p0
.end method

.method public clearName()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 2

    .prologue
    .line 4361
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4362
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4364
    return-object p0
.end method

.method public clearWeight()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3

    .prologue
    .line 4392
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4393
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    .line 4395
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3

    .prologue
    .line 4241
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

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
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 2

    .prologue
    .line 4245
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4414
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 4411
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDescriptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4331
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4333
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4336
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4341
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4342
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4343
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4345
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4348
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getWeight()D
    .registers 3

    .prologue
    .line 4383
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    return-wide v0
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4327
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWeight()Z
    .registers 3

    .prologue
    .line 4380
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

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
    .line 4302
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
    .line 4214
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4214
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

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
    .line 4214
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4309
    const/4 v2, 0x0

    .line 4311
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 4316
    if-eqz v2, :cond_10

    .line 4317
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    .line 4320
    :cond_10
    return-object p0

    .line 4312
    :catch_11
    move-exception v1

    .line 4313
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-object v2, v0

    .line 4314
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 4316
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 4317
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4279
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4298
    :cond_6
    :goto_6
    return-object p0

    .line 4280
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4281
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4282
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$4900(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4285
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->hasWeight()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4286
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->getWeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->setWeight(D)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;

    .line 4288
    :cond_26
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5100(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4289
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4290
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5100(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 4291
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    goto :goto_6

    .line 4293
    :cond_45
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->ensureDescriptionIsMutable()V

    .line 4294
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$CostType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType;->access$5100(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setDescription(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4422
    if-nez p2, :cond_8

    .line 4423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4425
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->ensureDescriptionIsMutable()V

    .line 4426
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4428
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4352
    if-nez p1, :cond_8

    .line 4353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4355
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4356
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4358
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4368
    if-nez p1, :cond_8

    .line 4369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4371
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4372
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->name_:Ljava/lang/Object;

    .line 4374
    return-object p0
.end method

.method public setWeight(D)Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4386
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->bitField0_:I

    .line 4387
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->weight_:D

    .line 4389
    return-object p0
.end method
