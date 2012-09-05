.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accountVersion_:J

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

.field private resumeToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17720
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17859
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17721
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->maybeForceBuilderInitialization()V

    .line 17722
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 1

    .prologue
    .line 17727
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 17862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 17863
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17864
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17866
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17725
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 17929
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17930
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17932
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17922
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17923
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17925
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17905
    if-nez p2, :cond_8

    .line 17906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17908
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17909
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17911
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17915
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17916
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17918
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17895
    if-nez p1, :cond_8

    .line 17896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17898
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17899
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17901
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 6

    .prologue
    .line 17768
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 17769
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17770
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17771
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 17772
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17773
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17775
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$23802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 17776
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 17777
    or-int/lit8 v2, v2, 0x1

    .line 17779
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$23902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17780
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 17781
    or-int/lit8 v2, v2, 0x2

    .line 17783
    :cond_36
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;J)J

    .line 17784
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;I)I

    .line 17785
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 17731
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17732
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17733
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17735
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 17737
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17738
    return-object p0
.end method

.method public clearAccountVersion()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 17998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17999
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 18001
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 2

    .prologue
    .line 17935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17936
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17938
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 2

    .prologue
    .line 17972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17973
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17975
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 17742
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

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
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountVersion()J
    .registers 3

    .prologue
    .line 17989
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 2

    .prologue
    .line 17746
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 17875
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 17872
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

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
    .line 17869
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17953
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17954
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17955
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17956
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17959
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

.method public hasAccountVersion()Z
    .registers 3

    .prologue
    .line 17986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

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

.method public hasResumeToken()Z
    .registers 3

    .prologue
    .line 17950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

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
    .line 17715
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

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
    .line 17715
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 17825
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 17830
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17832
    :sswitch_d
    return-object p0

    .line 17837
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 17838
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17839
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    goto :goto_0

    .line 17843
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17844
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 17848
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    goto :goto_0

    .line 17825
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 17789
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17806
    :cond_6
    :goto_6
    return-object p0

    .line 17790
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$23800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 17791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 17792
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$23800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 17793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17800
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->hasResumeToken()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 17801
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    .line 17803
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->hasAccountVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17804
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getAccountVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->setAccountVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    goto :goto_6

    .line 17795
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17796
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$23800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAccountVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17993
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 17995
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17889
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17890
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17892
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17879
    if-nez p2, :cond_8

    .line 17880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17882
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 17883
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17885
    return-object p0
.end method

.method public setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17963
    if-nez p1, :cond_8

    .line 17964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17966
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 17967
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17969
    return-object p0
.end method
