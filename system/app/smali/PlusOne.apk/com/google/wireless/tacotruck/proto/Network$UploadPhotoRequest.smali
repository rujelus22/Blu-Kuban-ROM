.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadPhotoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumLabel_:Ljava/lang/Object;

.field private albumTitle_:Ljava/lang/Object;

.field private bitField0_:I

.field private mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44727
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    .line 44728
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->initFields()V

    .line 44729
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44151
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44259
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 44285
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 44152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44153
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44259
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 44285
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 44153
    return-void
.end method

.method static synthetic access$62002(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$62102(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$62202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object p1
.end method

.method static synthetic access$62300(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$62302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$62402(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44146
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    return p1
.end method

.method private getAlbumLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44218
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 44219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44222
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 44225
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

.method private getAlbumTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44186
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 44187
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44188
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44190
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 44193
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 1

    .prologue
    .line 44157
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 44254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 44255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 44256
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44257
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44258
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 44390
    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->access$61800()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44204
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 44205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44206
    check-cast v1, Ljava/lang/String;

    .line 44214
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44208
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44210
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44211
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44212
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44214
    goto :goto_8
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44172
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 44173
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44174
    check-cast v1, Ljava/lang/String;

    .line 44182
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44176
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44178
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44179
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44180
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44182
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 2

    .prologue
    .line 44161
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    return-object v0
.end method

.method public getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 44236
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 44287
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 44288
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 44313
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 44290
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 44291
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 44292
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 44295
    :cond_19
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_28

    .line 44296
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 44299
    :cond_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_37

    .line 44300
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 44304
    :cond_37
    const/4 v0, 0x0

    .line 44305
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_39
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4f

    .line 44306
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 44305
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 44309
    :cond_4f
    add-int/2addr v2, v0

    .line 44310
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getStreamIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 44312
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 44313
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 44250
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 44247
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getStreamIdList()Ljava/util/List;
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
    .line 44244
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasAlbumLabel()Z
    .registers 3

    .prologue
    .line 44201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

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

.method public hasAlbumTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44169
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMediaRef()Z
    .registers 3

    .prologue
    .line 44233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

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

    .line 44261
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 44262
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44265
    :goto_8
    return v1

    .line 44262
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44264
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

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
    .line 44320
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 44270
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getSerializedSize()I

    .line 44271
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 44272
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44274
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 44275
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44277
    :cond_20
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 44278
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 44280
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 44281
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 44283
    :cond_41
    return-void
.end method
