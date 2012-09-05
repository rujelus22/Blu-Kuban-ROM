.class public Lcom/android/email/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/email/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 118
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

    sput-object v0, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 310
    iput-object p1, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 312
    return-void
.end method

.method public static getInstance()Lcom/android/email/ContactInfoCache;
    .registers 1

    .prologue
    .line 370
    sget-object v0, Lcom/android/email/ContactInfoCache;->sInstance:Lcom/android/email/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .registers 3
    .parameter "presence"

    .prologue
    .line 795
    if-eqz p1, :cond_7

    .line 797
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 801
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
    .line 360
    new-instance v0, Lcom/android/email/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/email/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/ContactInfoCache;->sInstance:Lcom/android/email/ContactInfoCache;

    .line 362
    return-void
.end method

.method private loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    .registers 13
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 518
    iget-wide v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    iget-object v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_d

    .line 575
    :cond_c
    :goto_c
    return-void

    .line 524
    :cond_d
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 526
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 534
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_c

    .line 543
    :try_start_21
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 547
    .local v1, b:Landroid/graphics/Bitmap;
    const/16 v6, 0x5a

    const/16 v7, 0x5a

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_2d} :catch_44

    move-result-object v5

    .line 557
    .end local v1           #b:Landroid/graphics/Bitmap;
    .local v5, rb:Landroid/graphics/Bitmap;
    :goto_2e
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 561
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v2, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 565
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_c

    .line 567
    :catch_3f
    move-exception v4

    .line 569
    .local v4, e:Ljava/io/IOException;
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_c

    .line 549
    .end local v2           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #rb:Landroid/graphics/Bitmap;
    :catch_44
    move-exception v4

    .line 551
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Email/cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v5, 0x0

    .restart local v5       #rb:Landroid/graphics/Bitmap;
    goto :goto_2e
.end method

.method private queryEmailDisplayName(Ljava/lang/String;)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 12
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 811
    new-instance v8, Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-direct {v8}, Lcom/android/email/ContactInfoCache$CacheEntry;-><init>()V

    .line 813
    .local v8, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 815
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 827
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5e

    .line 831
    :cond_21
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 833
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 837
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    .line 839
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    .line 841
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 845
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 849
    :cond_50
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 851
    iput-object v9, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 853
    invoke-direct {p0, v8, v7}, Lcom/android/email/ContactInfoCache;->loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_5b
    .catchall {:try_start_21 .. :try_end_5b} :catchall_5f

    .line 863
    .end local v9           #name:Ljava/lang/String;
    :cond_5b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 869
    :cond_5e
    return-object v8

    .line 863
    :catchall_5f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 4
    .parameter "numberOrEmail"
    .parameter "allowQuery"

    .prologue
    .line 380
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 388
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 12
    .parameter "email"
    .parameter "dataID"
    .parameter "allowQuery"

    .prologue
    const/4 v1, 0x0

    .line 717
    if-eqz p1, :cond_8

    .line 718
    invoke-virtual {p0, p1, p3}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 773
    :goto_7
    return-object v1

    .line 720
    :cond_8
    const-string v4, "Email/cache"

    const-string v5, "friendly is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-nez p2, :cond_19

    .line 722
    const-string v4, "Email/cache"

    const-string v5, "email addr is also null. return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 728
    :cond_19
    const-wide/16 v2, 0x0

    .line 732
    .local v2, id:J
    :try_start_1b
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_47

    move-result-wide v2

    .line 740
    :goto_1f
    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 742
    :try_start_22
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 744
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 746
    .local v1, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz p3, :cond_3a

    invoke-virtual {v1}, Lcom/android/email/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 748
    :cond_3a
    if-eqz p2, :cond_42

    iget-wide v6, v1, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_4f

    .line 750
    :cond_42
    monitor-exit v5

    goto :goto_7

    .line 765
    .end local v1           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :catchall_44
    move-exception v4

    monitor-exit v5
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_44

    throw v4

    .line 734
    :catch_47
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_1f

    .line 759
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4b
    if-nez p3, :cond_4f

    .line 761
    :try_start_4d
    monitor-exit v5

    goto :goto_7

    .line 765
    :cond_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_44

    .line 767
    invoke-virtual {p0, v2, v3}, Lcom/android/email/ContactInfoCache;->queryEmailDisplayNameByDataId(J)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 769
    .restart local v1       #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 771
    :try_start_57
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    monitor-exit v5

    goto :goto_7

    .line 775
    :catchall_5e
    move-exception v4

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_5e

    throw v4
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 6
    .parameter "email"
    .parameter "allowQuery"

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 673
    :try_start_3
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 675
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 677
    .local v0, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_1b

    invoke-virtual {v0}, Lcom/android/email/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_25

    .line 679
    :cond_1b
    monitor-exit v2

    .line 697
    .end local v0           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :goto_1c
    return-object v0

    .line 683
    :cond_1d
    if-nez p2, :cond_25

    .line 685
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1c

    .line 689
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

    .line 691
    invoke-direct {p0, p1}, Lcom/android/email/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 693
    .restart local v0       #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 695
    :try_start_2d
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    monitor-exit v2

    goto :goto_1c

    .line 699
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v1
.end method

.method public invalidateContact(Ljava/lang/String;)V
    .registers 5
    .parameter "emailOrNumber"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 344
    .local v0, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_11

    .line 346
    const/4 v1, 0x1

    #setter for: Lcom/android/email/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v0, v1}, Lcom/android/email/ContactInfoCache$CacheEntry;->access$002(Lcom/android/email/ContactInfoCache$CacheEntry;Z)Z

    .line 350
    :cond_11
    monitor-exit v2

    .line 352
    return-void

    .line 350
    .end local v0           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public queryContactInfoByEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .parameter "email"

    .prologue
    .line 612
    const-wide/16 v14, 0x0

    .line 613
    .local v14, id:J
    const/16 v16, 0x0

    .line 614
    .local v16, number:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 615
    .local v5, mContactInfoSelectionArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 616
    .local v2, PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    const-string v12, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    .line 619
    .local v12, EMAIL_SELECTION:Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 624
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_23

    .line 626
    const/4 v1, 0x0

    .line 657
    :goto_22
    return-object v1

    .line 630
    :cond_23
    :try_start_23
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 631
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_60

    move-result-wide v14

    .line 634
    :cond_2e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 638
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 639
    .local v7, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id= \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, Phone_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 644
    if-nez v13, :cond_65

    .line 646
    const/4 v1, 0x0

    goto :goto_22

    .line 634
    .end local v7           #uri:Landroid/net/Uri;
    .end local v9           #Phone_SELECTION:Ljava/lang/String;
    :catchall_60
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 650
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v9       #Phone_SELECTION:Ljava/lang/String;
    :cond_65
    :try_start_65
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 651
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_76

    move-result-object v16

    .line 654
    :cond_70
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 657
    goto :goto_22

    .line 654
    :catchall_76
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public queryEmailDisplayNameByDataId(J)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 875
    new-instance v7, Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-direct {v7}, Lcom/android/email/ContactInfoCache$CacheEntry;-><init>()V

    .line 877
    .local v7, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    sget-object v0, Lcom/android/email/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 879
    .local v1, Uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_59

    .line 895
    :cond_1c
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 897
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 901
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    .line 903
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    .line 905
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 907
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 909
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 913
    :cond_4b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 915
    iput-object v8, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 917
    invoke-direct {p0, v7, v6}, Lcom/android/email/ContactInfoCache;->loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_56
    .catchall {:try_start_1c .. :try_end_56} :catchall_5a

    .line 927
    .end local v8           #name:Ljava/lang/String;
    :cond_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_59
    return-object v7

    .line 927
    :catchall_5a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
