.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private fetchReadState_:Z

.field private idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field private obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5161
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5217
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 5283
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 4988
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4989
    return-void
.end method

.method static synthetic access$6000()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4982
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4994
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIdIsMutable()V
    .registers 3

    .prologue
    .line 5163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 5164
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5167
    :cond_16
    return-void
.end method

.method private ensureObfuscatedOwnerIdIsMutable()V
    .registers 3

    .prologue
    .line 5285
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 5286
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 5287
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5289
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4992
    return-void
.end method


# virtual methods
.method public addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5189
    if-nez p1, :cond_8

    .line 5190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5192
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 5193
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5195
    return-object p0
.end method

.method public addAllActivityId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 5199
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 5200
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5202
    return-object p0
.end method

.method public addAllObfuscatedOwnerId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 5321
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureObfuscatedOwnerIdIsMutable()V

    .line 5322
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5324
    return-object p0
.end method

.method public addObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5311
    if-nez p1, :cond_8

    .line 5312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5314
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureObfuscatedOwnerIdIsMutable()V

    .line 5315
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5317
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 3

    .prologue
    .line 5021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    .line 5022
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5023
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5025
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 6

    .prologue
    .line 5039
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 5040
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5041
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5042
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 5043
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5045
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5047
    :cond_1f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 5048
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 5049
    or-int/lit8 v2, v2, 0x1

    .line 5051
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 5052
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 5053
    or-int/lit8 v2, v2, 0x2

    .line 5055
    :cond_37
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z

    .line 5056
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 5057
    or-int/lit8 v2, v2, 0x4

    .line 5059
    :cond_44
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6502(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z

    .line 5060
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_60

    .line 5061
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 5063
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5065
    :cond_60
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6602(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 5066
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6702(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;I)I

    .line 5067
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4998
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4999
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5001
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 5002
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5003
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 5004
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5005
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    .line 5006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5007
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 5008
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5009
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 5205
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5206
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5208
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 5255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 5258
    return-object p0
.end method

.method public clearFetchReadState()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 5276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    .line 5279
    return-object p0
.end method

.method public clearIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 5234
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5235
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 5237
    return-object p0
.end method

.method public clearObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 5327
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 5328
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5330
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3

    .prologue
    .line 5013
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

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
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 5176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
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
    .line 5170
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 5246
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 2

    .prologue
    .line 5017
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFetchReadState()Z
    .registers 2

    .prologue
    .line 5267
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    return v0
.end method

.method public getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2

    .prologue
    .line 5222
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method

.method public getObfuscatedOwnerId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 5298
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedOwnerIdCount()I
    .registers 2

    .prologue
    .line 5295
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getObfuscatedOwnerIdList()Ljava/util/List;
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
    .line 5292
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 5243
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

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

.method public hasFetchReadState()Z
    .registers 3

    .prologue
    .line 5264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

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

.method public hasIdType()Z
    .registers 3

    .prologue
    .line 5219
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

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
    .line 5105
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
    .line 4982
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4982
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

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
    .line 4982
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5114
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 5119
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5121
    :sswitch_d
    return-object p0

    .line 5126
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 5127
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 5131
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5132
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    move-result-object v2

    .line 5133
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    if-eqz v2, :cond_0

    .line 5134
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5135
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    goto :goto_0

    .line 5140
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    goto :goto_0

    .line 5145
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    goto :goto_0

    .line 5150
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureObfuscatedOwnerIdIsMutable()V

    .line 5151
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 5114
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x2a -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5071
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5101
    :cond_6
    :goto_6
    return-object p0

    .line 5072
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 5073
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 5074
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 5075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5082
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->hasIdType()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5083
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 5085
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5086
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 5088
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->hasFetchReadState()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5089
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getFetchReadState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setFetchReadState(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 5091
    :cond_4c
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6600(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 5093
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6600(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 5094
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 5077
    :cond_6b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 5078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 5096
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureObfuscatedOwnerIdIsMutable()V

    .line 5097
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6600(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivityId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5180
    if-nez p2, :cond_8

    .line 5181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5183
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 5184
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5186
    return-object p0
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5249
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5250
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 5252
    return-object p0
.end method

.method public setFetchReadState(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5270
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5271
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->fetchReadState_:Z

    .line 5273
    return-object p0
.end method

.method public setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5225
    if-nez p1, :cond_8

    .line 5226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5228
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 5229
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 5231
    return-object p0
.end method

.method public setObfuscatedOwnerId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5302
    if-nez p2, :cond_8

    .line 5303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5305
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureObfuscatedOwnerIdIsMutable()V

    .line 5306
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5308
    return-object p0
.end method
