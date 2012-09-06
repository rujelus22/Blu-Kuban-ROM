.class public Lcom/google/android/gsf/Gservices;
.super Ljava/lang/Object;
.source "Gservices.java"


# static fields
.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_CHANGED"

.field public static final CONTENT_PREFIX_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final FALSE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

.field public static final TAG:Ljava/lang/String; = "Gservices"

.field private static final TRUE_PATTERN:Ljava/util/regex/Pattern;

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

    .line 160
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

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

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    if-nez v0, :cond_1c

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 57
    sput-object p0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    .line 62
    new-instance v0, Lcom/google/android/gsf/Gservices$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/Gservices$1;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/Gservices$1;->start()V

    .line 77
    :cond_1c
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 177
    .end local p2
    :cond_e
    :goto_e
    return p2

    .line 169
    .restart local p2
    :cond_f
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 170
    const/4 p2, 0x1

    goto :goto_e

    .line 171
    :cond_1d
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 172
    const/4 p2, 0x0

    goto :goto_e

    .line 175
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

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_b

    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result v2

    .line 140
    .local v2, value:I
    :goto_a
    return v2

    .end local v2           #value:I
    :cond_b
    move v2, p2

    .line 136
    goto :goto_a

    .line 137
    :catch_d
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_a
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 8
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_b

    :try_start_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result-wide v2

    .line 157
    .local v2, value:J
    :goto_a
    return-wide v2

    .end local v2           #value:J
    :cond_b
    move-wide v2, p2

    .line 153
    goto :goto_a

    .line 154
    :catch_d
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 89
    :try_start_5
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 90
    sget-object v8, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 91
    .local v8, version:Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 92
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 93
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1d

    move-object p2, v7

    .end local p2
    :cond_1d
    monitor-exit v1

    .line 112
    .end local v7           #value:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object p2

    .line 95
    .restart local p2
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_4d

    .line 96
    sget-object v0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1e

    .line 100
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .restart local v7       #value:Ljava/lang/String;
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_53

    .line 106
    :try_start_3c
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne v8, v0, :cond_45

    .line 107
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_50

    .line 110
    if-eqz v7, :cond_58

    .line 112
    .end local v7           #value:Ljava/lang/String;
    :goto_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object p2, v7

    goto :goto_1e

    .line 95
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #version:Ljava/lang/Object;
    .end local p2
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    .line 109
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #version:Ljava/lang/Object;
    .restart local p2
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 112
    .end local v7           #value:Ljava/lang/String;
    :catchall_53
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #value:Ljava/lang/String;
    :cond_58
    move-object v7, p2

    .line 110
    goto :goto_48
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

    .line 188
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 190
    .local v7, out:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_13

    .line 199
    :goto_12
    return-object v7

    .line 193
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 194
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

    .line 197
    :catchall_27
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method public static getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .registers 3
    .parameter "cr"

    .prologue
    .line 208
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 211
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 212
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 213
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
