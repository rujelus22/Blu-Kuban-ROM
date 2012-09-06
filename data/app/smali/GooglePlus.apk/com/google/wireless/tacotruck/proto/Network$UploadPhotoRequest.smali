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

.field private returnAlbumInfo_:Z

.field private streamId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45725
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    .line 45726
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->initFields()V

    .line 45727
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 45096
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 45215
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 45244
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 45097
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45098
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45215
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 45244
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 45098
    return-void
.end method

.method static synthetic access$63202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$63302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$63402(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object p1
.end method

.method static synthetic access$63500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45091
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$63502(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$63602(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z

    return p1
.end method

.method static synthetic access$63702(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45091
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    return p1
.end method

.method private getAlbumLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45163
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 45164
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 45165
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 45167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 45170
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
    .line 45131
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 45132
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 45133
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 45135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 45138
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
    .line 45102
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 45209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 45210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 45211
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45212
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z

    .line 45214
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 45353
    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->access$63000()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 45356
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45149
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    .line 45150
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 45151
    check-cast v1, Ljava/lang/String;

    .line 45159
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 45153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 45155
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45156
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45157
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 45159
    goto :goto_8
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45117
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    .line 45118
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 45119
    check-cast v1, Ljava/lang/String;

    .line 45127
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 45121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 45123
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45124
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45125
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 45127
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45091
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 2

    .prologue
    .line 45106
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    return-object v0
.end method

.method public getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 45181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 45205
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 45246
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    .line 45247
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 45276
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 45249
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 45250
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 45251
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 45254
    :cond_19
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_28

    .line 45255
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 45258
    :cond_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_37

    .line 45259
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 45263
    :cond_37
    const/4 v0, 0x0

    .line 45264
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_39
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4f

    .line 45265
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 45264
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 45268
    :cond_4f
    add-int/2addr v2, v0

    .line 45269
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getStreamIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 45271
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6b

    .line 45272
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 45275
    :cond_6b
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 45276
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 45195
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 45192
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
    .line 45189
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasAlbumLabel()Z
    .registers 3

    .prologue
    .line 45146
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

    .line 45114
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
    .line 45178
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

.method public hasReturnAlbumInfo()Z
    .registers 3

    .prologue
    .line 45202
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 45217
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    .line 45218
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 45221
    :goto_8
    return v1

    .line 45218
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 45220
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45091
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45354
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45091
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45358
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

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
    .line 45283
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

    .line 45226
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getSerializedSize()I

    .line 45227
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 45228
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45230
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 45231
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45233
    :cond_20
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 45234
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 45236
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 45237
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 45239
    :cond_41
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 45240
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 45242
    :cond_4f
    return-void
.end method
