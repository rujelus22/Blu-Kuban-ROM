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

.field private final mEventId:Ljava/lang/String;

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

.field private final mOwnerGaiaId:Ljava/lang/String;

.field private mPageable:Z

.field private final mPaging:Z

.field private final mPhotoOfUserGaiaId:Ljava/lang/String;

.field private final mPhotoUrl:Ljava/lang/String;

.field private final mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserGaiaId"
    .parameter "streamId"
    .parameter "activityId"
    .parameter "eventId"
    .parameter "photoUrl"
    .parameter "paging"
    .parameter "initialPageCount"

    .prologue
    const/4 v0, -0x1

    .line 93
    invoke-static/range {p3 .. p10}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getNotificationUri(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 73
    new-instance v1, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 80
    const/16 v1, 0x10

    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 95
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 96
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerGaiaId:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    .line 98
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    .line 99
    iput-object p9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mEventId:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserGaiaId:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    .line 102
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    .line 103
    iput-object p10, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoUrl:Ljava/lang/String;

    .line 104
    iput-boolean p11, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPaging:Z

    .line 105
    iput-boolean p11, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 106
    iput p12, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    .line 107
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v1, :cond_33

    if-eq p12, v0, :cond_33

    mul-int/lit8 v0, p12, 0x10

    :cond_33
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 109
    return-void
.end method

.method private doNetworkRequest()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 232
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mNetworkRequestMade:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v1

    if-nez v1, :cond_d

    .line 262
    :goto_c
    return-void

    .line 235
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mNetworkRequestMade:Z

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 238
    new-instance v0, Lcom/google/android/apps/plus/api/EventReadOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mEventId:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/EventReadOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 241
    .local v0, ero:Lcom/google/android/apps/plus/api/EventReadOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/EventReadOperation;->start()V

    goto :goto_c

    .line 243
    .end local v0           #ero:Lcom/google/android/apps/plus/api/EventReadOperation;
    :cond_26
    new-instance v7, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v7, v1, v2, v5, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 245
    .local v7, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    if-eqz v1, :cond_4c

    const-string v1, "profiles_scrapbook"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 246
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-virtual {v7, v1, v2, v4, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(Ljava/lang/String;Ljava/lang/String;II)V

    .line 258
    :goto_48
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    goto :goto_c

    .line 248
    :cond_4c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_56

    .line 249
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserGaiaId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(Ljava/lang/String;)V

    goto :goto_48

    .line 250
    :cond_56
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    if-eqz v1, :cond_66

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbum(Ljava/lang/String;J)V

    goto :goto_48

    .line 252
    :cond_66
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_70

    .line 253
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityPhotos(Ljava/lang/String;)V

    goto :goto_48

    .line 255
    :cond_70
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    const/16 v2, 0x32

    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    invoke-virtual {v7, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoConsumptionStream(Ljava/lang/String;II)V

    goto :goto_48
.end method

.method private static getNotificationUri(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 13
    .parameter "ownerGaiaId"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserId"
    .parameter "streamId"
    .parameter "activityId"
    .parameter "eventId"
    .parameter "photoUrl"

    .prologue
    .line 316
    if-eqz p4, :cond_28

    const-string v2, "profiles_scrapbook"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 317
    if-nez p0, :cond_15

    .line 318
    const-string v2, "PhotoCursorLoader"

    const-string v3, "Viewing stream photos w/o a valid owner GAIA ID"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    .line 351
    .local v1, notificationUri:Landroid/net/Uri;
    :goto_14
    return-object v1

    .line 321
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_15
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 322
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 324
    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 325
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_28
    if-eqz p6, :cond_31

    .line 326
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_EVENT_ID_URI:Landroid/net/Uri;

    invoke-static {v2, p6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 328
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_31
    if-eqz p3, :cond_3a

    .line 329
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    invoke-static {v2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 331
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_3a
    if-eqz p1, :cond_52

    .line 332
    if-nez p0, :cond_47

    .line 333
    const-string v2, "PhotoCursorLoader"

    const-string v3, "Viewing album photos w/o a valid owner GAIA ID"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x0

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 336
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_47
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 339
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_52
    if-eqz p2, :cond_63

    .line 340
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 342
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_63
    if-eqz p5, :cond_74

    .line 343
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 344
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 345
    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_74
    if-eqz p7, :cond_78

    .line 346
    const/4 v1, 0x0

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14

    .line 348
    .end local v1           #notificationUri:Landroid/net/Uri;
    :cond_78
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .restart local v1       #notificationUri:Landroid/net/Uri;
    goto :goto_14
.end method

.method private isLoadingCirclePhotos()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserGaiaId:Ljava/lang/String;

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

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_19

    .line 114
    const-string v7, "PhotoCursorLoader"

    const-string v8, "load NULL URI; return empty cursor"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v5, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getProjection()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 171
    :cond_18
    :goto_18
    return-object v5

    .line 118
    :cond_19
    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 119
    .local v3, loadLimit:I
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_b3

    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b3

    move v0, v7

    .line 120
    .local v0, changeSortOrder:Z
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, origSortOrder:Ljava/lang/String;
    if-nez v4, :cond_32

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 128
    :cond_32
    if-eqz v0, :cond_54

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_b6

    .end local v6           #sortOrder:Ljava/lang/String;
    :goto_3f
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

    .line 135
    :cond_54
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v5

    .line 137
    .local v5, returnCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_b9

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 138
    .local v1, cursorCount:I
    :goto_5e
    if-ne v1, v3, :cond_bb

    move v2, v7

    .line 139
    .local v2, cursorFull:Z
    :goto_61
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_bd

    if-nez v2, :cond_6d

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v9

    if-eqz v9, :cond_bd

    :cond_6d
    move v9, v7

    :goto_6e
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 140
    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    if-eq v3, v9, :cond_bf

    move v9, v7

    :goto_75
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mIsLoadingMore:Z

    .line 143
    if-eqz v1, :cond_7f

    if-nez v2, :cond_83

    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    if-eqz v9, :cond_83

    .line 144
    :cond_7f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v5, 0x0

    .line 149
    :cond_83
    if-nez v5, :cond_ac

    .line 151
    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->doNetworkRequest()V

    .line 157
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v5

    .line 159
    if-eqz v5, :cond_c1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 160
    :goto_94
    if-ne v1, v3, :cond_c3

    move v2, v7

    .line 162
    :goto_97
    iget v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    if-eq v1, v9, :cond_c5

    move v9, v7

    :goto_9c
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 163
    iget-boolean v9, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v9, :cond_c7

    if-nez v2, :cond_aa

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v9

    if-eqz v9, :cond_c7

    :cond_aa
    :goto_aa
    iput-boolean v7, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 167
    :cond_ac
    if-eqz v0, :cond_18

    .line 168
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_18

    .end local v0           #changeSortOrder:Z
    .end local v1           #cursorCount:I
    .end local v2           #cursorFull:Z
    .end local v4           #origSortOrder:Ljava/lang/String;
    .end local v5           #returnCursor:Landroid/database/Cursor;
    :cond_b3
    move v0, v8

    .line 119
    goto/16 :goto_25

    .line 132
    .restart local v0       #changeSortOrder:Z
    .restart local v4       #origSortOrder:Ljava/lang/String;
    .restart local v6       #sortOrder:Ljava/lang/String;
    :cond_b6
    const-string v6, ""

    goto :goto_3f

    .end local v6           #sortOrder:Ljava/lang/String;
    .restart local v5       #returnCursor:Landroid/database/Cursor;
    :cond_b9
    move v1, v8

    .line 137
    goto :goto_5e

    .restart local v1       #cursorCount:I
    :cond_bb
    move v2, v8

    .line 138
    goto :goto_61

    .restart local v2       #cursorFull:Z
    :cond_bd
    move v9, v8

    .line 139
    goto :goto_6e

    :cond_bf
    move v9, v8

    .line 140
    goto :goto_75

    :cond_c1
    move v1, v8

    .line 159
    goto :goto_94

    :cond_c3
    move v2, v8

    .line 160
    goto :goto_97

    :cond_c5
    move v9, v8

    .line 162
    goto :goto_9c

    :cond_c7
    move v7, v8

    .line 163
    goto :goto_aa
.end method

.method public getCurrentPage()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 215
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
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    const-string v1, "updates"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    const-string v0, "pending_status DESC,timestamp DESC"

    .line 297
    :goto_c
    return-object v0

    .line 288
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 289
    const-string v0, "pending_status DESC,timestamp ASC"

    goto :goto_c

    .line 290
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 291
    const-string v0, "pending_status DESC,timestamp ASC"

    goto :goto_c

    .line 292
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mEventId:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 293
    const-string v0, "timestamp ASC"

    goto :goto_c

    .line 294
    :cond_22
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->isLoadingCirclePhotos()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 295
    const-string v0, "pending_status DESC, show_order, timestamp DESC"

    goto :goto_c

    .line 297
    :cond_2b
    const-string v0, "pending_status DESC,timestamp DESC"

    goto :goto_c
.end method

.method final getLoaderUri()Landroid/net/Uri;
    .registers 11

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mOwnerGaiaId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAlbumId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoOfUserGaiaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mStreamId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mActivityId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mEventId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getNotificationUri(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 273
    .local v9, notificationUri:Landroid/net/Uri;
    if-eqz v9, :cond_1d

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v9, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v8

    .line 278
    .local v8, loaderUri:Landroid/net/Uri;
    :goto_1c
    return-object v8

    .line 276
    .end local v8           #loaderUri:Landroid/net/Uri;
    :cond_1d
    const/4 v8, 0x0

    .restart local v8       #loaderUri:Landroid/net/Uri;
    goto :goto_1c
.end method

.method public hasMore()Z
    .registers 2

    .prologue
    .line 185
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

.method public loadMore()V
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    if-eqz v0, :cond_14

    .line 177
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    add-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mIsLoadingMore:Z

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->onContentChanged()V

    .line 181
    :cond_14
    return-void
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    .line 204
    :cond_14
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onAbandon()V

    .line 205
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    if-nez v0, :cond_17

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mObserverRegistered:Z

    .line 195
    :cond_17
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onStartLoading()V

    .line 196
    return-void
.end method

.method public resetPaging()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 221
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    if-eq v1, v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mInitialPageCount:I

    mul-int/lit8 v0, v0, 0x10

    :cond_e
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mLoadLimit:I

    .line 223
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mHasMore:Z

    .line 224
    iput v2, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mCircleOffset:I

    .line 225
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPaging:Z

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->mPageable:Z

    .line 226
    return-void
.end method
