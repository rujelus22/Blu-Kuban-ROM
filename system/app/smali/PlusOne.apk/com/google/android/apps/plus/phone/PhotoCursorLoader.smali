.class public abstract Lcom/google/android/apps/plus/phone/PhotoCursorLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PhotoCursorLoader.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/Pageable;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mActivityId:Ljava/lang/String;

.field private final mAlbumId:Ljava/lang/Long;

.field private final mCircleId:Ljava/lang/String;

.field private mCircleOffset:I

.field private mHasMore:Z

.field private final mInitialPageCount:I

.field private mIsLoadingMore:Z

.field private mLoadLimit:I

.field private mNetworkRequestMade:Z

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mOwnerId:Ljava/lang/Long;

.field private mPageable:Z

.field private final mPaging:Z

.field private final mPhotoOfUserId:Ljava/lang/Long;

.field private final mPhotoUrl:Ljava/lang/String;

.field private final mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "ownerId"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserId"
    .parameter "streamId"
    .parameter "activityId"
    .parameter "photoUrl"
    .parameter "paging"
    .parameter "initialPageCount"

    .prologue
    const/4 v0, -0x1

    .line 88
    invoke-static/range {p3 .. p9}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getNotificationUri(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 57
    new-instance v1, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 64
    const/16 v1, 0x10

    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 90
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 91
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerId:Ljava/lang/Long;

    .line 92
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    .line 93
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserId:Ljava/lang/Long;

    .line 95
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    .line 97
    iput-object p9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoUrl:Ljava/lang/String;

    .line 98
    iput-boolean p10, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPaging:Z

    .line 99
    iput-boolean p10, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 100
    iput p11, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    .line 101
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v1, :cond_31

    if-eq p11, v0, :cond_31

    mul-int/lit8 v0, p11, 0x10

    :cond_31
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 103
    return-void
.end method

.method private doNetworkRequest()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mNetworkRequestMade:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v1

    if-nez v1, :cond_c

    .line 241
    :goto_b
    return-void

    .line 222
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mNetworkRequestMade:Z

    .line 224
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 225
    .local v0, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(JLjava/lang/String;II)V

    .line 237
    :goto_2c
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    goto :goto_b

    .line 227
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserId:Ljava/lang/Long;

    if-eqz v1, :cond_3e

    .line 228
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(J)V

    goto :goto_2c

    .line 229
    :cond_3e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    if-eqz v1, :cond_52

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbum(JJ)V

    goto :goto_2c

    .line 231
    :cond_52
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityPhotos(Ljava/lang/String;)V

    goto :goto_2c

    .line 234
    :cond_5c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    const/16 v2, 0x32

    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoConsumptionStream(Ljava/lang/String;II)V

    goto :goto_2c
.end method

.method private static getNotificationUri(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12
    .parameter "ownerId"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserId"
    .parameter "streamId"
    .parameter "activityId"
    .parameter "photoUrl"

    .prologue
    .line 290
    if-eqz p4, :cond_23

    .line 291
    if-nez p0, :cond_c

    .line 292
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "OwnerID must not be NULL for stream photos"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_c
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 295
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .local v1, notificationUri:Landroid/net/Uri;
    :goto_22
    return-object v1

    .line 297
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_23
    if-eqz p3, :cond_30

    .line 298
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22

    .line 300
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_30
    if-eqz p1, :cond_47

    .line 301
    if-nez p0, :cond_3c

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "OwnerID must not be NULL for album photos"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_3c
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22

    .line 305
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_47
    if-eqz p2, :cond_58

    .line 306
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22

    .line 308
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_58
    if-eqz p5, :cond_69

    .line 309
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 310
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 311
    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22

    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_69
    if-eqz p6, :cond_6d

    .line 312
    const/4 v1, 0x0

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22

    .line 314
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_6d
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_22
.end method

.method private isLoadingCirclePhotos()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserId:Ljava/lang/Long;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoUrl:Ljava/lang/String;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 107
    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 108
    .local v3, loadLimit:I
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_9b

    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9b

    move v0, v7

    .line 109
    .local v0, changeSortOrder:Z
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, origSortOrder:Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 117
    :cond_1b
    if-eqz v0, :cond_3d

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_9e

    .end local v6           #sortOrder:Ljava/lang/String;
    :goto_28
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT 0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 123
    :cond_3d
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v5

    .line 125
    .local v5, returnCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_a1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 126
    .local v1, cursorCount:I
    :goto_47
    if-ne v1, v3, :cond_a3

    move v2, v7

    .line 127
    .local v2, cursorFull:Z
    :goto_4a
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_a5

    if-nez v2, :cond_56

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v9

    if-eqz v9, :cond_a5

    :cond_56
    move v9, v7

    :goto_57
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 128
    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    if-eq v3, v9, :cond_a7

    move v9, v7

    :goto_5e
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mIsLoadingMore:Z

    .line 131
    if-eqz v1, :cond_68

    if-nez v2, :cond_6c

    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    if-eqz v9, :cond_6c

    .line 132
    :cond_68
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v5, 0x0

    .line 137
    :cond_6c
    if-nez v5, :cond_95

    .line 139
    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->doNetworkRequest()V

    .line 145
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_a9

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 148
    :goto_7d
    if-ne v1, v3, :cond_ab

    move v2, v7

    .line 150
    :goto_80
    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    if-eq v1, v9, :cond_ad

    move v9, v7

    :goto_85
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 151
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_af

    if-nez v2, :cond_93

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v9

    if-eqz v9, :cond_af

    :cond_93
    :goto_93
    iput-boolean v7, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 155
    :cond_95
    if-eqz v0, :cond_9a

    .line 156
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 159
    :cond_9a
    return-object v5

    .end local v0           #changeSortOrder:Z
    .end local v1           #cursorCount:I
    .end local v2           #cursorFull:Z
    .end local v4           #origSortOrder:Ljava/lang/String;
    .end local v5           #returnCursor:Landroid/database/Cursor;
    :cond_9b
    move v0, v8

    .line 108
    goto/16 :goto_e

    .line 120
    .restart local v0       #changeSortOrder:Z
    .restart local v4       #origSortOrder:Ljava/lang/String;
    .restart local v6       #sortOrder:Ljava/lang/String;
    :cond_9e
    const-string v6, ""

    goto :goto_28

    .end local v6           #sortOrder:Ljava/lang/String;
    .restart local v5       #returnCursor:Landroid/database/Cursor;
    :cond_a1
    move v1, v8

    .line 125
    goto :goto_47

    .restart local v1       #cursorCount:I
    :cond_a3
    move v2, v8

    .line 126
    goto :goto_4a

    .restart local v2       #cursorFull:Z
    :cond_a5
    move v9, v8

    .line 127
    goto :goto_57

    :cond_a7
    move v9, v8

    .line 128
    goto :goto_5e

    :cond_a9
    move v1, v8

    .line 147
    goto :goto_7d

    :cond_ab
    move v2, v8

    .line 148
    goto :goto_80

    :cond_ad
    move v9, v8

    .line 150
    goto :goto_85

    :cond_af
    move v7, v8

    .line 151
    goto :goto_93
.end method

.method public getCurrentPage()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 202
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    if-eq v1, v0, :cond_d

    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    div-int/lit8 v0, v0, 0x10

    :cond_d
    return v0
.end method

.method final getDefaultSortOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 266
    const-string v0, "pending_status DESC,timestamp"

    .line 272
    :goto_6
    return-object v0

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 268
    const-string v0, "pending_status DESC,timestamp"

    goto :goto_6

    .line 269
    :cond_e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 270
    const-string v0, "pending_status DESC, show_order, timestamp DESC"

    goto :goto_6

    .line 272
    :cond_17
    const-string v0, "pending_status DESC,timestamp DESC"

    goto :goto_6
.end method

.method final getLoaderUri()Landroid/net/Uri;
    .registers 10

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerId:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getNotificationUri(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 252
    .local v8, notificationUri:Landroid/net/Uri;
    if-eqz v8, :cond_1b

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v7

    .line 257
    .local v7, loaderUri:Landroid/net/Uri;
    :goto_1a
    return-object v7

    .line 255
    .end local v7           #loaderUri:Landroid/net/Uri;
    :cond_1b
    const/4 v7, 0x0

    .restart local v7       #loaderUri:Landroid/net/Uri;
    goto :goto_1a
.end method

.method public hasMore()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLoadingMore()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mIsLoadingMore:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadMore()V
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    if-eqz v0, :cond_14

    .line 165
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mIsLoadingMore:Z

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->onContentChanged()V

    .line 169
    :cond_14
    return-void
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    .line 192
    :cond_14
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onAbandon()V

    .line 193
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    if-nez v0, :cond_17

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    .line 183
    :cond_17
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onStartLoading()V

    .line 184
    return-void
.end method

.method public resetPaging()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 208
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    if-eq v1, v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    mul-int/lit8 v0, v0, 0x10

    :cond_e
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 210
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 211
    iput v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    .line 212
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPaging:Z

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 213
    return-void
.end method
