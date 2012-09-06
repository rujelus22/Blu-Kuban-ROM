.class public Lcom/google/android/gsf/Gservices;
.super Ljava/lang/Object;
.source "Gservices.java"


# static fields
.field public static final CONTENT_PREFIX_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE_PATTERN:Ljava/util/regex/Pattern;

.field public static final TRUE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedPrefixes:[Ljava/lang/String;

.field private static sResolver:Landroid/content/ContentResolver;

.field private static sVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 44
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static varargs bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 9
    .parameter "cr"
    .parameter "prefixes"

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 227
    .local v0, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/google/android/gsf/Gservices;

    monitor-enter v4

    .line 228
    :try_start_7
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 229
    sput-object p1, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .line 230
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 233
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_31
    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 234
    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "cr"

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    if-nez v0, :cond_1e

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 63
    sput-object p0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/google/android/gsf/Gservices$1;

    const-string v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/Gservices$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/Gservices$1;->start()V

    .line 88
    :cond_1e
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 195
    .end local p2
    :cond_e
    :goto_e
    return p2

    .line 187
    .restart local p2
    :cond_f
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 188
    const/4 p2, 0x1

    goto :goto_e

    .line 189
    :cond_1d
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 190
    const/4 p2, 0x0

    goto :goto_e

    .line 193
    :cond_2b
    const-string v1, "Gservices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 100
    :try_start_5
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 101
    sget-object v12, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 102
    .local v12, version:Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 103
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 104
    .local v11, value:Ljava/lang/String;
    if-eqz v11, :cond_1d

    move-object p2, v11

    .end local p2
    :cond_1d
    monitor-exit v1

    .line 135
    .end local v11           #value:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object p2

    .line 106
    .restart local p2
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_31

    .line 110
    sget-object v6, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_24
    if-ge v8, v9, :cond_34

    aget-object v10, v6, v8

    .line 111
    .local v10, prefix:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 106
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #prefix:Ljava/lang/String;
    .end local v12           #version:Ljava/lang/Object;
    .end local p2
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 116
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v12       #version:Ljava/lang/Object;
    .restart local p2
    :cond_34
    sget-object v0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_4b

    .line 118
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 123
    :cond_4b
    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    .restart local v11       #value:Ljava/lang/String;
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_6a

    .line 129
    :try_start_56
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne v12, v0, :cond_5f

    .line 130
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_67

    .line 133
    if-eqz v11, :cond_6f

    .line 135
    .end local v11           #value:Ljava/lang/String;
    :goto_62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object p2, v11

    goto :goto_1e

    .line 132
    .restart local v11       #value:Ljava/lang/String;
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 135
    .end local v11           #value:Ljava/lang/String;
    :catchall_6a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v11       #value:Ljava/lang/String;
    :cond_6f
    move-object v11, p2

    .line 133
    goto :goto_62
.end method

.method public static varargs getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .parameter "cr"
    .parameter "prefixes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 206
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 208
    .local v7, out:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_13

    .line 217
    :goto_12
    return-object v7

    .line 211
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 212
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_13

    .line 215
    :catchall_27
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method
