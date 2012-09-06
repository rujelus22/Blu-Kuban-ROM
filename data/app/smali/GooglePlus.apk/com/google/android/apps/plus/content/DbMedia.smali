.class public Lcom/google/android/apps/plus/content/DbMedia;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/content/DbMedia;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_MEDIA:Lcom/google/android/apps/plus/content/DbMedia;


# instance fields
.field private final mContentText:Ljava/lang/String;

.field private final mDescriptionText:Ljava/lang/String;

.field private final mIsPWA:Z

.field private final mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

.field private final mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private final mMediaTag:J

.field private mPlayerHeight:I

.field private mPlayerWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v10

    .line 41
    .local v10, builder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 42
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia;

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v6, v2

    move-object v7, v2

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJLjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/plus/content/DbMedia;->EMPTY_MEDIA:Lcom/google/android/apps/plus/content/DbMedia;

    .line 165
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/DbMedia$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/DbMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, mediaBytes:I
    if-lez v3, :cond_4e

    .line 78
    new-array v0, v3, [B

    .line 79
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    :try_start_f
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Media;
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_12} :catch_4b

    move-result-object v2

    .line 89
    .end local v0           #bytes:[B
    .local v2, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    :goto_13
    iput-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 91
    const-class v4, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_50

    move v4, v5

    :goto_2a
    iput-boolean v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mContentText:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mDescriptionText:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerWidth:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerHeight:I

    .line 104
    return-void

    .line 82
    .end local v2           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .restart local v0       #bytes:[B
    :catch_4b
    move-exception v1

    .line 83
    .local v1, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const/4 v2, 0x0

    .restart local v2       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    goto :goto_13

    .line 86
    .end local v0           #bytes:[B
    .end local v1           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v2           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    :cond_4e
    const/4 v2, 0x0

    .restart local v2       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    goto :goto_13

    .line 93
    :cond_50
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/content/DbMedia$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJLjava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter "media"
    .parameter "mediaRef"
    .parameter "isPWA"
    .parameter "mediaTag"
    .parameter "contentText"
    .parameter "descriptionText"
    .parameter "playerWidth"
    .parameter "playerHeight"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 61
    iput-boolean p3, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    .line 62
    iput-wide p4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    .line 63
    iput-object p6, p0, Lcom/google/android/apps/plus/content/DbMedia;->mContentText:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/google/android/apps/plus/content/DbMedia;->mDescriptionText:Ljava/lang/String;

    .line 65
    iput p8, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerWidth:I

    .line 66
    iput p9, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerHeight:I

    .line 67
    return-void
.end method

.method public static deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;
    .registers 17
    .parameter "array"

    .prologue
    .line 324
    if-nez p0, :cond_4

    .line 325
    const/4 v14, 0x0

    .line 399
    :cond_3
    return-object v14

    .line 328
    :cond_4
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 329
    .local v10, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    .line 330
    .local v13, items:S
    new-array v14, v13, [Lcom/google/android/apps/plus/content/DbMedia;

    .line 332
    .local v14, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/4 v12, 0x0

    .local v12, i:S
    :goto_f
    if-ge v12, v13, :cond_3

    .line 333
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v11

    .line 335
    .local v11, builder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 337
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 338
    .local v15, value:Ljava/lang/String;
    if-eqz v15, :cond_29

    .line 339
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 342
    :cond_29
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 343
    if-eqz v15, :cond_32

    .line 344
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 347
    :cond_32
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 348
    if-eqz v15, :cond_3b

    .line 349
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 352
    :cond_3b
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 353
    if-eqz v15, :cond_44

    .line 354
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 357
    :cond_44
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 358
    if-eqz v15, :cond_4d

    .line 359
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 362
    :cond_4d
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 363
    if-eqz v15, :cond_56

    .line 364
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 367
    :cond_56
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 368
    if-eqz v15, :cond_5f

    .line 369
    invoke-virtual {v11, v15}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 373
    :cond_5f
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    .line 374
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 380
    .local v4, mediaTag:J
    :goto_6a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    .line 381
    invoke-static {v10}, Lcom/google/android/apps/plus/api/MediaRef;->deserialize(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    .line 386
    .local v2, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_75
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a2

    const/4 v3, 0x1

    .line 388
    .local v3, isPWA:Z
    :goto_7d
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, contentText:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, descriptionText:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 393
    .local v8, playerWidth:I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 395
    .local v9, playerHeight:I
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia;

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJLjava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v14, v12

    .line 332
    add-int/lit8 v0, v12, 0x1

    int-to-short v12, v0

    goto/16 :goto_f

    .line 376
    .end local v2           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #isPWA:Z
    .end local v4           #mediaTag:J
    .end local v6           #contentText:Ljava/lang/String;
    .end local v7           #descriptionText:Ljava/lang/String;
    .end local v8           #playerWidth:I
    .end local v9           #playerHeight:I
    :cond_9d
    const-wide/16 v4, 0x0

    .restart local v4       #mediaTag:J
    goto :goto_6a

    .line 383
    :cond_a0
    const/4 v2, 0x0

    .restart local v2       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_75

    .line 386
    :cond_a2
    const/4 v3, 0x0

    goto :goto_7d
.end method

.method public static serialize(Ljava/util/List;)[B
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/DbMedia;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/DbMedia;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 229
    .local v2, items:I
    if-nez v2, :cond_a

    .line 230
    const/4 v8, 0x0

    .line 313
    :goto_9
    return-object v8

    .line 233
    :cond_a
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x20

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 234
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    .local v7, os:Ljava/io/DataOutputStream;
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/DbMedia;

    .line 238
    .local v0, dbMedia:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    .line 239
    .local v3, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 242
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 247
    :goto_45
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasDescriptionHtml()Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 248
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 253
    :goto_52
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v10

    if-eqz v10, :cond_dd

    .line 254
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 259
    :goto_5f
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasUrl()Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 260
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 265
    :goto_6c
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbum()Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 266
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 271
    :goto_79
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbumArtist()Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 272
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 277
    :goto_86
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerUrl()Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 278
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 283
    :goto_93
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 284
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v5

    .line 285
    .local v5, mediaTag:J
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 286
    invoke-virtual {v7, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 291
    .end local v5           #mediaTag:J
    :goto_a7
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v4

    .line 292
    .local v4, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v4, :cond_f6

    .line 293
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 294
    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/api/MediaRef;->serialize(Ljava/io/DataOutputStream;)V

    .line 300
    :goto_b3
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v10

    if-eqz v10, :cond_fa

    move v10, v11

    :goto_ba
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 302
    iget-object v10, v0, Lcom/google/android/apps/plus/content/DbMedia;->mContentText:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 304
    iget-object v10, v0, Lcom/google/android/apps/plus/content/DbMedia;->mDescriptionText:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 306
    iget v10, v0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerWidth:I

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    iget v10, v0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerHeight:I

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1d

    .line 244
    .end local v4           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_d3
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_45

    .line 250
    :cond_d8
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_52

    .line 256
    :cond_dd
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto/16 :goto_5f

    .line 262
    :cond_e2
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_6c

    .line 268
    :cond_e6
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_79

    .line 274
    :cond_ea
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_86

    .line 280
    :cond_ee
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_93

    .line 288
    :cond_f2
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_a7

    .line 296
    .restart local v4       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_f6
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_b3

    :cond_fa
    move v10, v12

    .line 300
    goto :goto_ba

    .line 311
    .end local v0           #dbMedia:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v3           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v4           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_fc
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 312
    .local v8, result:[B
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mDescriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    return-wide v0
.end method

.method public getPlayerHeight()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerHeight:I

    return v0
.end method

.method public getPlayerWidth()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerWidth:I

    return v0
.end method

.method public isPWA()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    if-eqz v2, :cond_3a

    .line 190
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->toByteArray()[B

    move-result-object v0

    .line 191
    .local v0, bytes:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 197
    .end local v0           #bytes:[B
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-boolean v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-wide v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mContentText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mDescriptionText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mPlayerHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void

    .line 194
    :cond_3a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12
.end method
