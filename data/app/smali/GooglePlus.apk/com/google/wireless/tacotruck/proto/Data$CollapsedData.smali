.class public final Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CollapsedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollapsedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

.field private static final serialVersionUID:J


# instance fields
.field private aclDisplay_:Ljava/lang/Object;

.field private bitField0_:I

.field private comment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private creationMsec_:J

.field private isPublic_:Z

.field private lastModifiedMsec_:J

.field private likeCount_:I

.field private locationClusterId_:Ljava/lang/Object;

.field private locationName_:Ljava/lang/Object;

.field private media_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

.field private reshareCount_:I

.field private totalCommentCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3968
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 3969
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->initFields()V

    .line 3970
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2808
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3044
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedIsInitialized:B

    .line 3094
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedSerializedSize:I

    .line 2809
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2810
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3044
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedIsInitialized:B

    .line 3094
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedSerializedSize:I

    .line 2810
    return-void
.end method

.method static synthetic access$3600(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J

    return-wide p1
.end method

.method static synthetic access$3802(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2803
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    return p1
.end method

.method private getAclDisplayBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3009
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    .line 3010
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3011
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3013
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    .line 3016
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 1

    .prologue
    .line 2814
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method private getLocationClusterIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2977
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    .line 2978
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2979
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2981
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    .line 2984
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

.method private getLocationNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2874
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    .line 2875
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2876
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2878
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    .line 2881
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

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3031
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    .line 3032
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J

    .line 3033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    .line 3034
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I

    .line 3035
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I

    .line 3036
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I

    .line 3037
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z

    .line 3038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    .line 3039
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    .line 3041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    .line 3042
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J

    .line 3043
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 1

    .prologue
    .line 3226
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->access$3400()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3229
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAclDisplay()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2995
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    .line 2996
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2997
    check-cast v1, Ljava/lang/String;

    .line 3005
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2999
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3001
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3002
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3003
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3005
    goto :goto_8
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getCommentOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;

    return-object v0
.end method

.method public getCommentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getCreationMsec()J
    .registers 3

    .prologue
    .line 3027
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 2818
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method public getIsPublic()Z
    .registers 2

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z

    return v0
.end method

.method public getLastModifiedMsec()J
    .registers 3

    .prologue
    .line 2850
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J

    return-wide v0
.end method

.method public getLikeCount()I
    .registers 2

    .prologue
    .line 2902
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I

    return v0
.end method

.method public getLocationClusterId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2963
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    .line 2964
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2965
    check-cast v1, Ljava/lang/String;

    .line 2973
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2967
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2969
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2970
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2971
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2973
    goto :goto_8
.end method

.method public getLocationName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2860
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    .line 2861
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2862
    check-cast v1, Ljava/lang/String;

    .line 2870
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2864
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2866
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2867
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2868
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2870
    goto :goto_8
.end method

.method public getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .parameter "index"

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;

    return-object v0
.end method

.method public getMediaOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method public getReshareCount()I
    .registers 2

    .prologue
    .line 2912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3096
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedSerializedSize:I

    .line 3097
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 3149
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 3099
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 3100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 3101
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3100
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3104
    :cond_26
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_33

    .line 3105
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3108
    :cond_33
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_43

    .line 3109
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3112
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 3113
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3116
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5e

    .line 3117
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3120
    :cond_5e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 3121
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3124
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7e

    .line 3125
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3128
    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_97

    .line 3129
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3128
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 3132
    :cond_97
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_a8

    .line 3133
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3136
    :cond_a8
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_bb

    .line 3137
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3140
    :cond_bb
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_ce

    .line 3141
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplayBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3144
    :cond_ce
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_df

    .line 3145
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3148
    :cond_df
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedSerializedSize:I

    move v2, v1

    .line 3149
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 2892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I

    return v0
.end method

.method public hasAclDisplay()Z
    .registers 3

    .prologue
    .line 2992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasCreationMsec()Z
    .registers 3

    .prologue
    .line 3024
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasIsPublic()Z
    .registers 3

    .prologue
    .line 2919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasLastModifiedMsec()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2847
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLikeCount()Z
    .registers 3

    .prologue
    .line 2899
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasLocationClusterId()Z
    .registers 3

    .prologue
    .line 2960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasLocationName()Z
    .registers 3

    .prologue
    .line 2857
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasPhotoMediaDisplay()Z
    .registers 3

    .prologue
    .line 2950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasReshareCount()Z
    .registers 3

    .prologue
    .line 2909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public hasTotalCommentCount()Z
    .registers 3

    .prologue
    .line 2889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3046
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedIsInitialized:B

    .line 3047
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3050
    :goto_8
    return v1

    .line 3047
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3049
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3231
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

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
    .line 3156
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

    .line 3055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getSerializedSize()I

    .line 3056
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3057
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3056
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3059
    :cond_1f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2a

    .line 3060
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3062
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_38

    .line 3063
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3065
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 3066
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3068
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4f

    .line 3069
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3071
    :cond_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d

    .line 3072
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3074
    :cond_5d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6b

    .line 3075
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3077
    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 3078
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3077
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 3080
    :cond_82
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_91

    .line 3081
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3083
    :cond_91
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_a2

    .line 3084
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3086
    :cond_a2
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_b3

    .line 3087
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplayBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3089
    :cond_b3
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_c2

    .line 3090
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3092
    :cond_c2
    return-void
.end method
