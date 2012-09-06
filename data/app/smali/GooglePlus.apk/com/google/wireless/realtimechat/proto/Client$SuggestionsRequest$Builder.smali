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

.field private suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40073
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40228
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40305
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 40329
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40074
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 40075
    return-void
.end method

.method static synthetic access$55300()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 40068
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 40080
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantIdIsMutable()V
    .registers 3

    .prologue
    .line 40230
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40231
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40232
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40234
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40078
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
    .line 40266
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40267
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40269
    return-object p0
.end method

.method public addParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40256
    if-nez p1, :cond_8

    .line 40257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40259
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40260
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 40262
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 3

    .prologue
    .line 40105
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    .line 40106
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40107
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40109
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 6

    .prologue
    .line 40123
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 40124
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40125
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40126
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 40127
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40129
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40131
    :cond_1f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55502(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 40132
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 40133
    or-int/lit8 v2, v2, 0x1

    .line 40135
    :cond_2b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55602(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I

    .line 40136
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 40137
    or-int/lit8 v2, v2, 0x2

    .line 40139
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 40140
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 40141
    or-int/lit8 v2, v2, 0x4

    .line 40143
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40144
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55902(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I

    .line 40145
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40084
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40085
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40086
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40087
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40088
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40089
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 40090
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40091
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40092
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40093
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40298
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40301
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40272
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40273
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40275
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40365
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40367
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40368
    return-object p0
.end method

.method public clearSuggestionsType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 40322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40323
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 40325
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3

    .prologue
    .line 40097
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
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 40289
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40068
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 40101
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 40243
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 40240
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
    .line 40237
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 40334
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getSuggestionsType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    .registers 2

    .prologue
    .line 40310
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 40286
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
    .line 40331
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

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

.method public hasSuggestionsType()Z
    .registers 3

    .prologue
    .line 40307
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 40173
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
    .line 40068
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40068
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

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
    .line 40068
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 40182
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 40187
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40189
    :sswitch_d
    return-object p0

    .line 40194
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40195
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 40199
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 40200
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 40201
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 40203
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40204
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    goto :goto_0

    .line 40208
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    goto :goto_0

    .line 40213
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40214
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    move-result-object v3

    .line 40215
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    if-eqz v3, :cond_0

    .line 40216
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40217
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    goto :goto_0

    .line 40182
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_37
        0x20 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40149
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40169
    :cond_6
    :goto_6
    return-object p0

    .line 40150
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 40151
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 40152
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 40153
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40160
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 40161
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setCount(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 40163
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->hasSuggestionsType()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 40164
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getSuggestionsType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setSuggestionsType(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 40166
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40167
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    goto :goto_6

    .line 40155
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40156
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
    .line 40353
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 40355
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40361
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40362
    return-object p0

    .line 40358
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setCount(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40292
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40293
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->count_:I

    .line 40295
    return-object p0
.end method

.method public setParticipantId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40247
    if-nez p2, :cond_8

    .line 40248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40250
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 40251
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40253
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 40347
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40349
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40350
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40337
    if-nez p1, :cond_8

    .line 40338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40340
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 40342
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40343
    return-object p0
.end method

.method public setSuggestionsType(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40313
    if-nez p1, :cond_8

    .line 40314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40316
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->bitField0_:I

    .line 40317
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->suggestionsType_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 40319
    return-object p0
.end method
