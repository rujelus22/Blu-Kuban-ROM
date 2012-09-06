.class public final Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobileShape$RectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$RectOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bottom_:D

.field private left_:D

.field private right_:D

.field private top_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20199
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20200
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->maybeForceBuilderInitialization()V

    .line 20201
    return-void
.end method

.method static synthetic access$26300(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20194
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26400()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 20194
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    .line 20241
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20242
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20245
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 20206
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20204
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 3

    .prologue
    .line 20231
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    .line 20232
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20233
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20235
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 6

    .prologue
    .line 20249
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 20250
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20251
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20252
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20253
    or-int/lit8 v2, v2, 0x1

    .line 20255
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$26602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 20256
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20257
    or-int/lit8 v2, v2, 0x2

    .line 20259
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$26702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 20260
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 20261
    or-int/lit8 v2, v2, 0x4

    .line 20263
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$26802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 20264
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 20265
    or-int/lit8 v2, v2, 0x8

    .line 20267
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$26902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 20268
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$27002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;I)I

    .line 20269
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 20210
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20211
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 20212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20213
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 20214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20215
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 20216
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20217
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 20218
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20219
    return-object p0
.end method

.method public clearBottom()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 20430
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20431
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 20433
    return-object p0
.end method

.method public clearLeft()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 20367
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 20370
    return-object p0
.end method

.method public clearRight()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 20409
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 20412
    return-object p0
.end method

.method public clearTop()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 20388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 20391
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 20223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

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
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBottom()D
    .registers 3

    .prologue
    .line 20421
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 20227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()D
    .registers 3

    .prologue
    .line 20358
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    return-wide v0
.end method

.method public getRight()D
    .registers 3

    .prologue
    .line 20400
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    return-wide v0
.end method

.method public getTop()D
    .registers 3

    .prologue
    .line 20379
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    return-wide v0
.end method

.method public hasBottom()Z
    .registers 3

    .prologue
    .line 20418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

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

.method public hasLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20355
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRight()Z
    .registers 3

    .prologue
    .line 20397
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

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

.method public hasTop()Z
    .registers 3

    .prologue
    .line 20376
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 20290
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->hasLeft()Z

    move-result v1

    if-nez v1, :cond_8

    .line 20306
    :cond_7
    :goto_7
    return v0

    .line 20294
    :cond_8
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->hasTop()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->hasRight()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->hasBottom()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20306
    const/4 v0, 0x1

    goto :goto_7
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
    .line 20194
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20194
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

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
    .line 20194
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20314
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 20315
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 20320
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20322
    :sswitch_d
    return-object p0

    .line 20327
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20328
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    goto :goto_0

    .line 20332
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20333
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    goto :goto_0

    .line 20337
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20338
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    goto :goto_0

    .line 20342
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20343
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    goto :goto_0

    .line 20315
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
        0x11 -> :sswitch_1b
        0x19 -> :sswitch_28
        0x21 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 20273
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20286
    :cond_6
    :goto_6
    return-object p0

    .line 20274
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20275
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getLeft()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setLeft(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 20277
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasTop()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 20278
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getTop()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setTop(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 20280
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasRight()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 20281
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getRight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setRight(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 20283
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasBottom()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20284
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getBottom()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setBottom(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    goto :goto_6
.end method

.method public setBottom(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20424
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20425
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 20427
    return-object p0
.end method

.method public setLeft(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20362
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 20364
    return-object p0
.end method

.method public setRight(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20403
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20404
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 20406
    return-object p0
.end method

.method public setTop(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 20383
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 20385
    return-object p0
.end method
