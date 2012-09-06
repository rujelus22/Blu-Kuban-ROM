.class public final Lcom/google/apps/tacotown/proto/data/Segment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Segment.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Segment;",
        "Lcom/google/apps/tacotown/proto/data/Segment$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/SegmentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

.field private hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

.field private link_:Lcom/google/apps/tacotown/proto/data/Link;

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field private user_:Lcom/google/apps/tacotown/proto/data/UserRef;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->text_:Ljava/lang/Object;

    .line 538
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 581
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 605
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    .line 648
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 691
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 317
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->maybeForceBuilderInitialization()V

    .line 318
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 1

    .prologue
    .line 311
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->create()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 1

    .prologue
    .line 323
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 321
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/Segment;
    .registers 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    .line 353
    .local v0, result:Lcom/google/apps/tacotown/proto/data/Segment;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Segment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 354
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 356
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->build()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/Segment;
    .registers 6

    .prologue
    .line 370
    new-instance v1, Lcom/google/apps/tacotown/proto/data/Segment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/Segment;-><init>(Lcom/google/apps/tacotown/proto/data/Segment$Builder;Lcom/google/apps/tacotown/proto/data/Segment$1;)V

    .line 371
    .local v1, result:Lcom/google/apps/tacotown/proto/data/Segment;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 372
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 373
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 374
    or-int/lit8 v2, v2, 0x1

    .line 376
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$302(Lcom/google/apps/tacotown/proto/data/Segment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 378
    or-int/lit8 v2, v2, 0x2

    .line 380
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$402(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 381
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 382
    or-int/lit8 v2, v2, 0x4

    .line 384
    :cond_28
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$502(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Segment$Type;)Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 385
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 386
    or-int/lit8 v2, v2, 0x8

    .line 388
    :cond_35
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->link_:Lcom/google/apps/tacotown/proto/data/Link;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$602(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link;

    .line 389
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 390
    or-int/lit8 v2, v2, 0x10

    .line 392
    :cond_42
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$702(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 393
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 394
    or-int/lit8 v2, v2, 0x20

    .line 396
    :cond_4f
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Segment;->access$802(Lcom/google/apps/tacotown/proto/data/Segment;Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 397
    #setter for: Lcom/google/apps/tacotown/proto/data/Segment;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/Segment;->access$902(Lcom/google/apps/tacotown/proto/data/Segment;I)I

    .line 398
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->text_:Ljava/lang/Object;

    .line 329
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 330
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 331
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 332
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 333
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 334
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    .line 335
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 336
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 337
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 338
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 339
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->create()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

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
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Segment;
    .registers 2

    .prologue
    .line 348
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    return-object v0
.end method

.method public getFormatting()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    return-object v0
.end method

.method public getHashtag()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    return-object v0
.end method

.method public getLink()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    return-object v0
.end method

.method public getUser()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    return-object v0
.end method

.method public hasFormatting()Z
    .registers 3

    .prologue
    .line 540
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

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

.method public hasHashtag()Z
    .registers 3

    .prologue
    .line 693
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

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

.method public hasLink()Z
    .registers 3

    .prologue
    .line 607
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

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

.method public hasUser()Z
    .registers 3

    .prologue
    .line 650
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFormatting(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 562
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 564
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilder(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 570
    :goto_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 571
    return-object p0

    .line 567
    :cond_26
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 402
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 421
    :cond_6
    :goto_6
    return-object p0

    .line 403
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 404
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setText(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    .line 406
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasFormatting()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 407
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getFormatting()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFormatting(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    .line 409
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 410
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getType()Lcom/google/apps/tacotown/proto/data/Segment$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setType(Lcom/google/apps/tacotown/proto/data/Segment$Type;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    .line 412
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasLink()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 413
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getLink()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeLink(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    .line 415
    :cond_3b
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 416
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getUser()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeUser(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    .line 418
    :cond_48
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->hasHashtag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Segment;->getHashtag()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeHashtag(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 434
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_a0

    .line 439
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 441
    :sswitch_d
    return-object p0

    .line 446
    :sswitch_e
    iget v4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 451
    :sswitch_1b
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v1

    .line 452
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hasFormatting()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 453
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getFormatting()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    .line 455
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 456
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setFormatting(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    goto :goto_0

    .line 460
    .end local v1           #subBuilder:Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 461
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Segment$Type;->valueOf(I)Lcom/google/apps/tacotown/proto/data/Segment$Type;

    move-result-object v3

    .line 462
    .local v3, value:Lcom/google/apps/tacotown/proto/data/Segment$Type;
    if-eqz v3, :cond_0

    .line 463
    iget v4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 464
    iput-object v3, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_0

    .line 469
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/tacotown/proto/data/Segment$Type;
    :sswitch_4a
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v1

    .line 470
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/data/Link$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hasLink()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 471
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getLink()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    .line 473
    :cond_5b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 474
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setLink(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    goto :goto_0

    .line 478
    .end local v1           #subBuilder:Lcom/google/apps/tacotown/proto/data/Link$Builder;
    :sswitch_66
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v1

    .line 479
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hasUser()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 480
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getUser()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    .line 482
    :cond_77
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 483
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setUser(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    goto/16 :goto_0

    .line 487
    .end local v1           #subBuilder:Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    :sswitch_83
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v1

    .line 488
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hasHashtag()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 489
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->getHashtag()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    .line 491
    :cond_94
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 492
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->setHashtag(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    goto/16 :goto_0

    .line 434
    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_37
        0x22 -> :sswitch_4a
        0x2a -> :sswitch_66
        0x32 -> :sswitch_83
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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 311
    check-cast p1, Lcom/google/apps/tacotown/proto/data/Segment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHashtag(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 715
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 717
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilder(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 723
    :goto_20
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 724
    return-object p0

    .line 720
    :cond_27
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    goto :goto_20
.end method

.method public mergeLink(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 629
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 631
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilder(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    .line 637
    :goto_20
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 638
    return-object p0

    .line 634
    :cond_27
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    goto :goto_20
.end method

.method public mergeUser(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 672
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 674
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilder(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 680
    :goto_20
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 681
    return-object p0

    .line 677
    :cond_27
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    goto :goto_20
.end method

.method public setFormatting(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 546
    if-nez p1, :cond_8

    .line 547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 549
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->formatting_:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 551
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 552
    return-object p0
.end method

.method public setHashtag(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 699
    if-nez p1, :cond_8

    .line 700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 702
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->hashtag_:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 704
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 705
    return-object p0
.end method

.method public setLink(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 613
    if-nez p1, :cond_8

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 616
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->link_:Lcom/google/apps/tacotown/proto/data/Link;

    .line 618
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 619
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 517
    if-nez p1, :cond_8

    .line 518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 520
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 521
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->text_:Ljava/lang/Object;

    .line 523
    return-object p0
.end method

.method public setType(Lcom/google/apps/tacotown/proto/data/Segment$Type;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 589
    if-nez p1, :cond_8

    .line 590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 592
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 593
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 595
    return-object p0
.end method

.method public setUser(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 656
    if-nez p1, :cond_8

    .line 657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->user_:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 661
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->bitField0_:I

    .line 662
    return-object p0
.end method
