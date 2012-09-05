.class public Lcom/google/android/apps/plus/api/MediumAvatarOperation;
.super Lcom/google/android/apps/plus/api/AvatarOperation;
.source "MediumAvatarOperation.java"


# static fields
.field private static sBackgroundColor:I

.field private static sMediumAvatarSize:I

.field private static sSmallAvatarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/AvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 43
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    if-nez v0, :cond_1f

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sSmallAvatarSize:I

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    .line 48
    :cond_1f
    return-void
.end method


# virtual methods
.method public getAvatar(J)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 56
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->getAvatar(JI)V

    .line 57
    return-void
.end method

.method protected handleResponse(J[B)V
    .registers 15
    .parameter "userId"
    .parameter "imageBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    .line 64
    if-nez p3, :cond_c

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 103
    :goto_b
    return-void

    .line 69
    :cond_c
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 70
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8f

    .line 71
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 73
    .local v8, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    if-nez v8, :cond_3a

    .line 75
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resize medium avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3a
    move-object v7, v8

    .line 80
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sSmallAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 82
    .local v9, smallBitmap:Landroid/graphics/Bitmap;
    if-nez v9, :cond_5e

    .line 83
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resize small avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_5e
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xfa0

    invoke-direct {v10, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 86
    .local v10, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9, v0, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    const/4 v9, 0x0

    .line 89
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 90
    .local v4, smallAvatarData:[B
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v0, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 93
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 94
    .local v6, mediumAvatarData:[B
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v5, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B)V

    goto/16 :goto_b

    .line 101
    .end local v4           #smallAvatarData:[B
    .end local v6           #mediumAvatarData:[B
    .end local v8           #resizedBitmap:Landroid/graphics/Bitmap;
    .end local v9           #smallBitmap:Landroid/graphics/Bitmap;
    .end local v10           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_8f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not decode avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
