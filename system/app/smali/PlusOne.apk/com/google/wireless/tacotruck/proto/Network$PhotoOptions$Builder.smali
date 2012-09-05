.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCommentCount_:I

.field private returnComments_:Z

.field private returnImageUrls_:Z

.field private returnPlusOnes_:Z

.field private returnShapes_:Z

.field private returnVideoUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 46323
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 46489
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 46510
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 46531
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 46552
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 46573
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 46324
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maybeForceBuilderInitialization()V

    .line 46325
    return-void
.end method

.method static synthetic access$64600()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 46318
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 46330
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 46328
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 3

    .prologue
    .line 46359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    .line 46360
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 46361
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 46363
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 6

    .prologue
    .line 46377
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 46378
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46379
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 46380
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 46381
    or-int/lit8 v2, v2, 0x1

    .line 46383
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$64802(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 46384
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 46385
    or-int/lit8 v2, v2, 0x2

    .line 46387
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$64902(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 46388
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 46389
    or-int/lit8 v2, v2, 0x4

    .line 46391
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$65002(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 46392
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 46393
    or-int/lit8 v2, v2, 0x8

    .line 46395
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$65102(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 46396
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 46397
    or-int/lit8 v2, v2, 0x10

    .line 46399
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$65202(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z

    .line 46400
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 46401
    or-int/lit8 v2, v2, 0x20

    .line 46403
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$65302(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I

    .line 46404
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->access$65402(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I

    .line 46405
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 46334
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46335
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 46336
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46337
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 46338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46339
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 46340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46341
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 46342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46343
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 46344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46345
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 46346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46347
    return-object p0
.end method

.method public clearMaxCommentCount()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46609
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 46611
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 46527
    return-object p0
.end method

.method public clearReturnImageUrls()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46503
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 46506
    return-object p0
.end method

.method public clearReturnPlusOnes()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 46590
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46545
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 46548
    return-object p0
.end method

.method public clearReturnVideoUrls()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 46566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 46569
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3

    .prologue
    .line 46351
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

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
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 46355
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCommentCount()I
    .registers 2

    .prologue
    .line 46599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    return v0
.end method

.method public getReturnComments()Z
    .registers 2

    .prologue
    .line 46515
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnImageUrls()Z
    .registers 2

    .prologue
    .line 46494
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    return v0
.end method

.method public getReturnPlusOnes()Z
    .registers 2

    .prologue
    .line 46578
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2

    .prologue
    .line 46536
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnVideoUrls()Z
    .registers 2

    .prologue
    .line 46557
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    return v0
.end method

.method public hasMaxCommentCount()Z
    .registers 3

    .prologue
    .line 46596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3

    .prologue
    .line 46512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnImageUrls()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 46491
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReturnPlusOnes()Z
    .registers 3

    .prologue
    .line 46575
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3

    .prologue
    .line 46533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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

.method public hasReturnVideoUrls()Z
    .registers 3

    .prologue
    .line 46554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

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
    .line 46318
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

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
    .line 46318
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 46441
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5c

    .line 46446
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46448
    :sswitch_d
    return-object p0

    .line 46453
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    goto :goto_0

    .line 46458
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    goto :goto_0

    .line 46463
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46464
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    goto :goto_0

    .line 46468
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46469
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    goto :goto_0

    .line 46473
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46474
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    goto :goto_0

    .line 46478
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    goto :goto_0

    .line 46441
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 46409
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 46428
    :cond_6
    :goto_6
    return-object p0

    .line 46410
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnImageUrls()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46411
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnImageUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 46413
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 46414
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 46416
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 46417
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 46419
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnVideoUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 46420
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnVideoUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 46422
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasReturnPlusOnes()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 46423
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getReturnPlusOnes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 46425
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->hasMaxCommentCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46426
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getMaxCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setMaxCommentCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    goto :goto_6
.end method

.method public setMaxCommentCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46603
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->maxCommentCount_:I

    .line 46605
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46519
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnComments_:Z

    .line 46521
    return-object p0
.end method

.method public setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46498
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnImageUrls_:Z

    .line 46500
    return-object p0
.end method

.method public setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46581
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46582
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnPlusOnes_:Z

    .line 46584
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46540
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnShapes_:Z

    .line 46542
    return-object p0
.end method

.method public setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->bitField0_:I

    .line 46561
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->returnVideoUrls_:Z

    .line 46563
    return-object p0
.end method
