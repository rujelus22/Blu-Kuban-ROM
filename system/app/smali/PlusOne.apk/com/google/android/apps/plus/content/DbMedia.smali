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
.field private final mIsPWA:Z

.field private final mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

.field private final mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private final mMediaTag:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 37
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v6

    .line 38
    .local v6, builder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v6, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 39
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJ)V

    sput-object v0, Lcom/google/android/apps/plus/content/DbMedia;->EMPTY_MEDIA:Lcom/google/android/apps/plus/content/DbMedia;

    .line 117
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/DbMedia$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/DbMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    if-lez v2, :cond_14

    .line 66
    new-array v2, v2, [B

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 69
    :try_start_10
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Media;
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_13} :catch_36

    move-result-object v0

    .line 77
    :cond_14
    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 79
    const-class v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    .line 84
    return-void

    .line 81
    :cond_34
    const/4 v0, 0x0

    goto :goto_2b

    .line 70
    :catch_36
    move-exception v2

    goto :goto_14
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/content/DbMedia$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJ)V
    .registers 6
    .parameter "media"
    .parameter "mediaRef"
    .parameter "isPWA"
    .parameter "mediaTag"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 53
    iput-boolean p3, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    .line 54
    iput-wide p4, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    .line 55
    return-void
.end method

.method public static deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;
    .registers 14
    .parameter "array"

    .prologue
    const/4 v12, 0x1

    .line 260
    if-nez p0, :cond_5

    .line 261
    const/4 v10, 0x0

    .line 326
    :cond_4
    return-object v10

    .line 264
    :cond_5
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 265
    .local v6, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 266
    .local v9, items:S
    new-array v10, v9, [Lcom/google/android/apps/plus/content/DbMedia;

    .line 268
    .local v10, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/4 v8, 0x0

    .local v8, i:S
    :goto_10
    if-ge v8, v9, :cond_4

    .line 269
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v7

    .line 271
    .local v7, builder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 273
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, value:Ljava/lang/String;
    if-eqz v11, :cond_2a

    .line 275
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setContentHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 278
    :cond_2a
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 279
    if-eqz v11, :cond_33

    .line 280
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 283
    :cond_33
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 284
    if-eqz v11, :cond_3c

    .line 285
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 288
    :cond_3c
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 289
    if-eqz v11, :cond_45

    .line 290
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 293
    :cond_45
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 294
    if-eqz v11, :cond_4e

    .line 295
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbum(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 298
    :cond_4e
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 299
    if-eqz v11, :cond_57

    .line 300
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setAlbumArtist(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 303
    :cond_57
    invoke-static {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 304
    if-eqz v11, :cond_60

    .line 305
    invoke-virtual {v7, v11}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->setPlayerUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    .line 309
    :cond_60
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v12, :cond_8a

    .line 310
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 316
    .local v4, mediaTag:J
    :goto_6a
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v12, :cond_8d

    .line 317
    invoke-static {v6}, Lcom/google/android/apps/plus/api/MediaRef;->deserialize(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    .line 322
    .local v2, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v12, :cond_8f

    move v3, v12

    .line 323
    .local v3, isPWA:Z
    :goto_7b
    new-instance v0, Lcom/google/android/apps/plus/content/DbMedia;

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJ)V

    aput-object v0, v10, v8

    .line 268
    add-int/lit8 v0, v8, 0x1

    int-to-short v8, v0

    goto :goto_10

    .line 312
    .end local v2           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #isPWA:Z
    .end local v4           #mediaTag:J
    :cond_8a
    const-wide/16 v4, 0x0

    .restart local v4       #mediaTag:J
    goto :goto_6a

    .line 319
    :cond_8d
    const/4 v2, 0x0

    .restart local v2       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_74

    .line 322
    :cond_8f
    const/4 v3, 0x0

    goto :goto_7b
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

    .line 172
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 173
    .local v2, items:I
    if-nez v2, :cond_a

    .line 174
    const/4 v8, 0x0

    .line 249
    :goto_9
    return-object v8

    .line 177
    :cond_a
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x20

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 178
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 180
    .local v7, os:Ljava/io/DataOutputStream;
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 181
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/DbMedia;

    .line 182
    .local v0, dbMedia:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    .line 183
    .local v3, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 186
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 191
    :goto_45
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasDescriptionHtml()Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 192
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 197
    :goto_52
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 198
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 203
    :goto_5f
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasUrl()Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 204
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 209
    :goto_6c
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbum()Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 210
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 215
    :goto_79
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasAlbumArtist()Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 216
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 221
    :goto_86
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPlayerUrl()Z

    move-result v10

    if-eqz v10, :cond_d7

    .line 222
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/DbMedia;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 227
    :goto_93
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v10

    if-eqz v10, :cond_db

    .line 228
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v5

    .line 229
    .local v5, mediaTag:J
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 230
    invoke-virtual {v7, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 235
    .end local v5           #mediaTag:J
    :goto_a7
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v4

    .line 236
    .local v4, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v4, :cond_df

    .line 237
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/api/MediaRef;->serialize(Ljava/io/DataOutputStream;)V

    .line 244
    :goto_b3
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v10

    if-eqz v10, :cond_e3

    move v10, v11

    :goto_ba
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_1d

    .line 188
    .end local v4           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_bf
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_45

    .line 194
    :cond_c3
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_52

    .line 200
    :cond_c7
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5f

    .line 206
    :cond_cb
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_6c

    .line 212
    :cond_cf
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_79

    .line 218
    :cond_d3
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_86

    .line 224
    :cond_d7
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_93

    .line 232
    :cond_db
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_a7

    .line 240
    .restart local v4       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_df
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_b3

    :cond_e3
    move v10, v12

    .line 244
    goto :goto_ba

    .line 247
    .end local v0           #dbMedia:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v3           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v4           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_e5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 248
    .local v8, result:[B
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    return-wide v0
.end method

.method public isPWA()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    if-eqz v2, :cond_26

    .line 142
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMedia:Lcom/google/wireless/tacotruck/proto/Data$Media;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->toByteArray()[B

    move-result-object v0

    .line 143
    .local v0, bytes:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 149
    .end local v0           #bytes:[B
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    iget-boolean v2, p0, Lcom/google/android/apps/plus/content/DbMedia;->mIsPWA:Z

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-wide v1, p0, Lcom/google/android/apps/plus/content/DbMedia;->mMediaTag:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    return-void

    .line 146
    :cond_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12
.end method
