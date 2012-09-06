.class public Lcom/google/android/apps/plus/api/SmallAvatarOperation;
.super Lcom/google/android/apps/plus/api/AvatarOperation;
.source "SmallAvatarOperation.java"


# static fields
.field private static sBackgroundColor:I

.field private static sSmallAvatarSize:I


# instance fields
.field private mImageBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/AvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 40
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    if-nez v0, :cond_17

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sBackgroundColor:I

    .line 44
    :cond_17
    return-void
.end method


# virtual methods
.method public getAvatar(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 52
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getAvatar(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method protected handleResponse(Ljava/lang/String;[B)V
    .registers 11
    .parameter "gaiaId"
    .parameter "imageBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    if-nez p2, :cond_b

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 82
    :goto_a
    return-void

    .line 66
    :cond_b
    array-length v0, p2

    invoke-static {p2, v4, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 67
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4a

    .line 68
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sBackgroundColor:I

    invoke-static {v6, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 70
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    if-nez v7, :cond_38

    .line 72
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

    .line 76
    :cond_38
    invoke-static {v7}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mImageBytes:[B

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mImageBytes:[B

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B)V

    goto :goto_a

    .line 80
    .end local v7           #resizedBitmap:Landroid/graphics/Bitmap;
    :cond_4a
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
