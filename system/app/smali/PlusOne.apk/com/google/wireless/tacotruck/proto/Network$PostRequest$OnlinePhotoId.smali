.class public final Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlinePhotoId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11525
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    .line 11526
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->initFields()V

    .line 11527
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11208
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11246
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11266
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11209
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11203
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11246
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11266
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11210
    return-void
.end method

.method static synthetic access$14902(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11203
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$15002(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11203
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$15102(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11203
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 1

    .prologue
    .line 11214
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 11243
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    .line 11244
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    .line 11245
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 1

    .prologue
    .line 11358
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->access$14700()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 2

    .prologue
    .line 11218
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 11239
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 11229
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11268
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11269
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 11281
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 11271
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 11272
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 11273
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11276
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 11277
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11280
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    move v1, v0

    .line 11281
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 11236
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

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
    const/4 v0, 0x1

    .line 11226
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 11248
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11249
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11252
    :goto_8
    return v1

    .line 11249
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11251
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11288
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11257
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getSerializedSize()I

    .line 11258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 11259
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11261
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 11262
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11264
    :cond_1b
    return-void
.end method
