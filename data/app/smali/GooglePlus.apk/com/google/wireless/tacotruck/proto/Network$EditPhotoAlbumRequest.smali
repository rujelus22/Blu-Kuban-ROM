.class public final Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditPhotoAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52564
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    .line 52565
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->initFields()V

    .line 52566
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52210
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52270
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    .line 52290
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 52211
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52205
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52212
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52270
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    .line 52290
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 52212
    return-void
.end method

.method static synthetic access$73902(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52205
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$74002(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52205
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$74102(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52205
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 1

    .prologue
    .line 52216
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52255
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 52256
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52257
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 52262
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
    .line 52267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    .line 52268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 52269
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 52382
    #calls: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->access$73700()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 52385
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 52231
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52205
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 2

    .prologue
    .line 52220
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52241
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 52242
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52243
    check-cast v1, Ljava/lang/String;

    .line 52251
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52247
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52248
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52249
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52251
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 52292
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 52293
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 52305
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 52295
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 52296
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 52297
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 52300
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_26

    .line 52301
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52304
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 52305
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52228
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 52238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 52272
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    .line 52273
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 52276
    :goto_8
    return v1

    .line 52273
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 52275
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52205
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 52383
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52205
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 52387
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

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
    .line 52312
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

    .line 52281
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getSerializedSize()I

    .line 52282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 52283
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 52285
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1d

    .line 52286
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 52288
    :cond_1d
    return-void
.end method
