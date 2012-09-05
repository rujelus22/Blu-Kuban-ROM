.class public Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
.super Ljava/lang/Object;
.source "PhoneNumberCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/phonebook/PhoneNumberCache$1;,
        Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    }
.end annotation


# static fields
.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

.field private static final CALLER_ID_SELECTION_ICS:Ljava/lang/String; = "replace(replace(replace(replace(data1,\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\") LIKE \'%?\' AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MAX_CACHE_SIZE:I = 0xfa

.field private static final PHONE_MIME_TYPE_WHERE_CLAUSE:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumberCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private pbCacheObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const-class v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->pbCacheObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 147
    return-void
.end method

.method private ensureCached(Ljava/util/Map;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "*>;)I"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, phoneNumberList:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;*>;"
    const/4 v1, 0x0

    .line 172
    .local v1, count:I
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->getCache()Ljava/util/Map;

    move-result-object v0

    .line 173
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0xfa

    if-le v4, v5, :cond_1b

    .line 175
    sget-object v4, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v5, "ensureCached: cache has grown past maximum size, clearing it..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->invalidatePhoneNumberCache()V

    .line 177
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->getCache()Ljava/util/Map;

    move-result-object v0

    .line 180
    :cond_1b
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/swift/service/phonebook/PhoneNumber;

    .line 182
    .local v3, phoneNumber:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 185
    invoke-virtual {v3}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->lookup(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 190
    .end local v3           #phoneNumber:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_43
    return v1
.end method

.method private getCache()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->cache:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->cache:Ljava/util/Map;

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->cache:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    .registers 3

    .prologue
    .line 158
    const-class v2, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 160
    :cond_f
    new-instance v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-direct {v0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;-><init>()V

    .line 161
    .local v0, cache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance:Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_27

    move-object v1, v0

    .line 165
    .end local v0           #cache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    :goto_1c
    monitor-exit v2

    return-object v1

    :cond_1e
    :try_start_1e
    sget-object v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 158
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private lookup(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .registers 14
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    .line 195
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 201
    .local v7, cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    :try_start_7
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->useIcsMethod()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1e

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_1e
    const-string v0, "replace(replace(replace(replace(data1,\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\") LIKE \'%?\' AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const-string v1, "?"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, selection:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    :goto_37
    if-nez v6, :cond_69

    .line 223
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v1, "lookup: cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_9a

    .line 243
    if-eqz v6, :cond_45

    :goto_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_45
    :goto_45
    return-object v8

    .line 216
    .end local v3           #selection:Ljava/lang/String;
    :cond_46
    :try_start_46
    const-string v0, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

    const-string v1, "+"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3       #selection:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_37

    .line 227
    :cond_69
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, nameCol:I
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 229
    .local v9, idCol:I
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 231
    .local v11, phoneNumberCol:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 233
    new-instance v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;-><init>(Lcom/samsung/swift/service/phonebook/PhoneNumberCache;Lcom/samsung/swift/service/phonebook/PhoneNumberCache$1;)V
    :try_end_87
    .catchall {:try_start_46 .. :try_end_87} :catchall_9a

    .line 234
    .end local v7           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .local v8, cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    :try_start_87
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->name:Ljava/lang/String;

    .line 235
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_a4

    .line 243
    if-eqz v6, :cond_98

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_98
    move-object v7, v8

    .line 246
    .end local v8           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .restart local v7       #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    goto :goto_45

    .line 243
    .end local v3           #selection:Ljava/lang/String;
    .end local v9           #idCol:I
    .end local v10           #nameCol:I
    .end local v11           #phoneNumberCol:I
    :catchall_9a
    move-exception v0

    :goto_9b
    if-eqz v6, :cond_a0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw v0

    .restart local v3       #selection:Ljava/lang/String;
    .restart local v9       #idCol:I
    .restart local v10       #nameCol:I
    .restart local v11       #phoneNumberCol:I
    :cond_a1
    if-eqz v6, :cond_45

    goto :goto_42

    .end local v7           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .restart local v8       #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    :catchall_a4
    move-exception v0

    move-object v7, v8

    .end local v8           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .restart local v7       #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    goto :goto_9b
.end method

.method private useIcsMethod()Z
    .registers 3

    .prologue
    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getContactId(Lcom/samsung/swift/service/phonebook/PhoneNumber;)Ljava/lang/Integer;
    .registers 6
    .parameter "pn"

    .prologue
    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v1, pnMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-direct {p0, v1}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->ensureCached(Ljava/util/Map;)I

    .line 256
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->getCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;

    .line 257
    .local v0, ci:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    if-nez v0, :cond_1e

    .line 258
    const/4 v2, 0x0

    .line 260
    :goto_1d
    return-object v2

    :cond_1e
    new-instance v2, Ljava/lang/Integer;

    iget v3, v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d
.end method

.method protected declared-synchronized invalidatePhoneNumberCache()V
    .registers 3

    .prologue
    .line 360
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v1, "Invalidating phone number cache "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->cache:Ljava/util/Map;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 362
    monitor-exit p0

    return-void

    .line 360
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public populateCallLogList(Ljava/util/Map;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/swift/service/telephony/CallLogEntry;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, phoneNumberCallLogs:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateCallLogList"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->ensureCached(Ljava/util/Map;)I

    move-result v4

    .line 308
    .local v4, count:I
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->getCache()Ljava/util/Map;

    move-result-object v0

    .line 311
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 313
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;

    .line 315
    .local v1, cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    if-eqz v1, :cond_17

    .line 320
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    .local v3, callLogEntryList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/swift/service/telephony/CallLogEntry;

    .line 324
    .local v2, callLogEntry:Lcom/samsung/swift/service/telephony/CallLogEntry;
    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->flags()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5d

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->flags()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-nez v8, :cond_5d

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->flags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_9a

    .line 328
    :cond_5d
    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->destinationContactId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6d

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->destinationContactId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7d

    .line 330
    :cond_6d
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateCallLogList filling in missing destination contact id"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationContactId(Ljava/lang/String;)V

    .line 333
    :cond_7d
    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->destinationName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8d

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->destinationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_39

    .line 335
    :cond_8d
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateCallLogList filling in missing destination name"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    goto :goto_39

    .line 341
    :cond_9a
    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->sourceContactId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_aa

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->sourceContactId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_ba

    .line 343
    :cond_aa
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateCallLogList filling in missing source contact id"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceContactId(Ljava/lang/String;)V

    .line 346
    :cond_ba
    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->sourceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ca

    invoke-virtual {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;->sourceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_39

    .line 348
    :cond_ca
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateCallLogList filling in missing source name"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    goto/16 :goto_39

    .line 355
    .end local v1           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .end local v2           #callLogEntry:Lcom/samsung/swift/service/telephony/CallLogEntry;
    .end local v3           #callLogEntryList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_d8
    return v4
.end method

.method public populateMessageList(Ljava/util/Map;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/swift/service/messaging/Message;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->LOGTAG:Ljava/lang/String;

    const-string v9, "populateMessageList"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->ensureCached(Ljava/util/Map;)I

    move-result v2

    .line 269
    .local v2, count:I
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->getCache()Ljava/util/Map;

    move-result-object v0

    .line 272
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 274
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;

    .line 276
    .local v1, cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    if-eqz v1, :cond_17

    .line 281
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 283
    .local v7, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/swift/service/messaging/Message;

    .line 286
    .local v6, message:Lcom/samsung/swift/service/messaging/Message;
    invoke-virtual {v6}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_63

    .line 288
    iget v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/swift/service/messaging/Message;->setSourceContactId(Ljava/lang/String;)V

    .line 289
    iget-object v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/samsung/swift/service/messaging/Message;->setSourceName(Ljava/lang/String;)V

    goto :goto_39

    .line 293
    :cond_63
    iget v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->contactId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/swift/service/messaging/Message;->setDestinationContactId(Ljava/lang/String;)V

    .line 294
    iget-object v8, v1, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/samsung/swift/service/messaging/Message;->setDestinationName(Ljava/lang/String;)V

    goto :goto_39

    .line 299
    .end local v1           #cacheItem:Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #message:Lcom/samsung/swift/service/messaging/Message;
    .end local v7           #messageList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    :cond_72
    return v2
.end method
