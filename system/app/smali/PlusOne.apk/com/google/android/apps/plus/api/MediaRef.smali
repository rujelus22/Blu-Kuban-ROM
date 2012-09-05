.class public Lcom/google/android/apps/plus/api/MediaRef;
.super Ljava/lang/Object;
.source "MediaRef.java"

# interfaces
.implements Landroid/os/Parcelable;


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

.field private final mOwnerGaiaId:J

.field private final mPhotoId:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/api/MediaRef$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/api/MediaRef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Landroid/net/Uri;)V
    .registers 15
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "url"
    .parameter "localUri"

    .prologue
    .line 40
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "url"
    .parameter "localUri"
    .parameter "displayName"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    .line 45
    iput-wide p3, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    .line 46
    iput-object p5, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    .line 48
    iput-object p7, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, uriString:Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    .line 66
    :goto_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    .line 67
    return-void

    .line 64
    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    goto :goto_21
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/api/MediaRef$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static compareUris(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 3
    .parameter "one"
    .parameter "two"

    .prologue
    .line 276
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 277
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 281
    :goto_8
    return v0

    .line 278
    :cond_9
    if-nez p0, :cond_f

    if-nez p1, :cond_f

    .line 279
    const/4 v0, 0x1

    goto :goto_8

    .line 281
    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static decodeUtf8([B)Ljava/lang/String;
    .registers 4
    .parameter "buf"

    .prologue
    .line 318
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 319
    :catch_8
    move-exception v0

    .line 321
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 11
    .parameter "bb"

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 158
    .local v1, ownerGaiaId:J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 161
    .local v3, photoId:J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 162
    .local v9, length:S
    if-lez v9, :cond_3f

    .line 163
    new-array v8, v9, [B

    .line 164
    .local v8, buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 165
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v5

    .line 171
    .end local v8           #buf:[B
    .local v5, url:Ljava/lang/String;
    :goto_17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 172
    if-lez v9, :cond_41

    .line 173
    new-array v8, v9, [B

    .line 174
    .restart local v8       #buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 175
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 181
    .end local v8           #buf:[B
    .local v6, localUri:Landroid/net/Uri;
    :goto_2a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 182
    if-lez v9, :cond_43

    .line 183
    new-array v8, v9, [B

    .line 184
    .restart local v8       #buf:[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-static {v8}, Lcom/google/android/apps/plus/api/MediaRef;->decodeUtf8([B)Ljava/lang/String;

    move-result-object v7

    .line 190
    .end local v8           #buf:[B
    .local v7, displayName:Ljava/lang/String;
    :goto_39
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0

    .line 167
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #localUri:Landroid/net/Uri;
    .end local v7           #displayName:Ljava/lang/String;
    :cond_3f
    const/4 v5, 0x0

    .restart local v5       #url:Ljava/lang/String;
    goto :goto_17

    .line 177
    :cond_41
    const/4 v6, 0x0

    .restart local v6       #localUri:Landroid/net/Uri;
    goto :goto_2a

    .line 187
    :cond_43
    const/4 v7, 0x0

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_39
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
    .line 313
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 247
    instance-of v2, p1, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_10

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 253
    .local v0, other:Lcom/google/android/apps/plus/api/MediaRef;
    iget-wide v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 263
    .end local v0           #other:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_10
    :goto_10
    return v1

    .line 255
    .restart local v0       #other:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 257
    iget-object v2, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/api/MediaRef;->compareUris(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 260
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocalUri()Z
    .registers 2

    .prologue
    .line 232
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
    .line 239
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

.method public hashCode()I
    .registers 7

    .prologue
    const/16 v5, 0x20

    .line 290
    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 291
    .local v0, result:I
    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    ushr-long/2addr v3, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 293
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 297
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v1, :cond_27

    .line 298
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 300
    :cond_27
    return v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .registers 6
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 122
    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 126
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 132
    .end local v0           #bytes:[B
    :goto_1c
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v1, :cond_47

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    .restart local v0       #bytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 140
    .end local v0           #bytes:[B
    :goto_31
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/api/MediaRef;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    .restart local v0       #bytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 147
    .end local v0           #bytes:[B
    :goto_42
    return-void

    .line 129
    :cond_43
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1c

    .line 137
    :cond_47
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_31

    .line 145
    :cond_4b
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_42
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 308
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

    iget-wide v1, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 74
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mOwnerGaiaId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mPhotoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    if-eqz v0, :cond_22

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediaRef;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void

    .line 80
    :cond_22
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1c
.end method
