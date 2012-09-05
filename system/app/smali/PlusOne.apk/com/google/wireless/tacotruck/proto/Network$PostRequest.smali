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
    .line 13156
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    .line 13157
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->initFields()V

    .line 13158
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11126
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11811
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 11876
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 11127
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11128
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11811
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 11876
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 11128
    return-void
.end method

.method static synthetic access$15502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object p1
.end method

.method static synthetic access$15602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$16000(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    return p1
.end method

.method static synthetic access$16200(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16202(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16300(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$16600(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16602(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16702(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16802(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object p1
.end method

.method static synthetic access$17002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11121
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11564
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11565
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11566
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11568
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11571
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
    .line 11596
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11597
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11598
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11600
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11603
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
    .line 11628
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 11629
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11630
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11632
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 11635
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
    .line 11132
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 11795
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 11799
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 11800
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 11801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    .line 11802
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    .line 11803
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    .line 11804
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 11805
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    .line 11806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    .line 11807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    .line 11808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    .line 11809
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 11810
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 1

    .prologue
    .line 12035
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->access$15300()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11550
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    .line 11551
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11552
    check-cast v1, Ljava/lang/String;

    .line 11560
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11554
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11556
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11557
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11558
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11560
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 11718
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    return-wide v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 11708
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 11657
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
    .line 11654
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11582
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    .line 11583
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11584
    check-cast v1, Ljava/lang/String;

    .line 11592
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11586
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11588
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11589
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11590
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11592
    goto :goto_8
.end method

.method public getContent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11614
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    .line 11615
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11616
    check-cast v1, Ljava/lang/String;

    .line 11624
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11618
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11620
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11621
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11622
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->content_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11624
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11121
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
    .registers 2

    .prologue
    .line 11136
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 11646
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMediaRef(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3
    .parameter "index"

    .prologue
    .line 11756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getMediaRefCount()I
    .registers 2

    .prologue
    .line 11753
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
    .line 11746
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaRefOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11760
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
    .line 11750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    return-object v0
.end method

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 11777
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 11774
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
    .line 11767
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getMentionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 11781
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
    .line 11771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getOnlinePhotoId(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11735
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
    .line 11732
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
    .line 11725
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method public getOnlinePhotoIdOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11739
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
    .line 11729
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11698
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
    .line 11695
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
    .line 11692
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2

    .prologue
    .line 11540
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11670
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11878
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    .line 11879
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 11958
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 11881
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 11882
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 11883
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11886
    :cond_1c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 11887
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11890
    :cond_2b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3b

    .line 11891
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11894
    :cond_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4c

    .line 11895
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11898
    :cond_4c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5c

    .line 11899
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11903
    :cond_5c
    const/4 v0, 0x0

    .line 11904
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_74

    .line 11905
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11904
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 11908
    :cond_74
    add-int/2addr v2, v0

    .line 11909
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCircleIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11911
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_90

    .line 11912
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11916
    :cond_90
    const/4 v0, 0x0

    .line 11917
    const/4 v1, 0x0

    :goto_92
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a8

    .line 11918
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11917
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 11921
    :cond_a8
    add-int/2addr v2, v0

    .line 11922
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getSharedWithUserEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11925
    const/4 v0, 0x0

    .line 11926
    const/4 v1, 0x0

    :goto_b6
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_cc

    .line 11927
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11926
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 11930
    :cond_cc
    add-int/2addr v2, v0

    .line 11931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPhotoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11933
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_e9

    .line 11934
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11937
    :cond_e9
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_fa

    .line 11938
    const/16 v4, 0xb

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11941
    :cond_fa
    const/4 v1, 0x0

    :goto_fb
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_115

    .line 11942
    const/16 v5, 0xc

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11941
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    .line 11945
    :cond_115
    const/4 v1, 0x0

    :goto_116
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_130

    .line 11946
    const/16 v5, 0xd

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11945
    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    .line 11949
    :cond_130
    const/4 v1, 0x0

    :goto_131
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_14b

    .line 11950
    const/16 v5, 0xe

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11949
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    .line 11953
    :cond_14b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_15c

    .line 11954
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11957
    :cond_15c
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 11958
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getSharedWithUserEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSharedWithUserEmailCount()I
    .registers 2

    .prologue
    .line 11681
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
    .line 11678
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 11791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 11547
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
    .line 11715
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
    .line 11705
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
    .line 11579
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
    .line 11611
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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 11643
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

.method public hasPostType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11537
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
    .line 11667
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
    .line 11788
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11813
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    .line 11814
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 11823
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 11814
    goto :goto_9

    .line 11816
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 11817
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 11818
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 11819
    goto :goto_9

    .line 11822
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11965
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getSerializedSize()I

    .line 11829
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 11830
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->postType_:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11832
    :cond_17
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 11833
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11835
    :cond_24
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 11836
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11838
    :cond_32
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3f

    .line 11839
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11841
    :cond_3f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 11842
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11844
    :cond_4d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 11845
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11844
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 11847
    :cond_63
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_71

    .line 11848
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->public_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11850
    :cond_71
    const/4 v0, 0x0

    :goto_72
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 11851
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->sharedWithUserEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11850
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 11853
    :cond_86
    const/4 v0, 0x0

    :goto_87
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 11854
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->photo_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11853
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 11856
    :cond_9d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ac

    .line 11857
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11859
    :cond_ac
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_bb

    .line 11860
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->albumId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11862
    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d4

    .line 11863
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->onlinePhotoId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11862
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 11865
    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ed

    .line 11866
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mediaRef_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11865
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 11868
    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_106

    .line 11869
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->mention_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11868
    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    .line 11871
    :cond_106
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_115

    .line 11872
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->targetPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11874
    :cond_115
    return-void
.end method
