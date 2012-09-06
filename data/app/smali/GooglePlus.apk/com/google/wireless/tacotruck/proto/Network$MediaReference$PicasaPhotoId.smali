.class public final Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PicasaPhotoId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46653
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 46654
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->initFields()V

    .line 46655
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 46246
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 46317
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedIsInitialized:B

    .line 46340
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedSerializedSize:I

    .line 46247
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46241
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46248
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 46317
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedIsInitialized:B

    .line 46340
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedSerializedSize:I

    .line 46248
    return-void
.end method

.method static synthetic access$64702(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46241
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$64802(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46241
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$64902(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46241
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$65002(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46241
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 1

    .prologue
    .line 46252
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 46301
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 46302
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 46303
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 46305
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 46308
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
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 46313
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->photoId_:J

    .line 46314
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->ownerGaiaId_:J

    .line 46315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 46316
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    .registers 1

    .prologue
    .line 46436
    #calls: Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->access$64500()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 46439
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 46256
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 46287
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 46288
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 46289
    check-cast v1, Ljava/lang/String;

    .line 46297
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 46291
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 46293
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 46294
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 46295
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 46297
    goto :goto_8
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 46277
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 46267
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 46342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedSerializedSize:I

    .line 46343
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 46359
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 46345
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 46346
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 46347
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46350
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 46351
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 46354
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 46355
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46358
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedSerializedSize:I

    move v1, v0

    .line 46359
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 46284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

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
    .line 46274
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

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

    .line 46264
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

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

    .line 46319
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedIsInitialized:B

    .line 46320
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 46323
    :goto_8
    return v1

    .line 46320
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 46322
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    .registers 2

    .prologue
    .line 46437
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    .registers 2

    .prologue
    .line 46441
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

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
    .line 46366
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

    .line 46328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getSerializedSize()I

    .line 46329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 46330
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 46332
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 46333
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 46335
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 46336
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 46338
    :cond_2a
    return-void
.end method
