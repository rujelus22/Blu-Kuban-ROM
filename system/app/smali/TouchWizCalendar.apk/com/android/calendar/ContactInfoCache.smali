.class public Lcom/android/calendar/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/calendar/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheRebuildLock:Ljava/lang/Object;

.field private mCacheRebuilder:Ljava/lang/Thread;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEmailCacheInvalidated:Z

.field private mPhoneCacheInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 103
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    .line 139
    iput-boolean v1, p0, Lcom/android/calendar/ContactInfoCache;->mPhoneCacheInvalidated:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/calendar/ContactInfoCache;->mEmailCacheInvalidated:Z

    .line 210
    iput-object p1, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 211
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/ContactInfoCache;
    .registers 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/calendar/ContactInfoCache;->sInstance:Lcom/android/calendar/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .registers 3
    .parameter "presence"

    .prologue
    .line 536
    if-eqz p1, :cond_7

    .line 537
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 540
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 241
    new-instance v0, Lcom/android/calendar/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/calendar/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->sInstance:Lcom/android/calendar/ContactInfoCache;

    .line 242
    return-void
.end method

.method private loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    .registers 12
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 397
    iget-wide v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_d

    .line 418
    :cond_c
    :goto_c
    return-void

    .line 401
    :cond_d
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 403
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 405
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_c

    .line 406
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 410
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v2, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 412
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    .line 413
    const/4 v0, 0x0

    goto :goto_c

    .line 414
    :catch_37
    move-exception v4

    .line 415
    .local v4, e:Ljava/io/IOException;
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_c
.end method

.method private queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .registers 11
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 340
    new-instance v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    invoke-direct {v7, p0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;-><init>(Lcom/android/calendar/ContactInfoCache;)V

    .line 341
    .local v7, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iput-object p1, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v2

    .line 347
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 360
    .local v8, orderOfDisplay:I
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    iget-object v4, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_58

    .line 364
    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_57
    return-object v7

    .line 370
    :cond_58
    :try_start_58
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 371
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    .line 376
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 377
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    .line 378
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 380
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceText:Ljava/lang/String;

    .line 386
    invoke-direct {p0, v7, v6}, Lcom/android/calendar/ContactInfoCache;->loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_88
    .catchall {:try_start_58 .. :try_end_88} :catchall_8d

    .line 389
    :cond_88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v6, 0x0

    .line 391
    goto :goto_57

    .line 389
    :catchall_8d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v6, 0x0

    throw v0
.end method

.method private queryEmailDisplayName(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .registers 13
    .parameter "email"

    .prologue
    const/4 v2, 0x0

    .line 547
    new-instance v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    invoke-direct {v8, p0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;-><init>(Lcom/android/calendar/ContactInfoCache;)V

    .line 549
    .local v8, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v2

    .line 551
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 564
    .local v10, orderOfDisplay:I
    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 568
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_64

    .line 570
    :cond_2d
    :try_start_2d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 571
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 573
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    .line 575
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 582
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 584
    :cond_55
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 585
    iput-object v9, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 586
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/ContactInfoCache;->loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_60
    .catchall {:try_start_2d .. :try_end_60} :catchall_65

    .line 604
    .end local v9           #name:Ljava/lang/String;
    :cond_60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 605
    const/4 v7, 0x0

    .line 608
    :cond_64
    return-object v8

    .line 604
    :catchall_65
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 605
    const/4 v7, 0x0

    throw v0
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .registers 4
    .parameter "numberOrEmail"
    .parameter "allowQuery"

    .prologue
    .line 286
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 289
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/ContactInfoCache;->getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    goto :goto_a
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .registers 6
    .parameter "email"
    .parameter "allowQuery"

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 498
    :try_start_3
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 499
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    .line 500
    .local v0, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_1b

    invoke-virtual {v0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_25

    .line 501
    :cond_1b
    monitor-exit v2

    .line 511
    .end local v0           #entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    :goto_1c
    return-object v0

    .line 503
    :cond_1d
    if-nez p2, :cond_25

    .line 504
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1c

    .line 506
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 507
    invoke-direct {p0, p1}, Lcom/android/calendar/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 508
    .restart local v0       #entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 509
    :try_start_2d
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    monitor-exit v2

    goto :goto_1c

    .line 512
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .registers 6
    .parameter "number"
    .parameter "allowQuery"

    .prologue
    .line 311
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 313
    :try_start_7
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 314
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    .line 319
    .local v0, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_1f

    invoke-virtual {v0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_29

    .line 320
    :cond_1f
    monitor-exit v2

    .line 330
    .end local v0           #entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    :goto_20
    return-object v0

    .line 322
    :cond_21
    if-nez p2, :cond_29

    .line 323
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_20

    .line 325
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 326
    invoke-direct {p0, p1}, Lcom/android/calendar/ContactInfoCache;->queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 327
    .restart local v0       #entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 328
    :try_start_31
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit v2

    goto :goto_20

    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v1
.end method
