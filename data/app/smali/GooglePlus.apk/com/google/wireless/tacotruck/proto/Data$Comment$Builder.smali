.class public final Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
        "Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;"
    }
.end annotation


# instance fields
.field private authorGaiaId_:J

.field private bitField0_:I

.field private commentInModeration_:Z

.field private contentHtml_:Ljava/lang/Object;

.field private creationTimestampMsec_:J

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private lastUpdateTimestampMsec_:J

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private truncated_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5262
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5666
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5263
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->maybeForceBuilderInitialization()V

    .line 5264
    return-void
.end method

.method static synthetic access$6000()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 5257
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 1

    .prologue
    .line 5269
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5267
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3

    .prologue
    .line 5304
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    .line 5305
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5306
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5308
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 6

    .prologue
    .line 5322
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 5323
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5324
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5325
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5326
    or-int/lit8 v2, v2, 0x1

    .line 5328
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6202(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5329
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5330
    or-int/lit8 v2, v2, 0x2

    .line 5332
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->authorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6302(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 5333
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5334
    or-int/lit8 v2, v2, 0x4

    .line 5336
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->focusObfuscatedAuthorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6402(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5337
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 5338
    or-int/lit8 v2, v2, 0x8

    .line 5340
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->contentHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6502(Lcom/google/wireless/tacotruck/proto/Data$Comment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5341
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 5342
    or-int/lit8 v2, v2, 0x10

    .line 5344
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->creationTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6602(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 5345
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 5346
    or-int/lit8 v2, v2, 0x20

    .line 5348
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->truncated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6702(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z

    .line 5349
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 5350
    or-int/lit8 v2, v2, 0x40

    .line 5352
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->lastUpdateTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6802(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)J

    .line 5353
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 5354
    or-int/lit16 v2, v2, 0x80

    .line 5356
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$6902(Lcom/google/wireless/tacotruck/proto/Data$Comment;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5357
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 5358
    or-int/lit16 v2, v2, 0x100

    .line 5360
    :cond_76
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->commentInModeration_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$7002(Lcom/google/wireless/tacotruck/proto/Data$Comment;Z)Z

    .line 5361
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Comment;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->access$7102(Lcom/google/wireless/tacotruck/proto/Data$Comment;I)I

    .line 5362
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 5273
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5276
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 5277
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5279
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5281
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5282
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 5283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5284
    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 5285
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5286
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 5287
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5288
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5290
    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    .line 5291
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5292
    return-object p0
.end method

.method public clearAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5525
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 5527
    return-object p0
.end method

.method public clearCommentInModeration()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5723
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    .line 5726
    return-object p0
.end method

.method public clearContentHtml()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5594
    return-object p0
.end method

.method public clearCreationTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5618
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 5620
    return-object p0
.end method

.method public clearFocusObfuscatedAuthorId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5558
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5499
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5501
    return-object p0
.end method

.method public clearLastUpdateTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5660
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 5662
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5702
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5705
    return-object p0
.end method

.method public clearTruncated()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 2

    .prologue
    .line 5638
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 5641
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3

    .prologue
    .line 5296
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

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
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 5515
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCommentInModeration()Z
    .registers 2

    .prologue
    .line 5714
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    return v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5573
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5574
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5575
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5578
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

.method public getCreationTimestampMsec()J
    .registers 3

    .prologue
    .line 5608
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 5300
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5537
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5538
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5539
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5542
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5479
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5480
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5481
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5482
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5485
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

.method public getLastUpdateTimestampMsec()J
    .registers 3

    .prologue
    .line 5650
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    return-wide v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 5671
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 5629
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    return v0
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 5512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasCommentInModeration()Z
    .registers 3

    .prologue
    .line 5711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 5569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasCreationTimestampMsec()Z
    .registers 3

    .prologue
    .line 5605
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedAuthorId()Z
    .registers 3

    .prologue
    .line 5533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5476
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastUpdateTimestampMsec()Z
    .registers 3

    .prologue
    .line 5647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 5668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTruncated()Z
    .registers 3

    .prologue
    .line 5626
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 5398
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
    .line 5257
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5257
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

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
    .line 5257
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5406
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5407
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_94

    .line 5412
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5414
    :sswitch_d
    return-object p0

    .line 5419
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5420
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 5424
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5425
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    goto :goto_0

    .line 5429
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5430
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 5434
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5435
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    goto :goto_0

    .line 5439
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    goto :goto_0

    .line 5444
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    goto :goto_0

    .line 5449
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 5450
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 5451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 5453
    :cond_6d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5454
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    goto :goto_0

    .line 5458
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5463
    :sswitch_86
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5464
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    goto/16 :goto_0

    .line 5407
    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_78
        0x48 -> :sswitch_86
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5366
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5394
    :cond_6
    :goto_6
    return-object p0

    .line 5367
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5368
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5370
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5371
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5373
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasFocusObfuscatedAuthorId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5374
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5376
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasContentHtml()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5377
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5379
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasCreationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5380
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setCreationTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5382
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasTruncated()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5383
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5385
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5386
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setLastUpdateTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5388
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 5389
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 5391
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasCommentInModeration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5392
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCommentInModeration()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->setCommentInModeration(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    goto :goto_6
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 5692
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5698
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5699
    return-object p0

    .line 5695
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public setAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5519
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->authorGaiaId_:J

    .line 5521
    return-object p0
.end method

.method public setCommentInModeration(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5718
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->commentInModeration_:Z

    .line 5720
    return-object p0
.end method

.method public setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5582
    if-nez p1, :cond_8

    .line 5583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5585
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5586
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->contentHtml_:Ljava/lang/Object;

    .line 5588
    return-object p0
.end method

.method public setCreationTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5611
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5612
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->creationTimestampMsec_:J

    .line 5614
    return-object p0
.end method

.method public setFocusObfuscatedAuthorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5546
    if-nez p1, :cond_8

    .line 5547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5549
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5550
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 5552
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5489
    if-nez p1, :cond_8

    .line 5490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5492
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5493
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->id_:Ljava/lang/Object;

    .line 5495
    return-object p0
.end method

.method public setLastUpdateTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5654
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->lastUpdateTimestampMsec_:J

    .line 5656
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 5684
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5686
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5687
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5674
    if-nez p1, :cond_8

    .line 5675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5677
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 5679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5680
    return-object p0
.end method

.method public setTruncated(Z)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->bitField0_:I

    .line 5633
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->truncated_:Z

    .line 5635
    return-object p0
.end method
