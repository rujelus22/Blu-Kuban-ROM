.class public final Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BookmarkProtos.java"

# interfaces
.implements Lcom/google/goggles/BookmarkProtos$Bookmark$OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;",
        "Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;",
        ">;",
        "Lcom/google/goggles/BookmarkProtos$Bookmark$OperationOrBuilder;"
    }
.end annotation


# instance fields
.field private actionName_:Ljava/lang/Object;

.field private activityClass_:Ljava/lang/Object;

.field private activityPackage_:Ljava/lang/Object;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 328
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->maybeForceBuilderInitialization()V

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 1

    .prologue
    .line 322
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 368
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 371
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 1

    .prologue
    .line 334
    new-instance v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 359
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 361
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->build()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 375
    new-instance v2, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;-><init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;Lcom/google/goggles/BookmarkProtos$1;)V

    .line 376
    iget v3, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 377
    const/4 v1, 0x0

    .line 378
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 381
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->actionName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->access$302(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 383
    or-int/lit8 v0, v0, 0x2

    .line 385
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityPackage_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->access$402(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 387
    or-int/lit8 v0, v0, 0x4

    .line 389
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->activityClass_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->access$502(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->access$602(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;I)I

    .line 391
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 340
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 342
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 344
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 345
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActionName()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 476
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 478
    return-object p0
.end method

.method public clearActivityClass()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 547
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 548
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 550
    return-object p0
.end method

.method public clearActivityPackage()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 512
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 514
    return-object p0
.end method

.method public clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 3

    .prologue
    .line 349
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

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
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 457
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 458
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 459
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 462
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getActivityClass()Ljava/lang/String;
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 529
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 530
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 531
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 534
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getActivityPackage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 493
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 494
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 495
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 498
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2

    .prologue
    .line 353
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    return-object v0
.end method

.method public hasActionName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 453
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasActivityClass()Z
    .registers 3

    .prologue
    .line 525
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

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

.method public hasActivityPackage()Z
    .registers 3

    .prologue
    .line 489
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

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
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 395
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 405
    :cond_6
    :goto_6
    return-object p0

    .line 396
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->hasActionName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 397
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->setActionName(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    .line 399
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->hasActivityPackage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 400
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->setActivityPackage(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    .line 402
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->hasActivityClass()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getActivityClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->setActivityClass(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 418
    sparse-switch v0, :sswitch_data_36

    .line 423
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :sswitch_d
    return-object p0

    .line 430
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    goto :goto_0

    .line 435
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 436
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    goto :goto_0

    .line 440
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 441
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    goto :goto_0

    .line 418
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 322
    check-cast p1, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

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
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 466
    if-nez p1, :cond_8

    .line 467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 469
    :cond_8
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 470
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 472
    return-object p0
.end method

.method setActionName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 481
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 482
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->actionName_:Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public setActivityClass(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 538
    if-nez p1, :cond_8

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 541
    :cond_8
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 542
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 544
    return-object p0
.end method

.method setActivityClass(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 553
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 554
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityClass_:Ljava/lang/Object;

    .line 556
    return-void
.end method

.method public setActivityPackage(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 502
    if-nez p1, :cond_8

    .line 503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 505
    :cond_8
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 506
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 508
    return-object p0
.end method

.method setActivityPackage(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 517
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->bitField0_:I

    .line 518
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->activityPackage_:Ljava/lang/Object;

    .line 520
    return-void
.end method
