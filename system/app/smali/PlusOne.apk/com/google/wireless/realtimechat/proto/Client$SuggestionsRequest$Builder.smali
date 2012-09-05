.class public final Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private participantId_:Lcom/google/protobuf/LazyStringList;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40010
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40147
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40224
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40011
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 40012
    return-void
.end method

.method static synthetic access$55300()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 40005
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 40017
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantIdIsMutable()V
    .registers 3

    .prologue
    .line 40149
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40150
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40151
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40153
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40015
    return-void
.end method


# virtual methods
.method public addAllParticipantId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 40185
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40186
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40188
    return-object p0
.end method

.method public addParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40175
    if-nez p1, :cond_8

    .line 40176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40178
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40179
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 40181
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 3

    .prologue
    .line 40040
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    .line 40041
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40042
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40044
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 6

    .prologue
    .line 40058
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 40059
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40060
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40061
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 40062
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40064
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40066
    :cond_1f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55502(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 40067
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 40068
    or-int/lit8 v2, v2, 0x1

    .line 40070
    :cond_2b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55602(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I

    .line 40071
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 40072
    or-int/lit8 v2, v2, 0x2

    .line 40074
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40075
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I

    .line 40076
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40021
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40022
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40023
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40024
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40025
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40026
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40027
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40028
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40220
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40191
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40192
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40194
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40260
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40262
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40263
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3

    .prologue
    .line 40032
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

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
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 40208
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40005
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 40036
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 40162
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 40159
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantIdList()Ljava/util/List;
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
    .line 40156
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 40229
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 40205
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 40226
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

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
    .line 40005
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

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
    .line 40005
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 40110
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 40115
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40117
    :sswitch_d
    return-object p0

    .line 40122
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40123
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 40127
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 40128
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 40129
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 40131
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40132
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    goto :goto_0

    .line 40136
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40137
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    goto :goto_0

    .line 40110
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40080
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40097
    :cond_6
    :goto_6
    return-object p0

    .line 40081
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 40082
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 40083
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40091
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 40092
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setCount(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 40094
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40095
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    goto :goto_6

    .line 40086
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40087
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40248
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 40250
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40256
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40257
    return-object p0

    .line 40253
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setCount(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40211
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40212
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40214
    return-object p0
.end method

.method public setParticipantId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40166
    if-nez p2, :cond_8

    .line 40167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40169
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40170
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40172
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 40242
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40244
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40245
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40232
    if-nez p1, :cond_8

    .line 40233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40235
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40237
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40238
    return-object p0
.end method
