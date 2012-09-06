.class public final Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
        "Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private size_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 12224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12384
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12501
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12225
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->maybeForceBuilderInitialization()V

    .line 12226
    return-void
.end method

.method static synthetic access$15500(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12219
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15600()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 12219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12267
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    .line 12268
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 12269
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 12272
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 12231
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12229
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3

    .prologue
    .line 12258
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    .line 12259
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12260
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12262
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 6

    .prologue
    .line 12276
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 12277
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12278
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12279
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12280
    or-int/lit8 v2, v2, 0x1

    .line 12282
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15802(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12283
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 12284
    or-int/lit8 v2, v2, 0x2

    .line 12286
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$15902(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12287
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 12288
    or-int/lit8 v2, v2, 0x4

    .line 12290
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$16002(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12291
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 12292
    or-int/lit8 v2, v2, 0x8

    .line 12294
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$16102(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I

    .line 12295
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 12296
    or-int/lit8 v2, v2, 0x10

    .line 12298
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$16202(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12299
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->access$16302(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I

    .line 12300
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12235
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12236
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12237
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12239
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12241
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12242
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 12243
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12244
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12246
    return-object p0
.end method

.method public clearCircleType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12519
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12521
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12432
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12433
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12435
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12468
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12469
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12471
    return-object p0
.end method

.method public clearSize()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12494
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12495
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 12497
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12402
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12404
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3

    .prologue
    .line 12250
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 12506
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2

    .prologue
    .line 12254
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12413
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12414
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12415
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12416
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12419
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12449
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12450
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12451
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12452
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12455
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

.method public getSize()I
    .registers 2

    .prologue
    .line 12485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    .line 12503
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 12410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 12446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 12482
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 12386
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

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
    .line 12324
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
    .line 12219
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12219
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 12219
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12332
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12333
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5c

    .line 12338
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12340
    :sswitch_d
    return-object p0

    .line 12345
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12346
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    move-result-object v2

    .line 12347
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    if-eqz v2, :cond_0

    .line 12348
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12349
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    goto :goto_0

    .line 12354
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12355
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 12359
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 12364
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12365
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    goto :goto_0

    .line 12369
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12370
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 12371
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-eqz v2, :cond_0

    .line 12372
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12373
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_0

    .line 12333
    nop

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 12304
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12320
    :cond_6
    :goto_6
    return-object p0

    .line 12305
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12306
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 12308
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12309
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 12311
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12312
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 12314
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12315
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 12317
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasCircleType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12318
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    goto :goto_6
.end method

.method public setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12509
    if-nez p1, :cond_8

    .line 12510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12512
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12513
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12515
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12423
    if-nez p1, :cond_8

    .line 12424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12426
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12427
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->id_:Ljava/lang/Object;

    .line 12429
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12459
    if-nez p1, :cond_8

    .line 12460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12462
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12463
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->name_:Ljava/lang/Object;

    .line 12465
    return-object p0
.end method

.method public setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12488
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12489
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->size_:I

    .line 12491
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12392
    if-nez p1, :cond_8

    .line 12393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12395
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->bitField0_:I

    .line 12396
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12398
    return-object p0
.end method
