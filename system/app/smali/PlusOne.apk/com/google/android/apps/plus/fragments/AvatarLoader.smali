.class public Lcom/google/android/apps/plus/fragments/AvatarLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "AvatarLoader.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sNoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mObserverRegistered:Z

.field private final mUserId:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    .line 42
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

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "userId"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 62
    iput-wide p3, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mUserId:J

    .line 63
    return-void
.end method

.method private loadImageDataFromDatabase()Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, imageData:[B
    const/4 v7, 0x0

    .line 150
    .local v7, hasBitmap:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->AVATARS_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mUserId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/AvatarLoader;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 156
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_49

    move-result-object v8

    .line 157
    if-eqz v8, :cond_39

    .line 158
    const/4 v7, 0x1

    .line 166
    :cond_31
    :goto_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    if-nez v7, :cond_4e

    .line 170
    sget-object v3, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    .line 173
    :cond_38
    :goto_38
    return-object v3

    .line 159
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

    .line 162
    const/4 v7, 0x1

    goto :goto_31

    .line 166
    :catchall_49
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 173
    :cond_4e
    if-eqz v8, :cond_38

    array-length v0, v8

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_38
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    :cond_6
    :goto_6
    return-void

    .line 87
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
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
    .line 28
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

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->loadImageDataFromDatabase()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    .local v7, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/google/android/apps/plus/fragments/AvatarLoader;->sNoBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v1, :cond_b

    .line 144
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :goto_a
    return-object v7

    .line 117
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    new-instance v0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;-><init>(Lcom/google/android/apps/plus/fragments/AvatarLoader;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 130
    .local v0, operation:Lcom/google/android/apps/plus/api/LargeAvatarOperation;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mUserId:J

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getLargeAvatarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getAvatar(JI)V

    .line 131
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->start()V

    .line 132
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 133
    const-string v1, "AvatarLoader"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 134
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

    .line 144
    :cond_57
    :goto_57
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->loadImageDataFromDatabase()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_a

    .line 137
    :cond_5c
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 138
    const-string v1, "AvatarLoader"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 139
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

    goto :goto_57
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->esLoadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mUserId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->forceLoad()V

    .line 185
    :cond_9
    return-void
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->onReset()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_18

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    .line 105
    :cond_18
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    if-nez v0, :cond_12

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mObserverRegistered:Z

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->forceLoad()V

    .line 75
    :cond_19
    return-void
.end method
