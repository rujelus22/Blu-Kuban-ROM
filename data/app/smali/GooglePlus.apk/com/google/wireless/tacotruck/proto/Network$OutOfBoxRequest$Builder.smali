.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private input_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation
.end field

.field private integrated_:Z

.field private postMessageTargetOrigin_:Ljava/lang/Object;

.field private upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38292
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38564
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38607
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38293
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->maybeForceBuilderInitialization()V

    .line 38294
    return-void
.end method

.method static synthetic access$52700(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38287
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52800()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 1

    .prologue
    .line 38287
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38337
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    .line 38338
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 38339
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 38342
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 1

    .prologue
    .line 38299
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInputIsMutable()V
    .registers 3

    .prologue
    .line 38478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 38479
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38480
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38482
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38297
    return-void
.end method


# virtual methods
.method public addAllInput(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 38545
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 38548
    return-object p0
.end method

.method public addInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 38538
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38539
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38541
    return-object p0
.end method

.method public addInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 38521
    if-nez p2, :cond_8

    .line 38522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38524
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38525
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38527
    return-object p0
.end method

.method public addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 38531
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38532
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38534
    return-object p0
.end method

.method public addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38511
    if-nez p1, :cond_8

    .line 38512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38514
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38515
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38517
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 3

    .prologue
    .line 38328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    .line 38329
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38330
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38332
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 6

    .prologue
    .line 38346
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 38347
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38348
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38349
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 38350
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38351
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38353
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53002(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/util/List;)Ljava/util/List;

    .line 38354
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 38355
    or-int/lit8 v2, v2, 0x1

    .line 38357
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53102(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38358
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 38359
    or-int/lit8 v2, v2, 0x2

    .line 38361
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38362
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 38363
    or-int/lit8 v2, v2, 0x4

    .line 38365
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38366
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 38367
    or-int/lit8 v2, v2, 0x8

    .line 38369
    :cond_50
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Z)Z

    .line 38370
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 38371
    or-int/lit8 v2, v2, 0x10

    .line 38373
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38374
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;I)I

    .line 38375
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38303
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38305
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38306
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38307
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38308
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38311
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 38313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38315
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38316
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38600
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38603
    return-object p0
.end method

.method public clearContinueUrl()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38656
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38658
    return-object p0
.end method

.method public clearInput()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38554
    return-object p0
.end method

.method public clearIntegrated()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 38684
    return-object p0
.end method

.method public clearPostMessageTargetOrigin()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38713
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getPostMessageTargetOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38715
    return-object p0
.end method

.method public clearUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38625
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38627
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3

    .prologue
    .line 38320
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

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
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 38569
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38636
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38637
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38638
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38639
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38642
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2

    .prologue
    .line 38324
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInput(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 3
    .parameter "index"

    .prologue
    .line 38491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getInputCount()I
    .registers 2

    .prologue
    .line 38488
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38485
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrated()Z
    .registers 2

    .prologue
    .line 38672
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    return v0
.end method

.method public getPostMessageTargetOrigin()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38693
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38694
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38695
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38696
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38699
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

.method public getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2

    .prologue
    .line 38612
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 38566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 38633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasIntegrated()Z
    .registers 3

    .prologue
    .line 38669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasPostMessageTargetOrigin()Z
    .registers 3

    .prologue
    .line 38690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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

.method public hasUpgradeType()Z
    .registers 3

    .prologue
    .line 38609
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

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
    .line 38409
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38588
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 38590
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38596
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38597
    return-object p0

    .line 38593
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    goto :goto_1f
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
    .line 38287
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38287
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

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
    .line 38287
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 38418
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_74

    .line 38423
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38425
    :sswitch_d
    return-object p0

    .line 38430
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v1

    .line 38431
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 38432
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_0

    .line 38436
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v1

    .line 38437
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->hasAction()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 38438
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 38440
    :cond_2e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 38441
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_0

    .line 38445
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 38446
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    move-result-object v3

    .line 38447
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    if-eqz v3, :cond_0

    .line 38448
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38449
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    goto :goto_0

    .line 38454
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    :sswitch_4c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38455
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 38459
    :sswitch_59
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    goto :goto_0

    .line 38464
    :sswitch_66
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    goto :goto_0

    .line 38418
    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_39
        0x22 -> :sswitch_4c
        0x28 -> :sswitch_59
        0x32 -> :sswitch_66
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 38379
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38405
    :cond_6
    :goto_6
    return-object p0

    .line 38380
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53000(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 38381
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 38382
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53000(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    .line 38383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38390
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 38391
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 38393
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasUpgradeType()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 38394
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setUpgradeType(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 38396
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasContinueUrl()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 38397
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 38399
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasIntegrated()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 38400
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getIntegrated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setIntegrated(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 38402
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->hasPostMessageTargetOrigin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38403
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getPostMessageTargetOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setPostMessageTargetOrigin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_6

    .line 38385
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38386
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->access$53000(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38582
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38584
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38585
    return-object p0
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38572
    if-nez p1, :cond_8

    .line 38573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38575
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38578
    return-object p0
.end method

.method public setContinueUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38646
    if-nez p1, :cond_8

    .line 38647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38649
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38650
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->continueUrl_:Ljava/lang/Object;

    .line 38652
    return-object p0
.end method

.method public setInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 38505
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38506
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38508
    return-object p0
.end method

.method public setInput(ILcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 38495
    if-nez p2, :cond_8

    .line 38496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38498
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->ensureInputIsMutable()V

    .line 38499
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->input_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38501
    return-object p0
.end method

.method public setIntegrated(Z)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38676
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->integrated_:Z

    .line 38678
    return-object p0
.end method

.method public setPostMessageTargetOrigin(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38703
    if-nez p1, :cond_8

    .line 38704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38706
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38707
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38709
    return-object p0
.end method

.method public setUpgradeType(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38615
    if-nez p1, :cond_8

    .line 38616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38618
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->bitField0_:I

    .line 38619
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38621
    return-object p0
.end method
