.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J

.field private shapeId_:J

.field private subjectGaiaId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field private userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41792
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    .line 41793
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->initFields()V

    .line 41794
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40898
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41129
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 41176
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 40899
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40900
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41129
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 41176
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 40900
    return-void
.end method

.method static synthetic access$56902(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object p1
.end method

.method static synthetic access$57002(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$57102(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$57202(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$57302(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$57402(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$57502(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$57602(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    return-wide p1
.end method

.method static synthetic access$57702(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object p1
.end method

.method static synthetic access$57802(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40893
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41045
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 41046
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41047
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41049
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 41052
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 1

    .prologue
    .line 40904
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41003
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41004
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41005
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41007
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41010
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

.method private getSubjectGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41087
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 41088
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41089
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41091
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 41094
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 41119
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41120
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    .line 41121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41122
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    .line 41123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 41124
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    .line 41125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 41126
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    .line 41127
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41128
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 41296
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->access$56700()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41031
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 41032
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41033
    check-cast v1, Ljava/lang/String;

    .line 41041
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41035
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41037
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41038
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41039
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41041
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 41063
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40893
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 2

    .prologue
    .line 40908
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40989
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40990
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40991
    check-cast v1, Ljava/lang/String;

    .line 40999
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40993
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40995
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40996
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40997
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40999
    goto :goto_8
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 40979
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 41021
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 41179
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 41219
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 41181
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 41182
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 41183
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 41186
    :cond_1e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 41187
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41190
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_39

    .line 41191
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41194
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4a

    .line 41195
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41198
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5a

    .line 41199
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41202
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_6a

    .line 41203
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41206
    :cond_6a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 41207
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41210
    :cond_7c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 41211
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41214
    :cond_8b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9c

    .line 41215
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41218
    :cond_9c
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 41219
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 41105
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    return-wide v0
.end method

.method public getSubjectGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41073
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 41074
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41075
    check-cast v1, Ljava/lang/String;

    .line 41083
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41077
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41079
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41080
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41081
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41083
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2

    .prologue
    .line 40969
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method

.method public getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 41115
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 41028
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 41060
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 40986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 40976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 41018
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasShapeId()Z
    .registers 3

    .prologue
    .line 41102
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasSubjectGaiaId()Z
    .registers 3

    .prologue
    .line 41070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40966
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserShape()Z
    .registers 3

    .prologue
    .line 41112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

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

    .line 41131
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 41132
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 41141
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 41132
    goto :goto_9

    .line 41134
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasUserShape()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 41135
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 41136
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 41137
    goto :goto_9

    .line 41140
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40893
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41297
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40893
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41301
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

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
    .line 41226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 41146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSerializedSize()I

    .line 41147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 41148
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 41150
    :cond_17
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 41151
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41153
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2e

    .line 41154
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41156
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3d

    .line 41157
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41159
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4b

    .line 41160
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41162
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_59

    .line 41163
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41165
    :cond_59
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 41166
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41168
    :cond_69
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 41169
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41171
    :cond_76
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_85

    .line 41172
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41174
    :cond_85
    return-void
.end method
