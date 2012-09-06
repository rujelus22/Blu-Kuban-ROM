.class public Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoViewIntentBuilder"
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field private mAllowPlusOne:Ljava/lang/Boolean;

.field private mCircleId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mForceLoadId:Ljava/lang/Long;

.field private mGaiaId:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

.field private mNotificationId:Ljava/lang/String;

.field private mPageHint:Ljava/lang/Integer;

.field private mPhotoId:Ljava/lang/Long;

.field private mPhotoIndex:Ljava/lang/Integer;

.field private mPhotoOfUserId:Ljava/lang/String;

.field private mPhotoOnly:Ljava/lang/Boolean;

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mPhotoUrl:Ljava/lang/String;

.field private mStreamId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2318
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    .line 2320
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2274
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 2444
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_d

    .line 2445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Account must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2448
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2449
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2451
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 2452
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2455
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumId:Ljava/lang/Long;

    if-eqz v1, :cond_3b

    .line 2456
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "album_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2459
    :cond_3b
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 2460
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "album_name"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2463
    :cond_48
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAllowPlusOne:Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    .line 2464
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "allow_plusone"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAllowPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2467
    :cond_59
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mCircleId:Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 2468
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "circle_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mCircleId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2471
    :cond_66
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 2472
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "display_name"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    :cond_73
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_80

    .line 2476
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "event_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    :cond_80
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mForceLoadId:Ljava/lang/Long;

    if-eqz v1, :cond_91

    .line 2480
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "refresh"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2483
    :cond_91
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_9e

    .line 2484
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "mediarefs"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2487
    :cond_9e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mNotificationId:Ljava/lang/String;

    if-eqz v1, :cond_ab

    .line 2488
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "notif_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mNotificationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2491
    :cond_ab
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_b8

    .line 2492
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2495
    :cond_b8
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPageHint:Ljava/lang/Integer;

    if-eqz v1, :cond_13a

    .line 2496
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "page_hint"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPageHint:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2501
    :goto_c9
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoId:Ljava/lang/Long;

    if-eqz v1, :cond_da

    .line 2502
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2505
    :cond_da
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_eb

    .line 2506
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_index"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2509
    :cond_eb
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    if-eqz v1, :cond_f8

    .line 2510
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photos_of_user_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2513
    :cond_f8
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOnly:Ljava/lang/Boolean;

    if-eqz v1, :cond_104

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOnly:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_108

    :cond_104
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_110

    .line 2514
    :cond_108
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "show_photo_only"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2517
    :cond_110
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_143

    .line 2518
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_ref"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2528
    :cond_11d
    :goto_11d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoUrl:Ljava/lang/String;

    if-eqz v1, :cond_12a

    .line 2529
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_url"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2532
    :cond_12a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mStreamId:Ljava/lang/String;

    if-eqz v1, :cond_137

    .line 2533
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "stream_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mStreamId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2536
    :cond_137
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v1

    .line 2498
    :cond_13a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "page_hint"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c9

    .line 2521
    :cond_143
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoId:Ljava/lang/Long;

    if-eqz v1, :cond_11d

    .line 2522
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 2524
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_ref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_11d
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "account"

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2325
    return-object p0
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "activityId"

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mActivityId:Ljava/lang/String;

    .line 2331
    return-object p0
.end method

.method public setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "albumId"

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumId:Ljava/lang/Long;

    .line 2337
    return-object p0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "albumName"

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAlbumName:Ljava/lang/String;

    .line 2343
    return-object p0
.end method

.method public setAllowPlusOne(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "allowPlusOne"

    .prologue
    .line 2348
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mAllowPlusOne:Ljava/lang/Boolean;

    .line 2349
    return-object p0
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "circleId"

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mCircleId:Ljava/lang/String;

    .line 2355
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mDisplayName:Ljava/lang/String;

    .line 2361
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "eventId"

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mEventId:Ljava/lang/String;

    .line 2367
    return-object p0
.end method

.method public setForceLoadId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "forceLoadId"

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mForceLoadId:Ljava/lang/Long;

    .line 2373
    return-object p0
.end method

.method public setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "gaiaId"

    .prologue
    .line 2378
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mGaiaId:Ljava/lang/String;

    .line 2379
    return-object p0
.end method

.method public setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "mediaRefs"

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    .line 2385
    return-object p0
.end method

.method public setNotificationId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "notificationId"

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mNotificationId:Ljava/lang/String;

    .line 2391
    return-object p0
.end method

.method public setPageHint(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "pageHint"

    .prologue
    .line 2396
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPageHint:Ljava/lang/Integer;

    .line 2397
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "photoId"

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoId:Ljava/lang/Long;

    .line 2403
    return-object p0
.end method

.method public setPhotoOfUserId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "photoOfUserId"

    .prologue
    .line 2414
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    .line 2415
    return-object p0
.end method

.method public setPhotoOnly(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "photoOnly"

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoOnly:Ljava/lang/Boolean;

    .line 2421
    return-object p0
.end method

.method public setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "photoRef"

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 2427
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "photoUrl"

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mPhotoUrl:Ljava/lang/String;

    .line 2433
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 2
    .parameter "streamId"

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->mStreamId:Ljava/lang/String;

    .line 2439
    return-object p0
.end method
