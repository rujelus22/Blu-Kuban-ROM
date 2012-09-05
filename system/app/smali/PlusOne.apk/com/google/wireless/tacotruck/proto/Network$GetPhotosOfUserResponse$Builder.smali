.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private approvedPhoto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private unapprovedPhoto_:Ljava/util/List;
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
    .line 35695
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35696
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->maybeForceBuilderInitialization()V

    .line 35697
    return-void
.end method

.method static synthetic access$49500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35690
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$49600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 35690
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35732
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    .line 35733
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 35734
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 35737
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 35702
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureApprovedPhotoIsMutable()V
    .registers 3

    .prologue
    .line 35836
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 35837
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35840
    :cond_16
    return-void
.end method

.method private ensureUnapprovedPhotoIsMutable()V
    .registers 3

    .prologue
    .line 35925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 35926
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35927
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35929
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35700
    return-void
.end method


# virtual methods
.method public addAllApprovedPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 35903
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35904
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35906
    return-object p0
.end method

.method public addAllUnapprovedPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 35992
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35993
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35995
    return-object p0
.end method

.method public addApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35896
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35897
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35899
    return-object p0
.end method

.method public addApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35879
    if-nez p2, :cond_8

    .line 35880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35882
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35883
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35885
    return-object p0
.end method

.method public addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35889
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35890
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35892
    return-object p0
.end method

.method public addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35869
    if-nez p1, :cond_8

    .line 35870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35872
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35875
    return-object p0
.end method

.method public addUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35985
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35986
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35988
    return-object p0
.end method

.method public addUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35968
    if-nez p2, :cond_8

    .line 35969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35971
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35972
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35974
    return-object p0
.end method

.method public addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35978
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35979
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35981
    return-object p0
.end method

.method public addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35958
    if-nez p1, :cond_8

    .line 35959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35961
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35962
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35964
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 5

    .prologue
    .line 35741
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 35742
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35743
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 35744
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35745
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35747
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 35748
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 35749
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35750
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35752
    :cond_37
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 35753
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 35706
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35711
    return-object p0
.end method

.method public clearApprovedPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 35909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35912
    return-object p0
.end method

.method public clearUnapprovedPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 35998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36001
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3

    .prologue
    .line 35715
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 35849
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getApprovedPhotoCount()I
    .registers 2

    .prologue
    .line 35846
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApprovedPhotoList()Ljava/util/List;
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
    .line 35843
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2

    .prologue
    .line 35719
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 35938
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getUnapprovedPhotoCount()I
    .registers 2

    .prologue
    .line 35935
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnapprovedPhotoList()Ljava/util/List;
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
    .line 35932
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 35690
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 35690
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35802
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35803
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2c

    .line 35808
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35810
    :sswitch_d
    return-object p0

    .line 35815
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 35816
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35817
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    goto :goto_0

    .line 35821
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 35822
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35823
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    goto :goto_0

    .line 35803
    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 35757
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35778
    :cond_6
    :goto_6
    return-object p0

    .line 35758
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 35759
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 35760
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 35761
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 35768
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49900(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35769
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 35770
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49900(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 35771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 35763
    :cond_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35764
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 35773
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35774
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$49900(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35863
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35864
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35866
    return-object p0
.end method

.method public setApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35853
    if-nez p2, :cond_8

    .line 35854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35856
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 35857
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35859
    return-object p0
.end method

.method public setUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35952
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35953
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35955
    return-object p0
.end method

.method public setUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35942
    if-nez p2, :cond_8

    .line 35943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35945
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 35946
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35948
    return-object p0
.end method
