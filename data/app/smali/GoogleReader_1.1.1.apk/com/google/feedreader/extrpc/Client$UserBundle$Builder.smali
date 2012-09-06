.class public final Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UserBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UserBundle;",
        "Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;"
    }
.end annotation


# instance fields
.field private authorName_:Ljava/lang/Object;

.field private authorPhotoUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private feeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;"
        }
    .end annotation
.end field

.field private id_:Ljava/lang/Object;

.field private subscriberCount_:J

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 9000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 9036
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 9125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 9161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 8726
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->maybeForceBuilderInitialization()V

    .line 8727
    return-void
.end method

.method static synthetic access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8720
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 1

    .prologue
    .line 8720
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    .line 8773
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 8774
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 8777
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 1

    .prologue
    .line 8732
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFeedsIsMutable()V
    .registers 3

    .prologue
    .line 9039
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 9040
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 9041
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9043
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8730
    return-void
.end method


# virtual methods
.method public addAllFeeds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;"
        }
    .end annotation

    .prologue
    .line 9106
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9109
    return-object p0
.end method

.method public addFeeds(ILcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9099
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9100
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9102
    return-object p0
.end method

.method public addFeeds(ILcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9082
    if-nez p2, :cond_8

    .line 9083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9085
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9086
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9088
    return-object p0
.end method

.method public addFeeds(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 4
    .parameter

    .prologue
    .line 9092
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9093
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9095
    return-object p0
.end method

.method public addFeeds(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter

    .prologue
    .line 9072
    if-nez p1, :cond_8

    .line 9073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9075
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9076
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9078
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3

    .prologue
    .line 8763
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    .line 8764
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8765
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8767
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 6

    .prologue
    .line 8781
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 8782
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8783
    const/4 v2, 0x0

    .line 8784
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8785
    or-int/lit8 v2, v2, 0x1

    .line 8787
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10502(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8788
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8789
    or-int/lit8 v2, v2, 0x2

    .line 8791
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10602(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8792
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8793
    or-int/lit8 v2, v2, 0x4

    .line 8795
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10702(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8796
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 8797
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 8798
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8800
    :cond_43
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10802(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/util/List;)Ljava/util/List;

    .line 8801
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 8802
    or-int/lit8 v2, v2, 0x8

    .line 8804
    :cond_50
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10902(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8805
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 8806
    or-int/lit8 v2, v2, 0x10

    .line 8808
    :cond_5d
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$11002(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8809
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_73

    .line 8810
    or-int/lit8 v1, v2, 0x20

    .line 8812
    :goto_6a
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$11102(Lcom/google/feedreader/extrpc/Client$UserBundle;J)J

    .line 8813
    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$11202(Lcom/google/feedreader/extrpc/Client$UserBundle;I)I

    .line 8814
    return-object v0

    :cond_73
    move v1, v2

    goto :goto_6a
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3

    .prologue
    .line 8736
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8738
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 8740
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 8742
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 8744
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8745
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 8746
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8747
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 8748
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8749
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    .line 8750
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8751
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthorName()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 9149
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9150
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 9152
    return-object p0
.end method

.method public clearAuthorPhotoUrl()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 9185
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9186
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 9188
    return-object p0
.end method

.method public clearDescription()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 9024
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9025
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 9027
    return-object p0
.end method

.method public clearFeeds()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 9112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 9113
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9115
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 8952
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8953
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8955
    return-object p0
.end method

.method public clearSubscriberCount()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3

    .prologue
    .line 9211
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    .line 9214
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 8988
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8989
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 8991
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3

    .prologue
    .line 8755
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

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
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9130
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 9131
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 9132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9133
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    move-object v2, v1

    .line 9136
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

.method public getAuthorPhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9166
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 9167
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 9168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9169
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 9172
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

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2

    .prologue
    .line 8759
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8720
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9005
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 9006
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 9007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9008
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    move-object v2, v1

    .line 9011
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

.method public getFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "index"

    .prologue
    .line 9052
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    return-object p0
.end method

.method public getFeedsCount()I
    .registers 2

    .prologue
    .line 9049
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9046
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8933
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8934
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 8935
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8936
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 8939
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

.method public getSubscriberCount()J
    .registers 3

    .prologue
    .line 9202
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8969
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 8970
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 8971
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8972
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 8975
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

.method public hasAuthorName()Z
    .registers 3

    .prologue
    .line 9127
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

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

.method public hasAuthorPhotoUrl()Z
    .registers 3

    .prologue
    .line 9163
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 9002
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

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
    const/4 v1, 0x1

    .line 8930
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubscriberCount()Z
    .registers 3

    .prologue
    .line 9199
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 8966
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8851
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 8865
    :goto_8
    return v1

    .line 8855
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 8857
    goto :goto_8

    .line 8859
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->getFeedsCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 8860
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->getFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    .line 8862
    goto :goto_8

    .line 8859
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 8865
    :cond_27
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 4
    .parameter

    .prologue
    .line 8818
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 8847
    :goto_7
    return-object v0

    .line 8819
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8820
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    .line 8822
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8823
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    .line 8825
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8826
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    .line 8828
    :cond_2f
    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10800(Lcom/google/feedreader/extrpc/Client$UserBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 8829
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 8830
    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10800(Lcom/google/feedreader/extrpc/Client$UserBundle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    .line 8831
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8838
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasAuthorName()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 8839
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setAuthorName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    .line 8841
    :cond_5a
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasAuthorPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 8842
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setAuthorPhotoUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    .line 8844
    :cond_67
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasSubscriberCount()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 8845
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getSubscriberCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->setSubscriberCount(J)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    :cond_74
    move-object v0, p0

    .line 8847
    goto :goto_7

    .line 8833
    :cond_76
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 8834
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->access$10800(Lcom/google/feedreader/extrpc/Client$UserBundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8874
    sparse-switch v0, :sswitch_data_6e

    .line 8879
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 8881
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 8877
    goto :goto_e

    .line 8886
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8887
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 8891
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8892
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 8896
    :sswitch_2b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8897
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 8901
    :sswitch_38
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    .line 8902
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8903
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->addFeeds(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    goto :goto_0

    .line 8907
    :sswitch_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8908
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    goto :goto_0

    .line 8912
    :sswitch_54
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 8917
    :sswitch_61
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8918
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    goto :goto_0

    .line 8874
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x22 -> :sswitch_38
        0x2a -> :sswitch_47
        0x32 -> :sswitch_54
        0x38 -> :sswitch_61
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
    .line 8720
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8720
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UserBundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

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
    .line 8720
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter

    .prologue
    .line 9118
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9119
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9121
    return-object p0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9140
    if-nez p1, :cond_8

    .line 9141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9143
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9144
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 9146
    return-object p0
.end method

.method setAuthorName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 9155
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9156
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorName_:Ljava/lang/Object;

    .line 9158
    return-void
.end method

.method public setAuthorPhotoUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9176
    if-nez p1, :cond_8

    .line 9177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9179
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9180
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 9182
    return-object p0
.end method

.method setAuthorPhotoUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 9191
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9192
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->authorPhotoUrl_:Ljava/lang/Object;

    .line 9194
    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9015
    if-nez p1, :cond_8

    .line 9016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9018
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9019
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 9021
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 9030
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9031
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->description_:Ljava/lang/Object;

    .line 9033
    return-void
.end method

.method public setFeeds(ILcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 9066
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9067
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9069
    return-object p0
.end method

.method public setFeeds(ILcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9056
    if-nez p2, :cond_8

    .line 9057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9059
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->ensureFeedsIsMutable()V

    .line 9060
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9062
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8943
    if-nez p1, :cond_8

    .line 8944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8946
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8947
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8949
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 8958
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8959
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->id_:Ljava/lang/Object;

    .line 8961
    return-void
.end method

.method public setSubscriberCount(J)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 9205
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 9206
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->subscriberCount_:J

    .line 9208
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8979
    if-nez p1, :cond_8

    .line 8980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8982
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8983
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 8985
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 8994
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->bitField0_:I

    .line 8995
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->title_:Ljava/lang/Object;

    .line 8997
    return-void
.end method
