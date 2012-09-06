.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29626
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->maybeForceBuilderInitialization()V

    .line 29627
    return-void
.end method

.method static synthetic access$40800(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29620
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40900()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 29620
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    .line 29661
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 29662
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 29665
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 29632
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 29737
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 29738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    .line 29741
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29630
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 29804
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29805
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 29807
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 29797
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29798
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29800
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 29780
    if-nez p2, :cond_8

    .line 29781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29783
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29786
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 29790
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29793
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29770
    if-nez p1, :cond_8

    .line 29771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29773
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29774
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29776
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 3

    .prologue
    .line 29651
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    .line 29652
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29653
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29655
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 5

    .prologue
    .line 29669
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 29670
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    .line 29671
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 29672
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29673
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    .line 29675
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->access$41102(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;Ljava/util/List;)Ljava/util/List;

    .line 29676
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 29636
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29638
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    .line 29639
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 29810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    .line 29813
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 3

    .prologue
    .line 29643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

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
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 2

    .prologue
    .line 29647
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 29750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 29747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 29695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->getPhotoCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 29696
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 29698
    const/4 v1, 0x0

    .line 29701
    :goto_12
    return v1

    .line 29695
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29701
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 29620
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29620
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

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
    .line 29620
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29709
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 29710
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 29715
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29717
    :sswitch_d
    return-object p0

    .line 29722
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 29723
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29724
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    goto :goto_0

    .line 29710
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 29680
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29691
    :cond_6
    :goto_6
    return-object p0

    .line 29681
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->access$41100(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 29682
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 29683
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->access$41100(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    .line 29684
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 29686
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->access$41100(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 29764
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29767
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 29754
    if-nez p2, :cond_8

    .line 29755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29757
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->ensurePhotoIsMutable()V

    .line 29758
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29760
    return-object p0
.end method
