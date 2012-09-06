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

.field private hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

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

.field private notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

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
    .line 12489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12899
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 13031
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 13074
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 13151
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 13207
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 13263
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 13416
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 13505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13594
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13637
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 13680
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 12490
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->maybeForceBuilderInitialization()V

    .line 12491
    return-void
.end method

.method static synthetic access$15700()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12484
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12496
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCircleIdIsMutable()V
    .registers 3

    .prologue
    .line 13076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 13077
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 13078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13080
    :cond_17
    return-void
.end method

.method private ensureMediaRefIsMutable()V
    .registers 3

    .prologue
    .line 13419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_17

    .line 13420
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 13421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13423
    :cond_17
    return-void
.end method

.method private ensureMentionIsMutable()V
    .registers 3

    .prologue
    .line 13508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 13509
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13512
    :cond_17
    return-void
.end method

.method private ensureOnlinePhotoIdIsMutable()V
    .registers 3

    .prologue
    .line 13330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 13331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 13332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13334
    :cond_17
    return-void
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 13209
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 13210
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 13211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13213
    :cond_17
    return-void
.end method

.method private ensureSharedWithUserEmailIsMutable()V
    .registers 3

    .prologue
    .line 13153
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 13154
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 13155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13157
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12494
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
    .line 13112
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 13113
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13115
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
    .line 13486
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$MediaReference;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13487
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13489
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
    .line 13575
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13578
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
    .line 13397
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13400
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
    .line 13245
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 13246
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13248
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
    .line 13189
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 13190
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13192
    return-object p0
.end method

.method public addCircleId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13102
    if-nez p1, :cond_8

    .line 13103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13105
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 13106
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13108
    return-object p0
.end method

.method public addMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13479
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13480
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13482
    return-object p0
.end method

.method public addMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13462
    if-nez p2, :cond_8

    .line 13463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13465
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13466
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13468
    return-object p0
.end method

.method public addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 13472
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13473
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13475
    return-object p0
.end method

.method public addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13452
    if-nez p1, :cond_8

    .line 13453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13455
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13456
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13458
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13568
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13569
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13571
    return-object p0
.end method

.method public addMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13551
    if-nez p2, :cond_8

    .line 13552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13554
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13555
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13557
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 13561
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13562
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13564
    return-object p0
.end method

.method public addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13541
    if-nez p1, :cond_8

    .line 13542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13544
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13545
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13547
    return-object p0
.end method

.method public addOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13390
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13391
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13393
    return-object p0
.end method

.method public addOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13373
    if-nez p2, :cond_8

    .line 13374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13376
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13379
    return-object p0
.end method

.method public addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13383
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13384
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13386
    return-object p0
.end method

.method public addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13363
    if-nez p1, :cond_8

    .line 13364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13366
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13367
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13369
    return-object p0
.end method

.method public addPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13235
    if-nez p1, :cond_8

    .line 13236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13238
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 13239
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13241
    return-object p0
.end method

.method public addSharedWithUserEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13179
    if-nez p1, :cond_8

    .line 13180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13182
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 13183
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13185
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 3

    .prologue
    .line 12547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    .line 12548
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12549
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12551
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 8

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 12565
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 12566
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12567
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12568
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 12569
    or-int/lit8 v2, v2, 0x1

    .line 12571
    :cond_15
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$15902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12572
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 12573
    or-int/lit8 v2, v2, 0x2

    .line 12575
    :cond_21
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12576
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    .line 12577
    or-int/lit8 v2, v2, 0x4

    .line 12579
    :cond_2d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12580
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3a

    .line 12581
    or-int/lit8 v2, v2, 0x8

    .line 12583
    :cond_3a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12584
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_47

    .line 12585
    or-int/lit8 v2, v2, 0x10

    .line 12587
    :cond_47
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12588
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_63

    .line 12589
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12591
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12593
    :cond_63
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12594
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_70

    .line 12595
    or-int/lit8 v2, v2, 0x20

    .line 12597
    :cond_70
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Z)Z

    .line 12598
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8c

    .line 12599
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12601
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12603
    :cond_8c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12604
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a8

    .line 12605
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12607
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12609
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 12610
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b5

    .line 12611
    or-int/lit8 v2, v2, 0x40

    .line 12613
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12614
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c2

    .line 12615
    or-int/lit16 v2, v2, 0x80

    .line 12617
    :cond_c2
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;J)J

    .line 12618
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_dd

    .line 12619
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12620
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12622
    :cond_dd
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12623
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_f8

    .line 12624
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12625
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12627
    :cond_f8
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12628
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_113

    .line 12629
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12630
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12632
    :cond_113
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;

    .line 12633
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_120

    .line 12634
    or-int/lit16 v2, v2, 0x100

    .line 12636
    :cond_120
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12637
    and-int v3, v0, v5

    if-ne v3, v5, :cond_12b

    .line 12638
    or-int/lit16 v2, v2, 0x200

    .line 12640
    :cond_12b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 12641
    and-int v3, v0, v6

    if-ne v3, v6, :cond_136

    .line 12642
    or-int/lit16 v2, v2, 0x400

    .line 12644
    :cond_136
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 12645
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;I)I

    .line 12646
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 12500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12501
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12504
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 12508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12509
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12511
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 12514
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12515
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12516
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12517
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12519
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12520
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 12522
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12528
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12529
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12530
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12531
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 12532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12533
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 12534
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12535
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12947
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12948
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12950
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 13320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 13323
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13301
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13302
    return-object p0
.end method

.method public clearCircleId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13118
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 13119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13121
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12983
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12984
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12986
    return-object p0
.end method

.method public clearContent()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13019
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13020
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 13022
    return-object p0
.end method

.method public clearHangoutData()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 13673
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 13675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13676
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13067
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 13069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13070
    return-object p0
.end method

.method public clearMediaRef()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 13493
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13495
    return-object p0
.end method

.method public clearMention()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 13582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13584
    return-object p0
.end method

.method public clearNotificationLevel()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 13697
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13698
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 13700
    return-object p0
.end method

.method public clearOnlinePhotoId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13403
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 13404
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13406
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13251
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 13252
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13254
    return-object p0
.end method

.method public clearPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12917
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12919
    return-object p0
.end method

.method public clearPublic()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 13147
    return-object p0
.end method

.method public clearSharedWithUserEmail()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13195
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 13196
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13198
    return-object p0
.end method

.method public clearTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 13630
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13633
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3

    .prologue
    .line 12539
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
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12928
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12929
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12930
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12931
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12934
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
    .line 13311
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 13268
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 13089
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 13086
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
    .line 13083
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12964
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12965
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12966
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12967
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12970
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
    .line 13000
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 13001
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13002
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13003
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 13006
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
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 2

    .prologue
    .line 12543
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 13642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 13036
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMediaRef(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3
    .parameter "index"

    .prologue
    .line 13432
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getMediaRefCount()I
    .registers 2

    .prologue
    .line 13429
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
    .line 13426
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 13521
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 13518
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
    .line 13515
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationLevel()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 2

    .prologue
    .line 13685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    return-object v0
.end method

.method public getOnlinePhotoId(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13343
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
    .line 13340
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
    .line 13337
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
    .line 13222
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
    .line 13219
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
    .line 13216
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2

    .prologue
    .line 12904
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13135
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    return v0
.end method

.method public getSharedWithUserEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 13166
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSharedWithUserEmailCount()I
    .registers 2

    .prologue
    .line 13163
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
    .line 13160
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 13599
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 12925
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
    .line 13308
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
    .line 13265
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
    .line 12961
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
    .line 12997
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

.method public hasHangoutData()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 13639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 13033
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

.method public hasNotificationLevel()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 13682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPostType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12901
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
    .line 13132
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
    .line 13596
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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 12748
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 12749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 12760
    :cond_11
    :goto_11
    return v0

    .line 12754
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasHangoutData()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 12755
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12760
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13287
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 13289
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13295
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13296
    return-object p0

    .line 13292
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
    .line 12484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12484
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

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
    .line 12484
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
    .line 12768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12769
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_144

    .line 12774
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12776
    :sswitch_d
    return-object p0

    .line 12781
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12782
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v3

    .line 12783
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    if-eqz v3, :cond_0

    .line 12784
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12785
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_0

    .line 12790
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12791
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 12795
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12796
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 12800
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12801
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 12805
    :sswitch_48
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v1

    .line 12806
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 12807
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 12809
    :cond_59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12810
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto :goto_0

    .line 12814
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_64
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12815
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12819
    :sswitch_71
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12820
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    goto :goto_0

    .line 12824
    :sswitch_7e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12825
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 12829
    :sswitch_8c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12830
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 12834
    :sswitch_9a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 12835
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasAudience()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 12836
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 12838
    :cond_ab
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12839
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12843
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_b7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12844
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    goto/16 :goto_0

    .line 12848
    :sswitch_c5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v1

    .line 12849
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12850
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addOnlinePhotoId(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12854
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    :sswitch_d5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v1

    .line 12855
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12856
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12860
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :sswitch_e5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v1

    .line 12861
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12862
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMention(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12866
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    :sswitch_f5
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v1

    .line 12867
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasTargetPhotoId()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 12868
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 12870
    :cond_106
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12871
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12875
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    :sswitch_112
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v1

    .line 12876
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hasHangoutData()Z

    move-result v4

    if-eqz v4, :cond_123

    .line 12877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    .line 12879
    :cond_123
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12880
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_0

    .line 12884
    .end local v1           #subBuilder:Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;
    :sswitch_12f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12885
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    move-result-object v3

    .line 12886
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    if-eqz v3, :cond_0

    .line 12887
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12888
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    goto/16 :goto_0

    .line 12769
    :sswitch_data_144
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
        0x82 -> :sswitch_112
        0x88 -> :sswitch_12f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 12650
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12744
    :cond_6
    :goto_6
    return-object p0

    .line 12651
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasPostType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12652
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12654
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12655
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12657
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12658
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12660
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12661
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12663
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 12664
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12666
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16400(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 12667
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 12668
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16400(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12676
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 12677
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPublic(Z)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12679
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 12680
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 12681
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12689
    :cond_91
    :goto_91
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    .line 12690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 12691
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12692
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12699
    :cond_af
    :goto_af
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 12700
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12702
    :cond_bc
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 12703
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12705
    :cond_c9
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 12706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_176

    .line 12707
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    .line 12708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12715
    :cond_e7
    :goto_e7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_105

    .line 12716
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_184

    .line 12717
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    .line 12718
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12725
    :cond_105
    :goto_105
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_123

    .line 12726
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 12727
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    .line 12728
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12735
    :cond_123
    :goto_123
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasTargetPhotoId()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 12736
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12738
    :cond_130
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasHangoutData()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 12739
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 12741
    :cond_13d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasNotificationLevel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12742
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getNotificationLevel()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setNotificationLevel(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto/16 :goto_6

    .line 12671
    :cond_14c
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 12672
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16400(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_66

    .line 12684
    :cond_15a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 12685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_91

    .line 12694
    :cond_168
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 12695
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_af

    .line 12710
    :cond_176
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 12711
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e7

    .line 12720
    :cond_184
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 12721
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_105

    .line 12730
    :cond_192
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 12731
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->access$17200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_123
.end method

.method public mergeHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 13661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13663
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 13669
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13670
    return-object p0

    .line 13666
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    goto :goto_20
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 13057
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 13063
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13064
    return-object p0

    .line 13060
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_20
.end method

.method public mergeTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13618
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 13620
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13626
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13627
    return-object p0

    .line 13623
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12938
    if-nez p1, :cond_8

    .line 12939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12941
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12942
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 12944
    return-object p0
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13315
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->albumId_:J

    .line 13317
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13281
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13284
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13271
    if-nez p1, :cond_8

    .line 13272
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13274
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13277
    return-object p0
.end method

.method public setCircleId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13093
    if-nez p2, :cond_8

    .line 13094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13096
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureCircleIdIsMutable()V

    .line 13097
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13099
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12974
    if-nez p1, :cond_8

    .line 12975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12977
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12978
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 12980
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13010
    if-nez p1, :cond_8

    .line 13011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13013
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13014
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->content_:Ljava/lang/Object;

    .line 13016
    return-object p0
.end method

.method public setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 13655
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 13657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13658
    return-object p0
.end method

.method public setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13645
    if-nez p1, :cond_8

    .line 13646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13648
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 13650
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13651
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13049
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 13051
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13052
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13039
    if-nez p1, :cond_8

    .line 13040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13042
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 13044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13045
    return-object p0
.end method

.method public setMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13446
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13447
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13449
    return-object p0
.end method

.method public setMediaRef(ILcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13436
    if-nez p2, :cond_8

    .line 13437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13439
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMediaRefIsMutable()V

    .line 13440
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13442
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13535
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13538
    return-object p0
.end method

.method public setMention(ILcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13525
    if-nez p2, :cond_8

    .line 13526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13528
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureMentionIsMutable()V

    .line 13529
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mention_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13531
    return-object p0
.end method

.method public setNotificationLevel(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13688
    if-nez p1, :cond_8

    .line 13689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13691
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13692
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 13694
    return-object p0
.end method

.method public setOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13357
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13358
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13360
    return-object p0
.end method

.method public setOnlinePhotoId(ILcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13347
    if-nez p2, :cond_8

    .line 13348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13350
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureOnlinePhotoIdIsMutable()V

    .line 13351
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13353
    return-object p0
.end method

.method public setPhoto(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13226
    if-nez p2, :cond_8

    .line 13227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13229
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensurePhotoIsMutable()V

    .line 13230
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13232
    return-object p0
.end method

.method public setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12907
    if-nez p1, :cond_8

    .line 12908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12910
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 12911
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12913
    return-object p0
.end method

.method public setPublic(Z)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13138
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13139
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->public_:Z

    .line 13141
    return-object p0
.end method

.method public setSharedWithUserEmail(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13170
    if-nez p2, :cond_8

    .line 13171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13173
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->ensureSharedWithUserEmailIsMutable()V

    .line 13174
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13176
    return-object p0
.end method

.method public setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13612
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13614
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13615
    return-object p0
.end method

.method public setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13602
    if-nez p1, :cond_8

    .line 13603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13605
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 13607
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->bitField0_:I

    .line 13608
    return-object p0
.end method
