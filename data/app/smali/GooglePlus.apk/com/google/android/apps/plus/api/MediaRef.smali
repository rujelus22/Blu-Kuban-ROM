.class public Lcom/google/android/apps/plus/api/MediaRef;
.super Ljava/lang/Object;
.source "MediaRef.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mLocalUri:Landroid/net/Uri;

.field private final mOwnerGaiaId:Ljava/lang/String;

.field private final mPhotoId:J

.field private final mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/api/MediaRef$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/api/MediaRef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, uriString:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    .line 96
    :goto_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->valueOf(I)Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 98
    return-void

    .line 94
    :cond_32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    goto :goto_21
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/api/MediaRef$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V
    .registers 15
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "url"
    .parameter "localUri"
    .parameter "type"

    .prologue
    .line 68
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V
    .registers 8
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "url"
    .parameter "localUri"
    .parameter "displayName"
    .parameter "type"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    .line 74
    iput-wide p2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    .line 75
    iput-object p4, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    .line 77
    iput-object p6, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    .line 78
    iput-object p7, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 79
    return-void
.end method

.method private static compareUris(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 3
    .parameter "one"
    .parameter "two"

    .prologue
    .line 345
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 346
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 350
    :goto_8
    return v0

    .line 347
    :cond_9
    if-nez p0, :cond_f

    if-nez p1, :cond_f

    .line 348
    const/4 v0, 0x1

    goto :goto_8

    .line 350
    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static decodeUtf8([B)Ljava/lang/String;
    .registers 4
    .parameter "buf"

    .prologue
    .line 390
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 391
    :catch_8
    move-exception v0

    .line 393
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 13
    .parameter "bb"

    .prologue
    .line 195
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 196
    .local v11, length:S
    if-lez v11, :cond_52

    .line 197
    new-array v9, v11, [B

    .line 198
    .local v9, bytes:[B
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    invoke-static {v9}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 204
    .end local v9           #bytes:[B
    .local v1, gaiaId:Ljava/lang/String;
    :goto_f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 207
    .local v2, photoId:J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 208
    if-lez v11, :cond_54

    .line 209
    new-array v8, v11, [B

    .line 210
    .local v8, buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v4

    .line 217
    .end local v8           #buf:[B
    .local v4, url:Ljava/lang/String;
    :goto_22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 218
    if-lez v11, :cond_56

    .line 219
    new-array v8, v11, [B

    .line 220
    .restart local v8       #buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 227
    .end local v8           #buf:[B
    .local v5, localUri:Landroid/net/Uri;
    :goto_35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 228
    if-lez v11, :cond_58

    .line 229
    new-array v8, v11, [B

    .line 230
    .restart local v8       #buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 231
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v6

    .line 238
    .end local v8           #buf:[B
    .local v6, displayName:Ljava/lang/String;
    :goto_44
    :try_start_44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->valueOf(I)Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :try_end_4b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_44 .. :try_end_4b} :catch_5a

    move-result-object v7

    .line 243
    .local v7, type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_4c
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    return-object v0

    .line 201
    .end local v1           #gaiaId:Ljava/lang/String;
    .end local v2           #photoId:J
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #localUri:Landroid/net/Uri;
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :cond_52
    const/4 v1, 0x0

    .restart local v1       #gaiaId:Ljava/lang/String;
    goto :goto_f

    .line 213
    .restart local v2       #photoId:J
    :cond_54
    const/4 v4, 0x0

    .restart local v4       #url:Ljava/lang/String;
    goto :goto_22

    .line 223
    :cond_56
    const/4 v5, 0x0

    .restart local v5       #localUri:Landroid/net/Uri;
    goto :goto_35

    .line 233
    :cond_58
    const/4 v6, 0x0

    .restart local v6       #displayName:Ljava/lang/String;
    goto :goto_44

    .line 239
    :catch_5a
    move-exception v10

    .line 241
    .local v10, e:Ljava/nio/BufferUnderflowException;
    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .restart local v7       #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    goto :goto_4c
.end method

.method private static encodeUtf8(Ljava/lang/String;)[B
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 385
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 314
    instance-of v2, p1, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_10

    move-object v0, p1

    .line 315
    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 320
    .local v0, other:Lcom/google/android/apps/plus/api/MediaRef;
    iget-wide v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 332
    .end local v0           #other:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_10
    :goto_10
    return v1

    .line 322
    .restart local v0       #other:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 324
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/api/MediaRef;->compareUris(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 326
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    iget-object v3, v0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v2, v3, :cond_10

    .line 329
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public getLocalUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    return-wide v0
.end method

.method public getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocalUri()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPhotoId()Z
    .registers 5

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 359
    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 361
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 365
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 369
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v1, :cond_2a

    .line 370
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 372
    :cond_2a
    return v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .registers 7
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v1

    .line 154
    .local v1, gaiaBytes:[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 155
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 157
    iget-wide v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 159
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_54

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    .local v0, bytes:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    .end local v0           #bytes:[B
    :goto_24
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v2, :cond_58

    .line 168
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 169
    .restart local v0       #bytes:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 175
    .end local v0           #bytes:[B
    :goto_39
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 176
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 177
    .restart local v0       #bytes:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 183
    .end local v0           #bytes:[B
    :goto_4a
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 184
    return-void

    .line 164
    :cond_54
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_24

    .line 172
    :cond_58
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_39

    .line 180
    :cond_5c
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_4a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_58

    const-string v0, ""

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [g-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v0, :cond_2b

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    .line 111
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1c
.end method
