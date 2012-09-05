.class public final Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private circleId_:Lcom/google/protobuf/LazyStringList;

.field private commentId_:Ljava/lang/Object;

.field private content_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mediaRef_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference;",
            ">;"
        }
    .end annotation
.end field

.field private mention_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation
.end field

.field private onlinePhotoId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;",
            ">;"
        }
    .end annotation
.end field

.field private photo_:Lcom/google/protobuf/LazyStringList;

.field private postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field private public_:Z

.field private sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

.field private targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 12047
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12415
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12547
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12590
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12667
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12723
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12779
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12932
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 13021
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13110
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12048
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->maybeForceBuilderInitialization()V

    .line 12049
    return-void
.end method

.method static synthetic access$15300()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12042
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12054
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCircleIdIsMutable()V
    .registers 3

    .prologue
    .line 12592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 12593
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12596
    :cond_17
    return-void
.end method

.method private ensureMediaRefIsMutable()V
    .registers 3

    .prologue
    .line 12935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_17

    .line 12936
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12939
    :cond_17
    return-void
.end method

.method private ensureMentionIsMutable()V
    .registers 3

    .prologue
    .line 13024
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 13025
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13026
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13028
    :cond_17
    return-void
.end method

.method private ensureOnlinePhotoIdIsMutable()V
    .registers 3

    .prologue
    .line 12846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 12847
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12850
    :cond_17
    return-void
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 12725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 12726
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12729
    :cond_17
    return-void
.end method

.method private ensureSharedWithUserEmailIsMutable()V
    .registers 3

    .prologue
    .line 12669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 12670
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12671
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12673
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12052
    return-void
.end method


# virtual methods
.method public addAllCircleId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 12628
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12629
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12631
    return-object p0
.end method

.method public addAllMediaRef(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 13002
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$MediaReference;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13003
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13005
    return-object p0
.end method

.method public addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 13091
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13094
    return-object p0
.end method

.method public addAllOnlinePhotoId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12913
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12914
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12916
    return-object p0
.end method

.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12761
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12762
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12764
    return-object p0
.end method

.method public addAllSharedWithUserEmail(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 12705
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12708
    return-object p0
.end method

.method public addCircleId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12618
    if-nez p1, :cond_8

    .line 12619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12621
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12622
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12624
    return-object p0
.end method

.method public addMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12995
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12996
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12998
    return-object p0
.end method

.method public addMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12978
    if-nez p2, :cond_8

    .line 12979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12981
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12982
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12984
    return-object p0
.end method

.method public addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12988
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12989
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12991
    return-object p0
.end method

.method public addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12968
    if-nez p1, :cond_8

    .line 12969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12971
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12972
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12974
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13084
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13085
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13087
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13067
    if-nez p2, :cond_8

    .line 13068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13070
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13071
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13073
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 13077
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13080
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13057
    if-nez p1, :cond_8

    .line 13058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13060
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13061
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13063
    return-object p0
.end method

.method public addOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12906
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12907
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12909
    return-object p0
.end method

.method public addOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12889
    if-nez p2, :cond_8

    .line 12890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12892
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12893
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12895
    return-object p0
.end method

.method public addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12899
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12900
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12902
    return-object p0
.end method

.method public addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12879
    if-nez p1, :cond_8

    .line 12880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12882
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12883
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12885
    return-object p0
.end method

.method public addPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12751
    if-nez p1, :cond_8

    .line 12752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12754
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12755
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12757
    return-object p0
.end method

.method public addSharedWithUserEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12695
    if-nez p1, :cond_8

    .line 12696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12698
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12699
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12701
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 3

    .prologue
    .line 12101
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    .line 12102
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12103
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12105
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 6

    .prologue
    .line 12119
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 12120
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12121
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12122
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12123
    or-int/lit8 v2, v2, 0x1

    .line 12125
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12126
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 12127
    or-int/lit8 v2, v2, 0x2

    .line 12129
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12130
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 12131
    or-int/lit8 v2, v2, 0x4

    .line 12133
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12134
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 12135
    or-int/lit8 v2, v2, 0x8

    .line 12137
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12138
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 12139
    or-int/lit8 v2, v2, 0x10

    .line 12141
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12142
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5e

    .line 12143
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12145
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12147
    :cond_5e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12148
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6b

    .line 12149
    or-int/lit8 v2, v2, 0x20

    .line 12151
    :cond_6b
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Z)Z

    .line 12152
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_87

    .line 12153
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12155
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12157
    :cond_87
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12158
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a3

    .line 12159
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12161
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12163
    :cond_a3
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12164
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b0

    .line 12165
    or-int/lit8 v2, v2, 0x40

    .line 12167
    :cond_b0
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12168
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_bd

    .line 12169
    or-int/lit16 v2, v2, 0x80

    .line 12171
    :cond_bd
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;J)J

    .line 12172
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d8

    .line 12173
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12174
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12176
    :cond_d8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12177
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_f3

    .line 12178
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12179
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12181
    :cond_f3
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12182
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_10e

    .line 12183
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12184
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12186
    :cond_10e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12187
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_11b

    .line 12188
    or-int/lit16 v2, v2, 0x100

    .line 12190
    :cond_11b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12191
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;I)I

    .line 12192
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 12058
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12059
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12060
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12061
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12063
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12064
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12066
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12067
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12068
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12069
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 12072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12073
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12074
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12075
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12077
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 12080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12082
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12083
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12084
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12087
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12089
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12464
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12466
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 12836
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12837
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 12839
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12815
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12817
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12818
    return-object p0
.end method

.method public clearCircleId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12634
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12637
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12499
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12500
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12502
    return-object p0
.end method

.method public clearContent()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12536
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12538
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12583
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12585
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12586
    return-object p0
.end method

.method public clearMediaRef()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13008
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 13009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13011
    return-object p0
.end method

.method public clearMention()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13098
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13100
    return-object p0
.end method

.method public clearOnlinePhotoId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12919
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12920
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12922
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12767
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12770
    return-object p0
.end method

.method public clearPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12432
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12433
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12435
    return-object p0
.end method

.method public clearPublic()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 12663
    return-object p0
.end method

.method public clearSharedWithUserEmail()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12711
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12714
    return-object p0
.end method

.method public clearTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13146
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13148
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13149
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 12093
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

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
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12444
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12445
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12446
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12447
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12450
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

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 12827
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 12784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12605
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 12602
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCircleIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12599
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12480
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12481
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12482
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12483
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12486
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

.method public getContent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12516
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12517
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12518
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12519
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12522
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 2

    .prologue
    .line 12097
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 12552
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMediaRef(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3
    .parameter "index"

    .prologue
    .line 12948
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getMediaRefCount()I
    .registers 2

    .prologue
    .line 12945
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaRefList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12942
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 13037
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 13034
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMentionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13031
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnlinePhotoId(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12859
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    return-object v0
.end method

.method public getOnlinePhotoIdCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12856
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOnlinePhotoIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12853
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12738
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12732
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2

    .prologue
    .line 12420
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12651
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    return v0
.end method

.method public getSharedWithUserEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12682
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSharedWithUserEmailCount()I
    .registers 2

    .prologue
    .line 12679
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSharedWithUserEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12676
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 13115
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 12441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 12824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 12781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 12477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

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

.method public hasContent()Z
    .registers 3

    .prologue
    .line 12513
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 12549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

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

.method public hasPostType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12417
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPublic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

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

.method public hasTargetPhotoId()Z
    .registers 3

    .prologue
    .line 13112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 12805
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12811
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12812
    return-object p0

    .line 12808
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_20
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
    .line 12042
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

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
    .line 12042
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12303
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_112

    .line 12308
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12310
    :sswitch_d
    return-object p0

    .line 12315
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12316
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v3

    .line 12317
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    if-eqz v3, :cond_0

    .line 12318
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12319
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_0

    .line 12324
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12325
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 12329
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12330
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 12334
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 12339
    :sswitch_48
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v1

    .line 12340
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 12341
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 12343
    :cond_59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12344
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto :goto_0

    .line 12348
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_64
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12349
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12353
    :sswitch_71
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    goto :goto_0

    .line 12358
    :sswitch_7e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12359
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 12363
    :sswitch_8c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12364
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 12368
    :sswitch_9a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 12369
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasAudience()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 12370
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 12372
    :cond_ab
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12373
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12377
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_b7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12378
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    goto/16 :goto_0

    .line 12382
    :sswitch_c5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v1

    .line 12383
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12384
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12388
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    :sswitch_d5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v1

    .line 12389
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12390
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12394
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :sswitch_e5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v1

    .line 12395
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12396
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12400
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    :sswitch_f5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v1

    .line 12401
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasTargetPhotoId()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 12402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 12404
    :cond_106
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12405
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12303
    :sswitch_data_112
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_64
        0x38 -> :sswitch_71
        0x42 -> :sswitch_7e
        0x4a -> :sswitch_8c
        0x52 -> :sswitch_9a
        0x58 -> :sswitch_b7
        0x62 -> :sswitch_c5
        0x6a -> :sswitch_d5
        0x72 -> :sswitch_e5
        0x7a -> :sswitch_f5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 12196
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12284
    :cond_6
    :goto_6
    return-object p0

    .line 12197
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasPostType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12198
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12200
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12201
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12203
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12204
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12206
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12207
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12209
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 12210
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12212
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 12213
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 12214
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12222
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 12223
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPublic(Z)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12225
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 12226
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 12227
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12228
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12235
    :cond_91
    :goto_91
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16300(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    .line 12236
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 12237
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16300(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12245
    :cond_af
    :goto_af
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 12246
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12248
    :cond_bc
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 12249
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12251
    :cond_c9
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 12252
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 12253
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12261
    :cond_e7
    :goto_e7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_105

    .line 12262
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 12263
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12271
    :cond_105
    :goto_105
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16800(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_123

    .line 12272
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 12273
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16800(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12274
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12281
    :cond_123
    :goto_123
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasTargetPhotoId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12282
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_6

    .line 12217
    :cond_132
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12218
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_66

    .line 12230
    :cond_140
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12231
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_91

    .line 12240
    :cond_14e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12241
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16300(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_af

    .line 12256
    :cond_15c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12257
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e7

    .line 12266
    :cond_16a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12267
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_105

    .line 12276
    :cond_177
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 12277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16800(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_123
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 12573
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12579
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12580
    return-object p0

    .line 12576
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_20
.end method

.method public mergeTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 13136
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13142
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13143
    return-object p0

    .line 13139
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12454
    if-nez p1, :cond_8

    .line 12455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12457
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12458
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12460
    return-object p0
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12830
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12831
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 12833
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 12797
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12799
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12800
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12787
    if-nez p1, :cond_8

    .line 12788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12790
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12793
    return-object p0
.end method

.method public setCircleId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12609
    if-nez p2, :cond_8

    .line 12610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12612
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12613
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12615
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12490
    if-nez p1, :cond_8

    .line 12491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12493
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12494
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12496
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12526
    if-nez p1, :cond_8

    .line 12527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12529
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12530
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12532
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 12565
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12568
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12555
    if-nez p1, :cond_8

    .line 12556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12558
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12561
    return-object p0
.end method

.method public setMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12962
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12963
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12965
    return-object p0
.end method

.method public setMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12952
    if-nez p2, :cond_8

    .line 12953
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12955
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12956
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12958
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13051
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13052
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13054
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13041
    if-nez p2, :cond_8

    .line 13042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13044
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13045
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13047
    return-object p0
.end method

.method public setOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12873
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12874
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12876
    return-object p0
.end method

.method public setOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12863
    if-nez p2, :cond_8

    .line 12864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12866
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12867
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12869
    return-object p0
.end method

.method public setPhoto(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12742
    if-nez p2, :cond_8

    .line 12743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12745
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12746
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12748
    return-object p0
.end method

.method public setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12423
    if-nez p1, :cond_8

    .line 12424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12426
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12427
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12429
    return-object p0
.end method

.method public setPublic(Z)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12655
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 12657
    return-object p0
.end method

.method public setSharedWithUserEmail(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12686
    if-nez p2, :cond_8

    .line 12687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12689
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12692
    return-object p0
.end method

.method public setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13128
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13130
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13131
    return-object p0
.end method

.method public setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13118
    if-nez p1, :cond_8

    .line 13119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13121
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13123
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13124
    return-object p0
.end method
