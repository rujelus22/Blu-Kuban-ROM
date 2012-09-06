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
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/AvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 42
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    if-nez v0, :cond_1f

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sSmallAvatarSize:I

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    .line 47
    :cond_1f
    return-void
.end method


# virtual methods
.method public getAvatar(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 55
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->getAvatar(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method protected handleResponse(Ljava/lang/String;[B)V
    .registers 13
    .parameter "gaiaId"
    .parameter "imageBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    .line 63
    if-nez p2, :cond_c

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 102
    :goto_b
    return-void

    .line 68
    :cond_c
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 69
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_8f

    .line 70
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sMediumAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    invoke-static {v6, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 72
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    if-nez v7, :cond_3a

    .line 74
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resize medium avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3a
    move-object v6, v7

    .line 79
    sget v0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sSmallAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->sBackgroundColor:I

    invoke-static {v6, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 81
    .local v8, smallBitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_5e

    .line 82
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resize small avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5e
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xfa0

    invoke-direct {v9, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 85
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v0, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 89
    .local v3, smallAvatarData:[B
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 91
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v0, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 92
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 93
    .local v5, mediumAvatarData:[B
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x1

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B)V

    goto/16 :goto_b

    .line 100
    .end local v3           #smallAvatarData:[B
    .end local v5           #mediumAvatarData:[B
    .end local v7           #resizedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #smallBitmap:Landroid/graphics/Bitmap;
    .end local v9           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_8f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not decode avatar for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
