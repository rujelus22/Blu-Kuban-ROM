.class public Lcom/google/android/apps/plus/fragments/EventLocationFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "EventLocationFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EventLocationFragment$EventLocationAdapter;,
        Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/EsCursorAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final LOCATION_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCurrentLatitude:D

.field private mCurrentLongitude:D

.field private mInitialQuery:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;

.field private mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

.field private mLocationText:Landroid/widget/EditText;

.field private mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->LOCATION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 482
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EventLocationFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EventLocationFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EventLocationFragment;DD)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->setCurrentLocation(DD)V

    return-void
.end method

.method private addLocationListener()V
    .registers 9

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_19

    .line 379
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 383
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 388
    :goto_21
    return-void

    .line 386
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->init()V

    goto :goto_21
.end method

.method private buildLocationQuery()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->isCurrentLocationKnown()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 247
    new-instance v0, Landroid/location/Location;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, location:Landroid/location/Location;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 249
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 250
    new-instance v1, Lcom/google/android/apps/plus/api/LocationQuery;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    .line 254
    .end local v0           #location:Landroid/location/Location;
    :goto_29
    return-void

    .line 252
    :cond_2a
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    goto :goto_29
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private isCurrentLocationKnown()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 224
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 399
    :cond_c
    return-void
.end method

.method private runQuery()V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v0, :cond_1a

    .line 258
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I

    .line 261
    :cond_1a
    return-void
.end method

.method private setCurrentLocation(DD)V
    .registers 16
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->isCurrentLocationKnown()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 198
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 199
    .local v8, results:[F
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 201
    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x4348

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 221
    .end local v8           #results:[F
    :goto_1b
    return-void

    .line 206
    :cond_1c
    iput-wide p1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    .line 207
    iput-wide p3, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 210
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 211
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "event.current.latitude"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v0, "event.current.longitude"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_52

    .line 214
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    :goto_4b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->buildLocationQuery()V

    .line 220
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->runQuery()V

    goto :goto_1b

    .line 216
    :cond_52
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4b
.end method

.method private setQueryString(Ljava/lang/String;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 236
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->updateAdapter(Landroid/database/Cursor;)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->buildLocationQuery()V

    .line 240
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->runQuery()V

    .line 243
    :cond_1a
    return-void
.end method

.method private updateAdapter(Landroid/database/Cursor;)V
    .registers 14
    .parameter "locations"

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v6, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->LOCATION_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 266
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v2, 0x1

    .line 267
    .local v2, id:I
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 268
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #id:I
    .local v3, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const v8, 0x7f08040e

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const v8, 0x7f08040f

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    move v2, v3

    .line 306
    .end local v3           #id:I
    .restart local v2       #id:I
    :goto_40
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 307
    return-void

    .line 274
    :cond_46
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #id:I
    .restart local v3       #id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const v8, 0x7f080410

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 280
    if-eqz p1, :cond_c8

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_c8

    move v2, v3

    .line 283
    .end local v3           #id:I
    .restart local v2       #id:I
    :cond_80
    const/4 v4, 0x0

    .line 284
    .local v4, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 285
    .local v5, locationBytes:[B
    if-eqz v5, :cond_8c

    .line 287
    :try_start_88
    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_8b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_88 .. :try_end_8b} :catch_c3

    move-result-object v4

    .line 293
    :cond_8c
    :goto_8c
    if-eqz v4, :cond_bb

    .line 294
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #id:I
    .restart local v3       #id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object v5, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    move v2, v3

    .line 301
    .end local v3           #id:I
    .restart local v2       #id:I
    :cond_bb
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_80

    goto/16 :goto_40

    .line 288
    :catch_c3
    move-exception v1

    .line 289
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_8c

    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v2           #id:I
    .end local v4           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v5           #locationBytes:[B
    .restart local v3       #id:I
    :cond_c8
    move v2, v3

    .end local v3           #id:I
    .restart local v2       #id:I
    goto/16 :goto_40
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 185
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->isCurrentLocationKnown()Z

    move-result v1

    if-nez v1, :cond_35

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "event.current.latitude"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 143
    const-string v1, "event.current.latitude"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    .line 144
    const-string v1, "event.current.longitude"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    .line 147
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_20

    .line 114
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    .line 115
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    .line 116
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->buildLocationQuery()V

    .line 120
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 121
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    if-nez v0, :cond_23

    const-string v7, "no_location_stream_key"

    .line 354
    .local v7, queryKey:Ljava/lang/String;
    :goto_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/content/EsProvider;->buildLocationQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 355
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 352
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #queryKey:Ljava/lang/String;
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationQuery:Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v7

    goto :goto_7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 155
    const v1, 0x7f03003a

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/fragments/EventLocationFragment$EventLocationAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/fragments/EventLocationFragment$EventLocationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationText:Landroid/widget/EditText;

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mInitialQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v6, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 316
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 317
    .local v4, place:Lcom/google/api/services/plusi/model/Place;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 318
    .local v5, type:I
    packed-switch v5, :pswitch_data_3a

    .line 330
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 332
    .local v3, locationBytes:[B
    :try_start_16
    invoke-static {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    .line 333
    .local v2, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v2}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocationToPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/api/services/plusi/model/Place;
    :try_end_1d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_16 .. :try_end_1d} :catch_34

    move-result-object v4

    .line 342
    .end local v2           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v3           #locationBytes:[B
    :goto_1e
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;

    if-eqz v6, :cond_27

    .line 343
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;

    invoke-interface {v6, v4}, Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;->onLocationSelected(Lcom/google/api/services/plusi/model/Place;)V

    .line 345
    :cond_27
    return-void

    .line 320
    :pswitch_28
    const/4 v4, 0x0

    .line 321
    goto :goto_1e

    .line 324
    :pswitch_2a
    new-instance v4, Lcom/google/api/services/plusi/model/Place;

    .end local v4           #place:Lcom/google/api/services/plusi/model/Place;
    invoke-direct {v4}, Lcom/google/api/services/plusi/model/Place;-><init>()V

    .line 325
    .restart local v4       #place:Lcom/google/api/services/plusi/model/Place;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    iput-object v6, v4, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    goto :goto_1e

    .line 334
    .restart local v3       #locationBytes:[B
    :catch_34
    move-exception v1

    .line 335
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 336
    const/4 v4, 0x0

    goto :goto_1e

    .line 318
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->updateAdapter(Landroid/database/Cursor;)V

    .line 365
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 416
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 418
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->removeLocationListener()V

    .line 419
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 408
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->addLocationListener()V

    .line 409
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "latitude"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLatitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 131
    const-string v0, "longitude"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mCurrentLongitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 132
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mLocationText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->setQueryString(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setInitialQueryString(Ljava/lang/String;)V
    .registers 2
    .parameter "initialQuery"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mInitialQuery:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setOnLocationSelectedListener(Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;

    .line 171
    return-void
.end method
