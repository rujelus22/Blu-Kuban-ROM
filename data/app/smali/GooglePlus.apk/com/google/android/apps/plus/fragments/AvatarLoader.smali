.class public Lcom/google/android/apps/plus/fragments/AvatarLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "AvatarLoader.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sNoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mGaiaId:Ljava/lang/String;

.field private mObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "large_image"

    aput-object v2, v0, v1

    const-string v1, "signature"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "photo_downloaded"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 63
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mGaiaId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private loadImageDataFromDatabase()Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, imageData:[B
    const/4 v7, 0x0

    .line 155
    .local v7, hasBitmap:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mGaiaId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/AvatarLoader;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 161
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_49

    move-result-object v8

    .line 162
    if-eqz v8, :cond_39

    .line 163
    const/4 v7, 0x1

    .line 171
    :cond_31
    :goto_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 174
    if-nez v7, :cond_4e

    .line 175
    sget-object v3, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    .line 178
    :cond_38
    :goto_38
    return-object v3

    .line 164
    :cond_39
    const/4 v0, 0x1

    :try_start_3a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_31

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_49

    move-result v0

    if-eqz v0, :cond_31

    .line 167
    const/4 v7, 0x1

    goto :goto_31

    .line 171
    :catchall_49
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 178
    :cond_4e
    if-eqz v8, :cond_38

    array-length v0, v8

    invoke-static {v8, v9, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_38
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    :cond_6
    :goto_6
    return-void

    .line 88
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    :goto_16
    invoke-super {p0, v0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_16
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public esLoadInBackground()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mGaiaId:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 114
    sget-object v7, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    .line 149
    :cond_8
    :goto_8
    return-object v7

    .line 117
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->loadImageDataFromDatabase()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 118
    .local v7, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    if-ne v7, v1, :cond_8

    .line 122
    new-instance v0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;-><init>(Lcom/google/android/apps/plus/fragments/AvatarLoader;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 135
    .local v0, operation:Lcom/google/android/apps/plus/api/LargeAvatarOperation;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mGaiaId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAvatarData;->getLargeAvatarSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getAvatar(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->start()V

    .line 137
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 138
    const-string v1, "AvatarLoader"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 139
    const-string v1, "AvatarLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getAvatar interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->loadImageDataFromDatabase()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_8

    .line 142
    :cond_62
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 143
    const-string v1, "AvatarLoader"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 144
    const-string v1, "AvatarLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getAvatar interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->esLoadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mGaiaId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->forceLoad()V

    .line 190
    :cond_b
    return-void
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->onReset()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_18

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    .line 106
    :cond_18
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    if-nez v0, :cond_12

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    .line 73
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->forceLoad()V

    .line 76
    :cond_19
    return-void
.end method
