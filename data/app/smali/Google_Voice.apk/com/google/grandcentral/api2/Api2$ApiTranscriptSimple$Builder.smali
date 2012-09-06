.class public final Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimpleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimpleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private editedText_:Ljava/lang/Object;

.field private wordTokens_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16352
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16353
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->maybeForceBuilderInitialization()V

    .line 16354
    return-void
.end method

.method static synthetic access$19600()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 1

    .prologue
    .line 16347
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 1

    .prologue
    .line 16359
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;-><init>()V

    return-object v0
.end method

.method private ensureWordTokensIsMutable()V
    .registers 3

    .prologue
    .line 16491
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 16492
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16493
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16495
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16357
    return-void
.end method


# virtual methods
.method public addAllWordTokens(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;"
        }
    .end annotation

    .prologue
    .line 16558
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16559
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16561
    return-object p0
.end method

.method public addWordTokens(ILcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16551
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16552
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16554
    return-object p0
.end method

.method public addWordTokens(ILcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16534
    if-nez p2, :cond_8

    .line 16535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16537
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16538
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16540
    return-object p0
.end method

.method public addWordTokens(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 16544
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16545
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16547
    return-object p0
.end method

.method public addWordTokens(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16524
    if-nez p1, :cond_8

    .line 16525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16527
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16528
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16530
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3

    .prologue
    .line 16382
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    .line 16383
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16384
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16386
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 6

    .prologue
    .line 16390
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 16391
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16392
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16393
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16394
    or-int/lit8 v2, v2, 0x1

    .line 16396
    :cond_10
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->confidence_:F

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$19802(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;F)F

    .line 16397
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 16398
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16399
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16401
    :cond_2a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$19902(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;Ljava/util/List;)Ljava/util/List;

    .line 16402
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 16403
    or-int/lit8 v2, v2, 0x2

    .line 16405
    :cond_36
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$20002(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16406
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$20102(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;I)I

    .line 16407
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16363
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16364
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->confidence_:F

    .line 16365
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16367
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16369
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16370
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConfidence()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16481
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16482
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->confidence_:F

    .line 16484
    return-object p0
.end method

.method public clearEditedText()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16613
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16614
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getEditedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16616
    return-object p0
.end method

.method public clearWordTokens()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16564
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16565
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16567
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3

    .prologue
    .line 16374
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

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
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    .prologue
    .line 16472
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2

    .prologue
    .line 16378
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public getEditedText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16582
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16583
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16584
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16585
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16588
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

.method public getEditedTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16593
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16594
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16595
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16597
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16600
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "index"

    .prologue
    .line 16504
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public getWordTokensCount()I
    .registers 2

    .prologue
    .line 16501
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordTokensList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16498
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16469
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEditedText()Z
    .registers 3

    .prologue
    .line 16579
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 16434
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->hasConfidence()Z

    move-result v2

    if-nez v2, :cond_8

    .line 16444
    :cond_7
    :goto_7
    return v1

    .line 16438
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->getWordTokensCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 16439
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16438
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 16444
    :cond_1c
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16411
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16430
    :cond_6
    :goto_6
    return-object p0

    .line 16412
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16413
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 16415
    :cond_14
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$19900(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 16416
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 16417
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$19900(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    .line 16418
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16425
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->hasEditedText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16426
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16427
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$20000(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    goto :goto_6

    .line 16420
    :cond_45
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16421
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->access$19900(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16451
    const/4 v2, 0x0

    .line 16453
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 16458
    if-eqz v2, :cond_10

    .line 16459
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 16462
    :cond_10
    return-object p0

    .line 16454
    :catch_11
    move-exception v1

    .line 16455
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-object v2, v0

    .line 16456
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 16458
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 16459
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    :cond_21
    throw v3
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
    .line 16347
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16347
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

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
    .line 16347
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16570
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16571
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16573
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16475
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16476
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->confidence_:F

    .line 16478
    return-object p0
.end method

.method public setEditedText(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16604
    if-nez p1, :cond_8

    .line 16605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16607
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16608
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16610
    return-object p0
.end method

.method public setEditedTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16620
    if-nez p1, :cond_8

    .line 16621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16623
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->bitField0_:I

    .line 16624
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->editedText_:Ljava/lang/Object;

    .line 16626
    return-object p0
.end method

.method public setWordTokens(ILcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16518
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16519
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16521
    return-object p0
.end method

.method public setWordTokens(ILcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16508
    if-nez p2, :cond_8

    .line 16509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16511
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->ensureWordTokensIsMutable()V

    .line 16512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16514
    return-object p0
.end method
