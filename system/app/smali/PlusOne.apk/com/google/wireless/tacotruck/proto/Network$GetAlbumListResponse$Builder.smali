.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private continuationToken_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14609
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14610
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->maybeForceBuilderInitialization()V

    .line 14611
    return-void
.end method

.method static synthetic access$18900(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14604
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19000()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 1

    .prologue
    .line 14604
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14646
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    .line 14647
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 14648
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 14651
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 1

    .prologue
    .line 14616
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumIsMutable()V
    .registers 3

    .prologue
    .line 14737
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 14738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14741
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14614
    return-void
.end method


# virtual methods
.method public addAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14797
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14798
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14800
    return-object p0
.end method

.method public addAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14780
    if-nez p2, :cond_8

    .line 14781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14783
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14786
    return-object p0
.end method

.method public addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 14790
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14793
    return-object p0
.end method

.method public addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14770
    if-nez p1, :cond_8

    .line 14771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14773
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14774
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14776
    return-object p0
.end method

.method public addAllAlbum(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 14804
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14805
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14807
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 6

    .prologue
    .line 14655
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 14656
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14657
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14658
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 14659
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14660
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14662
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;Ljava/util/List;)Ljava/util/List;

    .line 14663
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 14664
    or-int/lit8 v2, v2, 0x1

    .line 14666
    :cond_2a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I

    .line 14667
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I

    .line 14668
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 14620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14623
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 14624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14625
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 14810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14813
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 14837
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14838
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 14840
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3

    .prologue
    .line 14629
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

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
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 3
    .parameter "index"

    .prologue
    .line 14750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getAlbumCount()I
    .registers 2

    .prologue
    .line 14747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlbumList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 14828
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2

    .prologue
    .line 14633
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 14825
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

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
    .line 14604
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

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
    .line 14604
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14704
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14705
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 14710
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14712
    :sswitch_d
    return-object p0

    .line 14717
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 14718
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14719
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    goto :goto_0

    .line 14723
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14724
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    goto :goto_0

    .line 14705
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 14672
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14686
    :cond_6
    :goto_6
    return-object p0

    .line 14673
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19200(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 14674
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 14675
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19200(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 14676
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14683
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14684
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getContinuationToken()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    goto :goto_6

    .line 14678
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14679
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19200(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14764
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14767
    return-object p0
.end method

.method public setAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14754
    if-nez p2, :cond_8

    .line 14755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14757
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 14758
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14760
    return-object p0
.end method

.method public setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 14832
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 14834
    return-object p0
.end method
