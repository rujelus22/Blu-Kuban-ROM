.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$ImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$ImageOrBuilder;"
    }
.end annotation


# instance fields
.field private altText_:Ljava/lang/Object;

.field private bitField0_:I

.field private height_:I

.field private source_:Ljava/lang/Object;

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28508
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28509
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->maybeForceBuilderInitialization()V

    .line 28510
    return-void
.end method

.method static synthetic access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28503
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35500()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 1

    .prologue
    .line 28503
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28549
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    .line 28550
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 28551
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 28554
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 1

    .prologue
    .line 28515
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28513
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3

    .prologue
    .line 28540
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    .line 28541
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28542
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28544
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 6

    .prologue
    .line 28558
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 28559
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28560
    const/4 v2, 0x0

    .line 28561
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28562
    or-int/lit8 v2, v2, 0x1

    .line 28564
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->access$35702(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28565
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28566
    or-int/lit8 v2, v2, 0x2

    .line 28568
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->access$35802(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28569
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28570
    or-int/lit8 v2, v2, 0x4

    .line 28572
    :cond_28
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->access$35902(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I

    .line 28573
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 28574
    or-int/lit8 v1, v2, 0x8

    .line 28576
    :goto_35
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->access$36002(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I

    .line 28577
    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->access$36102(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I

    .line 28578
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28521
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28523
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28524
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    .line 28525
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28526
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    .line 28527
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28528
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAltText()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28710
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28711
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getAltText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28713
    return-object p0
.end method

.method public clearHeight()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28757
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28758
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    .line 28760
    return-object p0
.end method

.method public clearSource()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28674
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28675
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28677
    return-object p0
.end method

.method public clearWidth()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28736
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28737
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    .line 28739
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3

    .prologue
    .line 28532
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

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
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAltText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28691
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28692
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 28693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28694
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    move-object v2, v1

    .line 28697
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2

    .prologue
    .line 28536
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28503
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 28748
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28655
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28656
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 28657
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28658
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    move-object v2, v1

    .line 28661
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 28727
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    return v0
.end method

.method public hasAltText()Z
    .registers 3

    .prologue
    .line 28688
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 28745
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

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

.method public hasSource()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 28652
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 28724
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

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
    .line 28599
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->hasSource()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28601
    const/4 v0, 0x0

    .line 28603
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 28582
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 28595
    :goto_7
    return-object v0

    .line 28583
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28584
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->setSource(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    .line 28586
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasAltText()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 28587
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->setAltText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    .line 28589
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 28590
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->setWidth(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    .line 28592
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 28593
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->setHeight(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    :cond_3c
    move-object v0, p0

    .line 28595
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28611
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 28612
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 28617
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28619
    :sswitch_d
    return-object p0

    .line 28624
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28625
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    goto :goto_0

    .line 28629
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28630
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    goto :goto_0

    .line 28634
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28635
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    goto :goto_0

    .line 28639
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28640
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    goto :goto_0

    .line 28612
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
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
    .line 28503
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28503
    check-cast p1, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

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
    .line 28503
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAltText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28701
    if-nez p1, :cond_8

    .line 28702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28704
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28705
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28707
    return-object p0
.end method

.method setAltText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 28716
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28717
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->altText_:Ljava/lang/Object;

    .line 28719
    return-void
.end method

.method public setHeight(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28751
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28752
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->height_:I

    .line 28754
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28665
    if-nez p1, :cond_8

    .line 28666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28668
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28669
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28671
    return-object p0
.end method

.method setSource(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 28680
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28681
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->source_:Ljava/lang/Object;

    .line 28683
    return-void
.end method

.method public setWidth(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28730
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->bitField0_:I

    .line 28731
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->width_:I

    .line 28733
    return-object p0
.end method
