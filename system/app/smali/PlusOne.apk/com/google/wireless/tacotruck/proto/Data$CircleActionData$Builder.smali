.class public final Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gaiaId_:Lcom/google/protobuf/LazyStringList;

.field private name_:Lcom/google/protobuf/LazyStringList;

.field private profileType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25548
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25712
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25768
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25549
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->maybeForceBuilderInitialization()V

    .line 25550
    return-void
.end method

.method static synthetic access$34600()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 25543
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 25555
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGaiaIdIsMutable()V
    .registers 3

    .prologue
    .line 25714
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 25715
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25716
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25718
    :cond_16
    return-void
.end method

.method private ensureNameIsMutable()V
    .registers 3

    .prologue
    .line 25770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 25771
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25774
    :cond_16
    return-void
.end method

.method private ensureProfileTypeIsMutable()V
    .registers 3

    .prologue
    .line 25827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 25828
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25829
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25831
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25553
    return-void
.end method


# virtual methods
.method public addAllGaiaId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 25750
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 25751
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 25753
    return-object p0
.end method

.method public addAllName(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 25806
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 25807
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 25809
    return-object p0
.end method

.method public addAllProfileType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 25862
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 25863
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 25865
    return-object p0
.end method

.method public addGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25740
    if-nez p1, :cond_8

    .line 25741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25743
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 25744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 25746
    return-object p0
.end method

.method public addName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25796
    if-nez p1, :cond_8

    .line 25797
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25799
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 25800
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 25802
    return-object p0
.end method

.method public addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25852
    if-nez p1, :cond_8

    .line 25853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25855
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 25856
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25858
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 3

    .prologue
    .line 25578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    .line 25579
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25580
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25582
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 5

    .prologue
    .line 25596
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 25597
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25598
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 25599
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25601
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25603
    :cond_1e
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34802(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 25604
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 25605
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25607
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25609
    :cond_39
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34902(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 25610
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_53

    .line 25611
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25612
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25614
    :cond_53
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$35002(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Ljava/util/List;)Ljava/util/List;

    .line 25615
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 25559
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25560
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25562
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25563
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25564
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25565
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25566
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 25756
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25757
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25759
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 25812
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25815
    return-object p0
.end method

.method public clearProfileType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 25868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25869
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25871
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3

    .prologue
    .line 25570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

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
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25543
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 25574
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 25727
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 25724
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaIdList()Ljava/util/List;
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
    .line 25721
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 25783
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 25780
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
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
    .line 25777
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileType(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 3
    .parameter "index"

    .prologue
    .line 25839
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getProfileTypeCount()I
    .registers 2

    .prologue
    .line 25836
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProfileTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 25543
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

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
    .line 25543
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 25663
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_56

    .line 25668
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 25670
    :sswitch_d
    return-object p0

    .line 25675
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 25676
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 25680
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 25681
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 25685
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 25686
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v4

    .line 25687
    .local v4, value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v4, :cond_0

    .line 25688
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    goto :goto_0

    .line 25693
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 25694
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 25695
    .local v1, oldLimit:I
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_52

    .line 25696
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 25697
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v4

    .line 25698
    .restart local v4       #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v4, :cond_3e

    .line 25699
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    goto :goto_3e

    .line 25702
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :cond_52
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 25663
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x1a -> :sswitch_36
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 25619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25650
    :cond_6
    :goto_6
    return-object p0

    .line 25620
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34800(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 25621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 25622
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34800(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25630
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34900(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 25631
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 25632
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34900(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 25640
    :cond_43
    :goto_43
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$35000(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25641
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 25642
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$35000(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 25643
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    goto :goto_6

    .line 25625
    :cond_62
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 25626
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34800(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 25635
    :cond_6f
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 25636
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$34900(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 25645
    :cond_7c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 25646
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$35000(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setGaiaId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 25731
    if-nez p2, :cond_8

    .line 25732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25734
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 25735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25737
    return-object p0
.end method

.method public setName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 25787
    if-nez p2, :cond_8

    .line 25788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25790
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 25791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25793
    return-object p0
.end method

.method public setProfileType(ILcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 25843
    if-nez p2, :cond_8

    .line 25844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25846
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 25847
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25849
    return-object p0
.end method
