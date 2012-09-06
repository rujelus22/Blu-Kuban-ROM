.class public final Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;,
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;,
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;,
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13707
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    .line 13708
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->initFields()V

    .line 13709
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11479
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12233
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 12310
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 11480
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12233
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 12310
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 11481
    return-void
.end method

.method static synthetic access$15902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$16400(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    return p1
.end method

.method static synthetic access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$16902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$17000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object p1
.end method

.method static synthetic access$17402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object p1
.end method

.method static synthetic access$17502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11474
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11964
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11965
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11966
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11968
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11971
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

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11996
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11997
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11998
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12000
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 12003
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

.method private getContentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12028
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 12029
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12030
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12032
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 12035
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 1

    .prologue
    .line 11485
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 12215
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 12216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 12217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 12218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 12219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 12220
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 12221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    .line 12222
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 12223
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 12224
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 12225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    .line 12226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    .line 12227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    .line 12228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    .line 12229
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 12230
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 12231
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 12232
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12477
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->access$15700()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11950
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11951
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11952
    check-cast v1, Ljava/lang/String;

    .line 11960
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11954
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11956
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11957
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11958
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11960
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 12118
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    return-wide v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 12108
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12060
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 12057
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

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
    .line 12054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11982
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11983
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11984
    check-cast v1, Ljava/lang/String;

    .line 11992
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11986
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11988
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11989
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11990
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11992
    goto :goto_8
.end method

.method public getContent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12014
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 12015
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12016
    check-cast v1, Ljava/lang/String;

    .line 12024
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12018
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12020
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12021
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12022
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12024
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 2

    .prologue
    .line 11489
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    return-object v0
.end method

.method public getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 12201
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 12046
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMediaRef(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3
    .parameter "index"

    .prologue
    .line 12156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getMediaRefCount()I
    .registers 2

    .prologue
    .line 12153
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

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
    .line 12146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaRefOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12160
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;

    return-object v0
.end method

.method public getMediaRefOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12150
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 12177
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 12174
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

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
    .line 12167
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getMentionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;

    return-object v0
.end method

.method public getMentionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12171
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationLevel()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 2

    .prologue
    .line 12211
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    return-object v0
.end method

.method public getOnlinePhotoId(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12135
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

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
    .line 12132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

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
    .line 12125
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method public getOnlinePhotoIdOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;

    return-object v0
.end method

.method public getOnlinePhotoIdOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12129
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

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
    .line 12095
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

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
    .line 12092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2

    .prologue
    .line 11940
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12070
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 12312
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 12313
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 12400
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 12315
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 12316
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1e

    .line 12317
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 12320
    :cond_1e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2d

    .line 12321
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12324
    :cond_2d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3d

    .line 12325
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12328
    :cond_3d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4e

    .line 12329
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12332
    :cond_4e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v8, :cond_5c

    .line 12333
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12337
    :cond_5c
    const/4 v0, 0x0

    .line 12338
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_74

    .line 12339
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 12338
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 12342
    :cond_74
    add-int/2addr v2, v0

    .line 12343
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCircleIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 12345
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_90

    .line 12346
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 12350
    :cond_90
    const/4 v0, 0x0

    .line 12351
    const/4 v1, 0x0

    :goto_92
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a8

    .line 12352
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 12351
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 12355
    :cond_a8
    add-int/2addr v2, v0

    .line 12356
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getSharedWithUserEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 12359
    const/4 v0, 0x0

    .line 12360
    const/4 v1, 0x0

    :goto_b6
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_cc

    .line 12361
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 12360
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 12364
    :cond_cc
    add-int/2addr v2, v0

    .line 12365
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPhotoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 12367
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_e9

    .line 12368
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12371
    :cond_e9
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_fa

    .line 12372
    const/16 v4, 0xb

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 12375
    :cond_fa
    const/4 v1, 0x0

    :goto_fb
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_115

    .line 12376
    const/16 v5, 0xc

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12375
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    .line 12379
    :cond_115
    const/4 v1, 0x0

    :goto_116
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_130

    .line 12380
    const/16 v5, 0xd

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12379
    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    .line 12383
    :cond_130
    const/4 v1, 0x0

    :goto_131
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_14b

    .line 12384
    const/16 v5, 0xe

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12383
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    .line 12387
    :cond_14b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_15c

    .line 12388
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12391
    :cond_15c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_16b

    .line 12392
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12395
    :cond_16b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_180

    .line 12396
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 12399
    :cond_180
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 12400
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getSharedWithUserEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12084
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSharedWithUserEmailCount()I
    .registers 2

    .prologue
    .line 12081
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

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
    .line 12078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 12191
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 11947
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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
    .line 12115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 12105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 11979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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
    .line 12011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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
    .line 12198
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 12043
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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
    .line 12208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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

.method public hasPostType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11937
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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
    .line 12067
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

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

.method public hasTargetPhotoId()Z
    .registers 3

    .prologue
    .line 12188
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12235
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 12236
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 12251
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 12236
    goto :goto_9

    .line 12238
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 12239
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 12240
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 12241
    goto :goto_9

    .line 12244
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasHangoutData()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 12245
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_34

    .line 12246
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 12247
    goto :goto_9

    .line 12250
    :cond_34
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12478
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 2

    .prologue
    .line 12482
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 12407
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12256
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getSerializedSize()I

    .line 12257
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 12258
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12260
    :cond_19
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 12261
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12263
    :cond_26
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 12264
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12266
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_41

    .line 12267
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12269
    :cond_41
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4d

    .line 12270
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12272
    :cond_4d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 12273
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12272
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 12275
    :cond_63
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_71

    .line 12276
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12278
    :cond_71
    const/4 v0, 0x0

    :goto_72
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 12279
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12278
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 12281
    :cond_86
    const/4 v0, 0x0

    :goto_87
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 12282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12281
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 12284
    :cond_9d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ac

    .line 12285
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12287
    :cond_ac
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_bb

    .line 12288
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12290
    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d4

    .line 12291
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12290
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 12293
    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ed

    .line 12294
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12293
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 12296
    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_106

    .line 12297
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12296
    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    .line 12299
    :cond_106
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_115

    .line 12300
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12302
    :cond_115
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_122

    .line 12303
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12305
    :cond_122
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_135

    .line 12306
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->notificationLevel_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12308
    :cond_135
    return-void
.end method
