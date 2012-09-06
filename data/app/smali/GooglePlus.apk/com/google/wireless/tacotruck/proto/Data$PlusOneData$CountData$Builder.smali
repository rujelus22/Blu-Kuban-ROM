.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleName_:Ljava/lang/Object;

.field private count_:I

.field private focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

.field private personFirstName_:Lcom/google/protobuf/LazyStringList;

.field private personId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9706
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9959
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 10015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 10051
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9707
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->maybeForceBuilderInitialization()V

    .line 9708
    return-void
.end method

.method static synthetic access$12300()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9701
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9713
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFocusObfuscatedPersonIdIsMutable()V
    .registers 3

    .prologue
    .line 9961
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 9962
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9965
    :cond_16
    return-void
.end method

.method private ensurePersonFirstNameIsMutable()V
    .registers 3

    .prologue
    .line 10053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 10054
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 10055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 10057
    :cond_17
    return-void
.end method

.method private ensurePersonIdIsMutable()V
    .registers 3

    .prologue
    .line 9916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 9917
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9920
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9711
    return-void
.end method


# virtual methods
.method public addAllFocusObfuscatedPersonId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 9997
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9998
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10000
    return-object p0
.end method

.method public addAllPersonFirstName(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 10089
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 10090
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10092
    return-object p0
.end method

.method public addAllPersonId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;"
        }
    .end annotation

    .prologue
    .line 9946
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9947
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9949
    return-object p0
.end method

.method public addFocusObfuscatedPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9987
    if-nez p1, :cond_8

    .line 9988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9990
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9991
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 9993
    return-object p0
.end method

.method public addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10079
    if-nez p1, :cond_8

    .line 10080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10082
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 10083
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10085
    return-object p0
.end method

.method public addPersonId(J)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 9939
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9940
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9942
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 3

    .prologue
    .line 9740
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    .line 9741
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9742
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9744
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 6

    .prologue
    .line 9758
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 9759
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9760
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9761
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9762
    or-int/lit8 v2, v2, 0x1

    .line 9764
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12502(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I

    .line 9765
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 9766
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9767
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9769
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12602(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/util/List;)Ljava/util/List;

    .line 9770
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_45

    .line 9771
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9773
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9775
    :cond_45
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 9776
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_52

    .line 9777
    or-int/lit8 v2, v2, 0x2

    .line 9779
    :cond_52
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9780
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 9781
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9783
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9785
    :cond_6e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12902(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 9786
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$13002(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I

    .line 9787
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9717
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9718
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9722
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9723
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 9725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9726
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9728
    return-object p0
.end method

.method public clearCircleName()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 10039
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 10040
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 10042
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9907
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9908
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9910
    return-object p0
.end method

.method public clearFocusObfuscatedPersonId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 10003
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 10004
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 10006
    return-object p0
.end method

.method public clearPersonFirstName()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 10095
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 10096
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 10098
    return-object p0
.end method

.method public clearPersonId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9955
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3

    .prologue
    .line 9732
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

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
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10020
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 10021
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10022
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10023
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 10026
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

.method public getCount()I
    .registers 2

    .prologue
    .line 9898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9701
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 2

    .prologue
    .line 9736
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedPersonId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9974
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedPersonIdCount()I
    .registers 2

    .prologue
    .line 9971
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedPersonIdList()Ljava/util/List;
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
    .line 9968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonFirstName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10066
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPersonFirstNameCount()I
    .registers 2

    .prologue
    .line 10063
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPersonFirstNameList()Ljava/util/List;
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
    .line 10060
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9929
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonIdCount()I
    .registers 2

    .prologue
    .line 9926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9923
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCircleName()Z
    .registers 3

    .prologue
    .line 10017
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9895
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

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
    .line 9832
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
    .line 9701
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9701
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

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
    .line 9701
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9840
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9841
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_6e

    .line 9846
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9848
    :sswitch_d
    return-object p0

    .line 9853
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9854
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    goto :goto_0

    .line 9858
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9859
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9863
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9864
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 9865
    .local v1, limit:I
    :goto_34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_42

    .line 9866
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonId(J)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    goto :goto_34

    .line 9868
    :cond_42
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 9872
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_46
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9873
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    goto :goto_0

    .line 9877
    :sswitch_53
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9878
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9882
    :sswitch_60
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9883
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9841
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x12 -> :sswitch_2c
        0x1a -> :sswitch_46
        0x22 -> :sswitch_53
        0x2a -> :sswitch_60
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9828
    :cond_6
    :goto_6
    return-object p0

    .line 9792
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9793
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 9795
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 9796
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 9797
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    .line 9798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9805
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12700(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 9806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 9807
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12700(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9815
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCircleName()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 9816
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 9818
    :cond_5d
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 9820
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9821
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    goto :goto_6

    .line 9800
    :cond_7c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9801
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 9810
    :cond_89
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9811
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12700(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    .line 9823
    :cond_96
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 9824
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->access$12900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10030
    if-nez p1, :cond_8

    .line 10031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10033
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 10034
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->circleName_:Ljava/lang/Object;

    .line 10036
    return-object p0
.end method

.method public setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->bitField0_:I

    .line 9902
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->count_:I

    .line 9904
    return-object p0
.end method

.method public setFocusObfuscatedPersonId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9978
    if-nez p2, :cond_8

    .line 9979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9981
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensureFocusObfuscatedPersonIdIsMutable()V

    .line 9982
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9984
    return-object p0
.end method

.method public setPersonFirstName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10070
    if-nez p2, :cond_8

    .line 10071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10073
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonFirstNameIsMutable()V

    .line 10074
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10076
    return-object p0
.end method

.method public setPersonId(IJ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9933
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->ensurePersonIdIsMutable()V

    .line 9934
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->personId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9936
    return-object p0
.end method
