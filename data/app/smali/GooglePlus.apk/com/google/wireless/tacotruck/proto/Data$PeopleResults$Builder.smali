.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResultsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private peopleResult_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;"
        }
    .end annotation
.end field

.field private shownPeopleBlob_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41732
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41851
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41733
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->maybeForceBuilderInitialization()V

    .line 41734
    return-void
.end method

.method static synthetic access$56100()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 1

    .prologue
    .line 41727
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 1

    .prologue
    .line 41739
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePeopleResultIsMutable()V
    .registers 3

    .prologue
    .line 41854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 41855
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41856
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41858
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41737
    return-void
.end method


# virtual methods
.method public addAllPeopleResult(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;"
        }
    .end annotation

    .prologue
    .line 41921
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41922
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41924
    return-object p0
.end method

.method public addPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41914
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41915
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41917
    return-object p0
.end method

.method public addPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41897
    if-nez p2, :cond_8

    .line 41898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41900
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41901
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41903
    return-object p0
.end method

.method public addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 41907
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41908
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41910
    return-object p0
.end method

.method public addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41887
    if-nez p1, :cond_8

    .line 41888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41890
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41891
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41893
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 3

    .prologue
    .line 41760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    .line 41761
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41762
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41764
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 6

    .prologue
    .line 41778
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 41779
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41780
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41781
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 41782
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41783
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41785
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56302(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/util/List;)Ljava/util/List;

    .line 41786
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 41787
    or-int/lit8 v2, v2, 0x1

    .line 41789
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56402(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41790
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56502(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;I)I

    .line 41791
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 41743
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41747
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41748
    return-object p0
.end method

.method public clearPeopleResult()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 41927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41930
    return-object p0
.end method

.method public clearShownPeopleBlob()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 41964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41965
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41967
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3

    .prologue
    .line 41752
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

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
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41727
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 41756
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleResult(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 3
    .parameter "index"

    .prologue
    .line 41867
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    return-object v0
.end method

.method public getPeopleResultCount()I
    .registers 2

    .prologue
    .line 41864
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeopleResultList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41861
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShownPeopleBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41945
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41946
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41947
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41948
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41951
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

.method public hasShownPeopleBlob()Z
    .registers 3

    .prologue
    .line 41942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

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
    .line 41813
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
    .line 41727
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41727
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

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
    .line 41727
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41821
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 41822
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 41827
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41829
    :sswitch_d
    return-object p0

    .line 41834
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    .line 41835
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41836
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    goto :goto_0

    .line 41840
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41841
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 41822
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 41795
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41809
    :cond_6
    :goto_6
    return-object p0

    .line 41796
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56300(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 41797
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 41798
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56300(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 41799
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41806
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->hasShownPeopleBlob()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41807
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    goto :goto_6

    .line 41801
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41802
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$56300(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 41881
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41882
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41884
    return-object p0
.end method

.method public setPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41871
    if-nez p2, :cond_8

    .line 41872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41874
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 41875
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41877
    return-object p0
.end method

.method public setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41955
    if-nez p1, :cond_8

    .line 41956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41958
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 41959
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41961
    return-object p0
.end method
