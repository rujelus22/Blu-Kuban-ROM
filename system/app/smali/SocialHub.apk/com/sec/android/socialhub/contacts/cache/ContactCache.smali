.class public Lcom/sec/android/socialhub/contacts/cache/ContactCache;
.super Ljava/lang/Object;
.source "ContactCache.java"


# static fields
.field private static mInstance:Lcom/sec/android/socialhub/contacts/cache/ContactCache;


# instance fields
.field private mAddrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContactObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mInstance:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCache$1;-><init>(Lcom/sec/android/socialhub/contacts/cache/ContactCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContactObserver:Landroid/database/ContentObserver;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method private getContactFromProvider(Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;)V
    .registers 11
    .parameter "cache"

    .prologue
    const/4 v8, 0x1

    .line 188
    const/4 v6, 0x0

    .line 192
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_71

    .line 197
    const-string v0, "ContactCache"

    const-string v2, "getContactFromProvider()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_5c

    .line 201
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_66

    .line 219
    :goto_55
    if-eqz v6, :cond_5b

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v6, 0x0

    .line 225
    .end local v1           #uri:Landroid/net/Uri;
    :cond_5b
    :goto_5b
    return-void

    .line 205
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_5c
    :try_start_5c
    const-string v0, "ContactCache"

    const-string v2, "getContactFromProvider()"

    const-string v3, "cursor move first is failed."

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_66

    goto :goto_55

    .line 213
    .end local v1           #uri:Landroid/net/Uri;
    :catch_66
    move-exception v7

    .line 215
    .local v7, e:Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7b

    .line 219
    if-eqz v6, :cond_5b

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v6, 0x0

    goto :goto_5b

    .line 210
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_71
    :try_start_71
    const-string v0, "ContactCache"

    const-string v2, "getContactFromProvider()"

    const-string v3, "cursor is null!!"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_66

    goto :goto_55

    .line 219
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_7b
    move-exception v0

    if-eqz v6, :cond_82

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v6, 0x0

    :cond_82
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/contacts/cache/ContactCache;
    .registers 3
    .parameter

    .prologue
    .line 44
    const-class v1, Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    monitor-enter v1

    .line 46
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mInstance:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mInstance:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    .line 50
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 51
    sget-object v0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mInstance:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    return-object v0

    .line 50
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public destroyCache()V
    .registers 4

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 93
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 100
    :cond_f
    :goto_f
    return-void

    .line 96
    :catch_10
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public getContact(J)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 12
    .parameter "contact_id"

    .prologue
    const/4 v8, 0x1

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 155
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-object v1, v0

    .line 157
    if-nez v1, :cond_46

    .line 159
    new-instance v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    invoke-direct {v2}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;-><init>()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_69

    .line 160
    .end local v1           #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .local v2, model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :try_start_1a
    iput-wide p1, v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    .line 161
    const/4 v3, 0x1

    iput v3, v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    .line 162
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "ContactCache"

    const-string v5, "getContact()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add contact cache. id - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_6c

    move-object v1, v2

    .line 168
    .end local v2           #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .restart local v1       #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :cond_46
    :try_start_46
    const-string v3, "ContactCache"

    const-string v5, "getContact()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id -  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v3, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    if-ne v3, v8, :cond_67

    .line 173
    invoke-direct {p0, v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getContactFromProvider(Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;)V

    .line 175
    :cond_67
    monitor-exit v4

    .line 177
    return-object v1

    .line 175
    :catchall_69
    move-exception v3

    :goto_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_69

    throw v3

    .end local v1           #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .restart local v2       #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :catchall_6c
    move-exception v3

    move-object v1, v2

    .end local v2           #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .restart local v1       #model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    goto :goto_6a
.end method

.method public getContact(Ljava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 13
    .parameter "NumberOrEmail"

    .prologue
    const-wide/16 v6, -0x1

    .line 235
    const/4 v3, 0x0

    .line 237
    .local v3, contact_id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 239
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    .line 240
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1c

    .line 241
    if-eqz v3, :cond_1f

    .line 243
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getContact(J)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v1

    .line 289
    :goto_1b
    return-object v1

    .line 240
    :catchall_1c
    move-exception v5

    :try_start_1d
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v5

    .line 247
    :cond_1f
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sec/android/socialhub/util/ContactUtil;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;

    move-result-object v4

    .line 249
    .local v4, info:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    new-instance v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    invoke-direct {v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;-><init>()V

    .line 251
    .local v1, cache:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    if-nez v4, :cond_9e

    .line 253
    const/4 v5, 0x1

    iput v5, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    .line 254
    iput-wide v6, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    .line 255
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    .line 265
    :goto_34
    const-string v5, "ContactCache"

    const-string v6, "getContact()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact id - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v6, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 269
    :try_start_53
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_b4

    .line 272
    iget-object v6, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 274
    :try_start_62
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    .line 276
    .local v2, contact:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    if-nez v2, :cond_b7

    .line 278
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v5, "ContactCache"

    const-string v7, "getContact()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add contact cache by number or email. id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_99
    monitor-exit v6

    goto :goto_1b

    .end local v2           #contact:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :catchall_9b
    move-exception v5

    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_62 .. :try_end_9d} :catchall_9b

    throw v5

    .line 259
    :cond_9e
    const/4 v5, 0x0

    iput v5, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    .line 260
    iget-object v5, v4, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    if-nez v5, :cond_ad

    move-wide v5, v6

    :goto_a6
    iput-wide v5, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    .line 261
    iget-object v5, v4, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->display_name:Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    goto :goto_34

    .line 260
    :cond_ad
    iget-object v5, v4, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_a6

    .line 270
    :catchall_b4
    move-exception v5

    :try_start_b5
    monitor-exit v6
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v5

    .line 283
    .restart local v2       #contact:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :cond_b7
    :try_start_b7
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v5, "ContactCache"

    const-string v7, "getContact()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact_id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", stale - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_b7 .. :try_end_f5} :catchall_9b

    goto :goto_99
.end method

.method public initializeCache()V
    .registers 6

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 78
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 85
    :cond_12
    :goto_12
    return-void

    .line 81
    :catch_13
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public invalidateContact()V
    .registers 9

    .prologue
    .line 107
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 109
    :try_start_3
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mAddrMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 110
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .line 112
    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 114
    :try_start_c
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 116
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v3, :cond_22

    .line 118
    const-string v4, "ContactCache"

    const-string v6, "invalidateContact()"

    const-string v7, "Set return null."

    invoke-static {v4, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_42

    .line 141
    :goto_1e
    return-void

    .line 110
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_1f
    move-exception v4

    :try_start_20
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v4

    .line 121
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_22
    :try_start_22
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 123
    .local v1, contact_id:Ljava/lang/Long;
    if-eqz v1, :cond_4f

    .line 125
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    .line 126
    .local v0, cache:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    if-eqz v0, :cond_45

    .line 128
    const/4 v4, 0x1

    iput v4, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    goto :goto_26

    .line 140
    .end local v0           #cache:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .end local v1           #contact_id:Ljava/lang/Long;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_42
    move-exception v4

    monitor-exit v5
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_42

    throw v4

    .line 132
    .restart local v0       #cache:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .restart local v1       #contact_id:Ljava/lang/Long;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_45
    :try_start_45
    const-string v4, "ContactCache"

    const-string v6, "invalidateContact()"

    const-string v7, "ContactCacheModel is null!!"

    invoke-static {v4, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 137
    .end local v0           #cache:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :cond_4f
    const-string v4, "ContactCache"

    const-string v6, "invalidateContact()"

    const-string v7, "contact_id is null"

    invoke-static {v4, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 140
    .end local v1           #contact_id:Ljava/lang/Long;
    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_42

    goto :goto_1e
.end method
