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
    .line 38951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 39159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 38952
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->maybeForceBuilderInitialization()V

    .line 38953
    return-void
.end method

.method static synthetic access$52600()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 1

    .prologue
    .line 38946
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 1

    .prologue
    .line 38958
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePeopleResultIsMutable()V
    .registers 3

    .prologue
    .line 39073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 39074
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 39075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39077
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38956
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
    .line 39140
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39141
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 39143
    return-object p0
.end method

.method public addPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39133
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39136
    return-object p0
.end method

.method public addPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39116
    if-nez p2, :cond_8

    .line 39117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39119
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39120
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39122
    return-object p0
.end method

.method public addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 39126
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39127
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39129
    return-object p0
.end method

.method public addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39106
    if-nez p1, :cond_8

    .line 39107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39109
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39110
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39112
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 3

    .prologue
    .line 38979
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    .line 38980
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38981
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38983
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 6

    .prologue
    .line 38997
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 38998
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 38999
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39000
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 39001
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 39002
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39004
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$52802(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/util/List;)Ljava/util/List;

    .line 39005
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 39006
    or-int/lit8 v2, v2, 0x1

    .line 39008
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$52902(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39009
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$53002(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;I)I

    .line 39010
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 38962
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 38964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 38965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 38966
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 38967
    return-object p0
.end method

.method public clearPeopleResult()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 39146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 39147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39149
    return-object p0
.end method

.method public clearShownPeopleBlob()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 39183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39184
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 39186
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3

    .prologue
    .line 38971
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
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 38975
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleResult(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 3
    .parameter "index"

    .prologue
    .line 39086
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    return-object v0
.end method

.method public getPeopleResultCount()I
    .registers 2

    .prologue
    .line 39083
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
    .line 39080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShownPeopleBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39164
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 39165
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39167
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 39170
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
    .line 39161
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
    .line 38946
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

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
    .line 38946
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
    .line 39040
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39041
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 39046
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39048
    :sswitch_d
    return-object p0

    .line 39053
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    .line 39054
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39055
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->addPeopleResult(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    goto :goto_0

    .line 39059
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 39041
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
    .line 39014
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39028
    :cond_6
    :goto_6
    return-object p0

    .line 39015
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$52800(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 39016
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 39017
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$52800(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    .line 39018
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39025
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->hasShownPeopleBlob()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39026
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    goto :goto_6

    .line 39020
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39021
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->access$52800(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39100
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39103
    return-object p0
.end method

.method public setPeopleResult(ILcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39090
    if-nez p2, :cond_8

    .line 39091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39093
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->ensurePeopleResultIsMutable()V

    .line 39094
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39096
    return-object p0
.end method

.method public setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39174
    if-nez p1, :cond_8

    .line 39175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39177
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->bitField0_:I

    .line 39178
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 39180
    return-object p0
.end method
