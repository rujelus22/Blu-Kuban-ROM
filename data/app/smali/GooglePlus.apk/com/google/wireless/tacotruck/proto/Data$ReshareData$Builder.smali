.class public final Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareData;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private originalActivityId_:Ljava/lang/Object;

.field private originalAuthorGaiaId_:J

.field private resharingUserId_:Ljava/util/List;
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
    .line 9118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9119
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->maybeForceBuilderInitialization()V

    .line 9120
    return-void
.end method

.method static synthetic access$11600()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 9113
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 9125
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResharingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 9318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 9319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9322
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9123
    return-void
.end method


# virtual methods
.method public addAllResharingUserId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;"
        }
    .end annotation

    .prologue
    .line 9348
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 9349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9351
    return-object p0
.end method

.method public addResharingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 9341
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 9342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9344
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 3

    .prologue
    .line 9148
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    .line 9149
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9150
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9152
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 6

    .prologue
    .line 9166
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 9167
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9168
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9169
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9170
    or-int/lit8 v2, v2, 0x1

    .line 9172
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11802(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9173
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9174
    or-int/lit8 v2, v2, 0x2

    .line 9176
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11902(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;J)J

    .line 9177
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 9178
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9179
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9181
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$12002(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/util/List;)Ljava/util/List;

    .line 9182
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$12102(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;I)I

    .line 9183
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 9129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 9133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9136
    return-object p0
.end method

.method public clearOriginalActivityId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 9283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9286
    return-object p0
.end method

.method public clearOriginalAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 9309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 9312
    return-object p0
.end method

.method public clearResharingUserId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 9354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9355
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9357
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 9140
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

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
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 9144
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9264
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9265
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9267
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9270
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

.method public getOriginalAuthorGaiaId()J
    .registers 3

    .prologue
    .line 9300
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    return-wide v0
.end method

.method public getResharingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9331
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResharingUserIdCount()I
    .registers 2

    .prologue
    .line 9328
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResharingUserIdList()Ljava/util/List;
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
    .line 9325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasOriginalActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9261
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOriginalAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 9297
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

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
    .line 9208
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
    .line 9113
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9113
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

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
    .line 9113
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9217
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_54

    .line 9222
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9224
    :sswitch_d
    return-object p0

    .line 9229
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9230
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    goto :goto_0

    .line 9234
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9235
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    goto :goto_0

    .line 9239
    :sswitch_28
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 9240
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9244
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9245
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 9246
    .local v1, limit:I
    :goto_41
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4f

    .line 9247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->addResharingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    goto :goto_41

    .line 9249
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 9217
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x1a -> :sswitch_39
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9187
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9204
    :cond_6
    :goto_6
    return-object p0

    .line 9188
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->hasOriginalActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9189
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->setOriginalActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 9191
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->hasOriginalAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9192
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->setOriginalAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 9194
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$12000(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9195
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 9196
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$12000(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 9197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    goto :goto_6

    .line 9199
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 9200
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$12000(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setOriginalActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9274
    if-nez p1, :cond_8

    .line 9275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9277
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9278
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 9280
    return-object p0
.end method

.method public setOriginalAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 9303
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 9304
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 9306
    return-object p0
.end method

.method public setResharingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9335
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 9336
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9338
    return-object p0
.end method
