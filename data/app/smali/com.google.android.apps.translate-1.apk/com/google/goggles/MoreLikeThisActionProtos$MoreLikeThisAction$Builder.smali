.class public final Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MoreLikeThisActionProtos.java"

# interfaces
.implements Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;",
        "Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;",
        ">;",
        "Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private docid_:Ljava/lang/Object;

.field private restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 325
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 212
    invoke-direct {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->maybeForceBuilderInitialization()V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 1

    .prologue
    .line 206
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->create()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 250
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 253
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 1

    .prologue
    .line 218
    new-instance v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    invoke-direct {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 216
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 241
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 243
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->build()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 257
    new-instance v2, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;-><init>(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;Lcom/google/goggles/MoreLikeThisActionProtos$1;)V

    .line 258
    iget v3, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 259
    const/4 v1, 0x0

    .line 260
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 263
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    #setter for: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v2, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->access$302(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 264
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 265
    or-int/lit8 v0, v0, 0x2

    .line 267
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->access$402(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    #setter for: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->access$502(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;I)I

    .line 269
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 223
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 224
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 226
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 227
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clear()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clear()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDocid()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2

    .prologue
    .line 392
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 393
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDocid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 395
    return-object p0
.end method

.method public clearRestricts()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2

    .prologue
    .line 361
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 363
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 364
    return-object p0
.end method

.method public clone()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 3

    .prologue
    .line 231
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->create()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clone()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clone()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clone()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

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
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->clone()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2

    .prologue
    .line 235
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 374
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 375
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 376
    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 379
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public hasDocid()Z
    .registers 3

    .prologue
    .line 370
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

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

.method public hasRestricts()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 327
    iget v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

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
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 273
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 280
    :cond_6
    :goto_6
    return-object p0

    .line 274
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->hasRestricts()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 275
    invoke-virtual {p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    .line 277
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    invoke-virtual {p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDocid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->setDocid(Ljava/lang/String;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 293
    sparse-switch v0, :sswitch_data_38

    .line 298
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :sswitch_d
    return-object p0

    .line 305
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->hasRestricts()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 307
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    .line 309
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 310
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    goto :goto_0

    .line 314
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 315
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    goto :goto_0

    .line 293
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 206
    check-cast p1, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-virtual {p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 4
    .parameter

    .prologue
    .line 349
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 351
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 357
    :goto_1f
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 358
    return-object p0

    .line 354
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    goto :goto_1f
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 383
    if-nez p1, :cond_8

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 386
    :cond_8
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 387
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 389
    return-object p0
.end method

.method setDocid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 398
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 399
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->docid_:Ljava/lang/Object;

    .line 401
    return-void
.end method

.method public setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->build()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 345
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 346
    return-object p0
.end method

.method public setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 333
    if-nez p1, :cond_8

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 336
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 338
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->bitField0_:I

    .line 339
    return-object p0
.end method
