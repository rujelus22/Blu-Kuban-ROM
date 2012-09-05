.class public final Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$Content;",
        "Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private linkUrl_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

.field private photoUrl_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2614
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2657
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2347
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->maybeForceBuilderInitialization()V

    .line 2348
    return-void
.end method

.method static synthetic access$2700()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 1

    .prologue
    .line 2341
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 1

    .prologue
    .line 2353
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2351
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 3

    .prologue
    .line 2380
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    .line 2381
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$Content;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2382
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2384
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 6

    .prologue
    .line 2398
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$Content;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 2399
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$Content;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2400
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2401
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2402
    or-int/lit8 v2, v2, 0x1

    .line 2404
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$2902(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2406
    or-int/lit8 v2, v2, 0x2

    .line 2408
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$3002(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2410
    or-int/lit8 v2, v2, 0x4

    .line 2412
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$3102(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 2414
    or-int/lit8 v2, v2, 0x8

    .line 2416
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$3202(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2417
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 2418
    or-int/lit8 v2, v2, 0x10

    .line 2420
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$3302(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2421
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content;->access$3402(Lcom/google/wireless/realtimechat/proto/Data$Content;I)I

    .line 2422
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2357
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2361
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2363
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2364
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2366
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2367
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2368
    return-object p0
.end method

.method public clearLinkUrl()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2602
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2603
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2605
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2650
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2652
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2653
    return-object p0
.end method

.method public clearPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2693
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2696
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2567
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2569
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2530
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2531
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2533
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3

    .prologue
    .line 2372
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

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
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 2

    .prologue
    .line 2376
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2584
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2586
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2589
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

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2548
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2549
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2550
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2553
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

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2512
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2513
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2514
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2517
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

.method public hasLinkUrl()Z
    .registers 3

    .prologue
    .line 2580
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 2616
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

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

.method public hasPhotoMetadata()Z
    .registers 3

    .prologue
    .line 2659
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 2544
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2508
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

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
    .line 2341
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

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
    .line 2341
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2455
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_6e

    .line 2460
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2462
    :sswitch_d
    return-object p0

    .line 2467
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2468
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 2472
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2473
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2477
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2478
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2482
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    .line 2483
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 2486
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2487
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    goto :goto_0

    .line 2491
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    .line 2492
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->hasPhotoMetadata()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2493
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    .line 2495
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2496
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    goto :goto_0

    .line 2455
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2426
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2442
    :cond_6
    :goto_6
    return-object p0

    .line 2427
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2428
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 2430
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2431
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 2433
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasLinkUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2434
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setLinkUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 2436
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2437
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 2439
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2440
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergePhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    goto :goto_6
.end method

.method public mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2640
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2646
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2647
    return-object p0

    .line 2643
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    goto :goto_20
.end method

.method public mergePhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2683
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2689
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2690
    return-object p0

    .line 2686
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    goto :goto_20
.end method

.method public setLinkUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2593
    if-nez p1, :cond_8

    .line 2594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2596
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2597
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->linkUrl_:Ljava/lang/Object;

    .line 2599
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2632
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2634
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2635
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2622
    if-nez p1, :cond_8

    .line 2623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2625
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2627
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2628
    return-object p0
.end method

.method public setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2675
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2677
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2678
    return-object p0
.end method

.method public setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2665
    if-nez p1, :cond_8

    .line 2666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2668
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2670
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2671
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2557
    if-nez p1, :cond_8

    .line 2558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2560
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2561
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2563
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2521
    if-nez p1, :cond_8

    .line 2522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2524
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->bitField0_:I

    .line 2525
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->text_:Ljava/lang/Object;

    .line 2527
    return-object p0
.end method
