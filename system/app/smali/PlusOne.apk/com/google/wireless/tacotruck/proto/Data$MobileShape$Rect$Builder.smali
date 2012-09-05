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
    .line 18462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18463
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->maybeForceBuilderInitialization()V

    .line 18464
    return-void
.end method

.method static synthetic access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18457
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24300()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 18457
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
    .line 18503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    .line 18504
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 18505
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 18508
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 1

    .prologue
    .line 18469
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18467
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 3

    .prologue
    .line 18494
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    .line 18495
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18496
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18498
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 6

    .prologue
    .line 18512
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 18513
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18514
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18515
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 18516
    or-int/lit8 v2, v2, 0x1

    .line 18518
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->left_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$24502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 18519
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 18520
    or-int/lit8 v2, v2, 0x2

    .line 18522
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->top_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$24602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 18523
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 18524
    or-int/lit8 v2, v2, 0x4

    .line 18526
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->right_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$24702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 18527
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 18528
    or-int/lit8 v2, v2, 0x8

    .line 18530
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bottom_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$24802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;D)D

    .line 18531
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->access$24902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;I)I

    .line 18532
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 18473
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18474
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 18475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18476
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 18477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18478
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 18479
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18480
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 18481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18482
    return-object p0
.end method

.method public clearBottom()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 18693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18694
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 18696
    return-object p0
.end method

.method public clearLeft()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 18630
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18631
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 18633
    return-object p0
.end method

.method public clearRight()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 18672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 18675
    return-object p0
.end method

.method public clearTop()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 18651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18652
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 18654
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 3

    .prologue
    .line 18486
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
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBottom()D
    .registers 3

    .prologue
    .line 18684
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 18490
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()D
    .registers 3

    .prologue
    .line 18621
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    return-wide v0
.end method

.method public getRight()D
    .registers 3

    .prologue
    .line 18663
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    return-wide v0
.end method

.method public getTop()D
    .registers 3

    .prologue
    .line 18642
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    return-wide v0
.end method

.method public hasBottom()Z
    .registers 3

    .prologue
    .line 18681
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

    .line 18618
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
    .line 18660
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
    .line 18639
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
    .line 18457
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

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
    .line 18457
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
    .line 18577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 18578
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 18583
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18585
    :sswitch_d
    return-object p0

    .line 18590
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18591
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    goto :goto_0

    .line 18595
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18596
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    goto :goto_0

    .line 18600
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    goto :goto_0

    .line 18605
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18606
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    goto :goto_0

    .line 18578
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
    .line 18536
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18549
    :cond_6
    :goto_6
    return-object p0

    .line 18537
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18538
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getLeft()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setLeft(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 18540
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasTop()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 18541
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getTop()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setTop(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 18543
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasRight()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 18544
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getRight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setRight(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 18546
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->hasBottom()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18547
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getBottom()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->setBottom(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    goto :goto_6
.end method

.method public setBottom(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18687
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18688
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bottom_:D

    .line 18690
    return-object p0
.end method

.method public setLeft(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18625
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->left_:D

    .line 18627
    return-object p0
.end method

.method public setRight(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18666
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18667
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->right_:D

    .line 18669
    return-object p0
.end method

.method public setTop(D)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->bitField0_:I

    .line 18646
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->top_:D

    .line 18648
    return-object p0
.end method
