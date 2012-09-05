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
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/AvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 41
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    if-nez v0, :cond_17

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sBackgroundColor:I

    .line 45
    :cond_17
    return-void
.end method


# virtual methods
.method public getAvatar(J)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 53
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->getAvatar(JI)V

    .line 54
    return-void
.end method

.method protected handleResponse(J[B)V
    .registers 13
    .parameter "userId"
    .parameter "imageBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p3, :cond_b

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 83
    :goto_a
    return-void

    .line 67
    :cond_b
    array-length v0, p3

    invoke-static {p3, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 68
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4a

    .line 69
    sget v0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sSmallAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->sBackgroundColor:I

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 71
    .local v8, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    if-nez v8, :cond_38

    .line 73
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

    .line 77
    :cond_38
    invoke-static {v8}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mImageBytes:[B

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/SmallAvatarOperation;->mImageBytes:[B

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B)V

    goto :goto_a

    .line 81
    .end local v8           #resizedBitmap:Landroid/graphics/Bitmap;
    :cond_4a
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
