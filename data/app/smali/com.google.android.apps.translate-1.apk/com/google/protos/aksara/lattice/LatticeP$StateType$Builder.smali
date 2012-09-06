.class public final Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$StateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
        "Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$StateTypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3699
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3849
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3700
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->maybeForceBuilderInitialization()V

    .line 3701
    return-void
.end method

.method static synthetic access$4100()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 1

    .prologue
    .line 3694
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 1

    .prologue
    .line 3706
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDescriptionIsMutable()V
    .registers 3

    .prologue
    .line 3851
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 3852
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3853
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3855
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3704
    return-void
.end method


# virtual methods
.method public addAllDescription(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;"
        }
    .end annotation

    .prologue
    .line 3891
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->ensureDescriptionIsMutable()V

    .line 3892
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3894
    return-object p0
.end method

.method public addDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3881
    if-nez p1, :cond_8

    .line 3882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3884
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->ensureDescriptionIsMutable()V

    .line 3885
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3887
    return-object p0
.end method

.method public addDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3904
    if-nez p1, :cond_8

    .line 3905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3907
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->ensureDescriptionIsMutable()V

    .line 3908
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3910
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    .line 3728
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3729
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3731
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 6

    .prologue
    .line 3735
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 3736
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3737
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3738
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3739
    or-int/lit8 v2, v2, 0x1

    .line 3741
    :cond_10
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4302(Lcom/google/protos/aksara/lattice/LatticeP$StateType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 3743
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3745
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3747
    :cond_2b
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4402(Lcom/google/protos/aksara/lattice/LatticeP$StateType;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3748
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4502(Lcom/google/protos/aksara/lattice/LatticeP$StateType;I)I

    .line 3749
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2

    .prologue
    .line 3710
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3712
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3713
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3714
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3715
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2

    .prologue
    .line 3897
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3898
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3900
    return-object p0
.end method

.method public clearName()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 2

    .prologue
    .line 3832
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3833
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3835
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3

    .prologue
    .line 3719
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

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
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3694
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 2

    .prologue
    .line 3723
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 3858
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3802
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3803
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3804
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3807
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
    .line 3812
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3813
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3814
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3816
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3819
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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3798
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3773
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
    .line 3694
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3694
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

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
    .line 3694
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3780
    const/4 v2, 0x0

    .line 3782
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 3787
    if-eqz v2, :cond_10

    .line 3788
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    .line 3791
    :cond_10
    return-object p0

    .line 3783
    :catch_11
    move-exception v1

    .line 3784
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-object v2, v0

    .line 3785
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 3787
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 3788
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3753
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3769
    :cond_6
    :goto_6
    return-object p0

    .line 3754
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3755
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3756
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4300(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3759
    :cond_19
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4400(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3760
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3761
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4400(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 3762
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    goto :goto_6

    .line 3764
    :cond_38
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->ensureDescriptionIsMutable()V

    .line 3765
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$StateType;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType;->access$4400(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setDescription(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3872
    if-nez p2, :cond_8

    .line 3873
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3875
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->ensureDescriptionIsMutable()V

    .line 3876
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3878
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3823
    if-nez p1, :cond_8

    .line 3824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3826
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3827
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3829
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3839
    if-nez p1, :cond_8

    .line 3840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3842
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->bitField0_:I

    .line 3843
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->name_:Ljava/lang/Object;

    .line 3845
    return-object p0
.end method
