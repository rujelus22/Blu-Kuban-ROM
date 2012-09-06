.class public final Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private prefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation
.end field

.field private streamid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17365
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->maybeForceBuilderInitialization()V

    .line 17366
    return-void
.end method

.method static synthetic access$21300(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17359
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21400()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 1

    .prologue
    .line 17359
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17401
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    .line 17402
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 17403
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 17406
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 1

    .prologue
    .line 17371
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePrefsIsMutable()V
    .registers 3

    .prologue
    .line 17532
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 17533
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17534
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17536
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17369
    return-void
.end method


# virtual methods
.method public addAllPrefs(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 17599
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$PrefPair;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17600
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17602
    return-object p0
.end method

.method public addPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17592
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17593
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17595
    return-object p0
.end method

.method public addPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17575
    if-nez p2, :cond_8

    .line 17576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17578
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17579
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17581
    return-object p0
.end method

.method public addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 4
    .parameter

    .prologue
    .line 17585
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17586
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17588
    return-object p0
.end method

.method public addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 3
    .parameter

    .prologue
    .line 17565
    if-nez p1, :cond_8

    .line 17566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17568
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17569
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17571
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3

    .prologue
    .line 17392
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    .line 17393
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17394
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17396
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 5

    .prologue
    .line 17410
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;-><init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 17411
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17412
    const/4 v2, 0x0

    .line 17413
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    .line 17414
    or-int/lit8 v1, v2, 0x1

    .line 17416
    :goto_10
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->streamid_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21602(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17417
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 17418
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17419
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17421
    :cond_2a
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21702(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;Ljava/util/List;)Ljava/util/List;

    .line 17422
    #setter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21802(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;I)I

    .line 17423
    return-object v0

    :cond_33
    move v1, v2

    goto :goto_10
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2

    .prologue
    .line 17375
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17377
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17379
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17380
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPrefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2

    .prologue
    .line 17605
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17606
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17608
    return-object p0
.end method

.method public clearStreamid()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 2

    .prologue
    .line 17517
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17518
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getStreamid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17520
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 3

    .prologue
    .line 17384
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

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
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 2

    .prologue
    .line 17388
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17359
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "index"

    .prologue
    .line 17545
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object p0
.end method

.method public getPrefsCount()I
    .registers 2

    .prologue
    .line 17542
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17539
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStreamid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17498
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17499
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 17500
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17501
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    move-object v2, v1

    .line 17504
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

.method public hasStreamid()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 17495
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 17445
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->hasStreamid()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 17455
    :goto_8
    return v1

    .line 17449
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->getPrefsCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 17450
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    .line 17452
    goto :goto_8

    .line 17449
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 17455
    :cond_1f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 4
    .parameter

    .prologue
    .line 17427
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 17441
    :goto_7
    return-object v0

    .line 17428
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->hasStreamid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 17429
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getStreamid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->setStreamid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    .line 17431
    :cond_15
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21700(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 17432
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 17433
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21700(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    .line 17434
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    :cond_33
    :goto_33
    move-object v0, p0

    .line 17441
    goto :goto_7

    .line 17436
    :cond_35
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17437
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->access$21700(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_33
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17463
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 17464
    sparse-switch v0, :sswitch_data_2e

    .line 17469
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 17471
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 17467
    goto :goto_e

    .line 17476
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17477
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    goto :goto_0

    .line 17481
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    .line 17482
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17483
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    goto :goto_0

    .line 17464
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
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
    .line 17359
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17359
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

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
    .line 17359
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removePrefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 3
    .parameter

    .prologue
    .line 17611
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17612
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17614
    return-object p0
.end method

.method public setPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 17559
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17560
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17562
    return-object p0
.end method

.method public setPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 17549
    if-nez p2, :cond_8

    .line 17550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17552
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->ensurePrefsIsMutable()V

    .line 17553
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17555
    return-object p0
.end method

.method public setStreamid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17508
    if-nez p1, :cond_8

    .line 17509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17511
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17512
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17514
    return-object p0
.end method

.method setStreamid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 17523
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->bitField0_:I

    .line 17524
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->streamid_:Ljava/lang/Object;

    .line 17526
    return-void
.end method
