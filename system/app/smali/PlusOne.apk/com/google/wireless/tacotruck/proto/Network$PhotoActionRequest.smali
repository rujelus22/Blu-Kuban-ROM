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
    .line 40996
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    .line 40997
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->initFields()V

    .line 40998
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40102
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40333
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 40380
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 40103
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40104
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40333
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 40380
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 40104
    return-void
.end method

.method static synthetic access$56002(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object p1
.end method

.method static synthetic access$56102(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$56202(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$56302(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$56402(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$56502(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$56602(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$56702(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    return-wide p1
.end method

.method static synthetic access$56802(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object p1
.end method

.method static synthetic access$56902(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40097
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40249
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 40250
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40251
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40253
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 40256
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
    .line 40108
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40207
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40208
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40209
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40211
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40214
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
    .line 40291
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 40292
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40293
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40295
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 40298
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

    .line 40323
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40324
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    .line 40325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40326
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    .line 40327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 40328
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    .line 40329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 40330
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    .line 40331
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40332
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 40500
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->access$55800()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40235
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    .line 40236
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40237
    check-cast v1, Ljava/lang/String;

    .line 40245
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40239
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40241
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40242
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40243
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40245
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 40267
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 2

    .prologue
    .line 40112
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40193
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40194
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40195
    check-cast v1, Ljava/lang/String;

    .line 40203
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40199
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40200
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40201
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40203
    goto :goto_8
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 40183
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 40225
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

    .line 40382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    .line 40383
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 40423
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 40385
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 40386
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 40387
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 40390
    :cond_1e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 40391
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 40394
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_39

    .line 40395
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 40398
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4a

    .line 40399
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40402
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5a

    .line 40403
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 40406
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_6a

    .line 40407
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40410
    :cond_6a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 40411
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40414
    :cond_7c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 40415
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 40418
    :cond_8b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9c

    .line 40419
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40422
    :cond_9c
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 40423
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 40309
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    return-wide v0
.end method

.method public getSubjectGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40277
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    .line 40278
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40279
    check-cast v1, Ljava/lang/String;

    .line 40287
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40281
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40283
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40284
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40285
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40287
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2

    .prologue
    .line 40173
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method

.method public getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 40319
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 40232
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
    .line 40264
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
    .line 40190
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
    .line 40180
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
    .line 40222
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
    .line 40306
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
    .line 40274
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

    .line 40170
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
    .line 40316
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

    .line 40335
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    .line 40336
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 40345
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 40336
    goto :goto_9

    .line 40338
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasUserShape()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 40339
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 40340
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 40341
    goto :goto_9

    .line 40344
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->memoizedIsInitialized:B

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
    .line 40430
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

    .line 40350
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSerializedSize()I

    .line 40351
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 40352
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 40354
    :cond_17
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 40355
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 40357
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2e

    .line 40358
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 40360
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3d

    .line 40361
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40363
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4b

    .line 40364
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 40366
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_59

    .line 40367
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40369
    :cond_59
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 40370
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40372
    :cond_69
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 40373
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 40375
    :cond_76
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_85

    .line 40376
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40378
    :cond_85
    return-void
.end method
