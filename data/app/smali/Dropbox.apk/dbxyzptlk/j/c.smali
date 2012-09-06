.class public final Ldbxyzptlk/j/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field final a:Ldbxyzptlk/j/q;

.field final b:Ljava/lang/String;

.field final c:Landroid/database/sqlite/SQLiteDatabase;

.field final d:Ljava/util/HashMap;

.field private e:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    .line 46
    invoke-static {p1}, Ldbxyzptlk/j/q;->a(Landroid/content/Context;)Ldbxyzptlk/j/q;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/c;->a:Ldbxyzptlk/j/q;

    .line 47
    iput-object p2, p0, Ldbxyzptlk/j/c;->b:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/j/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    invoke-direct {p0, p2}, Ldbxyzptlk/j/c;->c(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    .line 56
    invoke-static {p2}, Ldbxyzptlk/j/q;->a(Landroid/content/Context;)Ldbxyzptlk/j/q;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/c;->a:Ldbxyzptlk/j/q;

    .line 57
    iput-object p3, p0, Ldbxyzptlk/j/c;->b:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Ldbxyzptlk/j/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    invoke-direct {p0, p3}, Ldbxyzptlk/j/c;->c(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Ldbxyzptlk/j/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Ldbxyzptlk/j/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ldbxyzptlk/j/c;->a:Ldbxyzptlk/j/q;

    invoke-virtual {v0}, Ldbxyzptlk/j/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    monitor-enter v2

    .line 186
    :try_start_4
    iget-object v0, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_12

    .line 191
    instance-of v3, v0, Ldbxyzptlk/j/e;

    if-nez v3, :cond_12

    .line 192
    monitor-exit v2

    .line 204
    :goto_11
    return-object v0

    .line 196
    :cond_12
    instance-of v3, v0, Ldbxyzptlk/j/e;

    if-eqz v3, :cond_2d

    .line 197
    check-cast v0, Ldbxyzptlk/j/e;

    iget-object v0, v0, Ldbxyzptlk/j/e;->a:Ljava/lang/String;

    .line 199
    :goto_1a
    if-nez v0, :cond_1f

    .line 200
    monitor-exit v2

    move-object v0, v1

    goto :goto_11

    .line 202
    :cond_1f
    invoke-virtual {p2, v0}, Ldbxyzptlk/j/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget-object v1, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v2

    goto :goto_11

    .line 205
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    move-object v0, v1

    goto :goto_1a
.end method

.method static a(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    const-string v4, "\\^"

    const-string v5, "^^"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v4, "~"

    const-string v5, "^t"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    if-nez v1, :cond_34

    .line 278
    const/16 v0, 0x7e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 282
    :goto_2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 283
    goto :goto_b

    .line 280
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f

    .line 284
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Ldbxyzptlk/j/c;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .parameter

    .prologue
    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 257
    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 258
    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 260
    const-string v5, "\\^t"

    const-string v6, "~"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    const-string v5, "\\^\\^"

    const-string v6, "^"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 266
    :cond_27
    return-object v1
.end method

.method private c(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 314
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 315
    invoke-direct {p0}, Ldbxyzptlk/j/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pref_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TEXT NOT NULL UNIQUE, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pref_value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Ldbxyzptlk/j/c;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 325
    iget-object v3, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    monitor-enter v3

    .line 326
    :try_start_55
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    iget-object v5, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ldbxyzptlk/j/e;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ldbxyzptlk/j/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 329
    :catchall_7e
    move-exception v0

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_55 .. :try_end_80} :catchall_7e

    throw v0

    :cond_81
    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7e

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 331
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v5, "prefs.init"

    invoke-direct {v0, v5}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v5, "name"

    invoke-virtual {v0, v5, p1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "dur"

    sub-long v1, v3, v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 332
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Collection;)V
    .registers 7
    .parameter

    .prologue
    .line 74
    iget-object v1, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    monitor-enter v1

    .line 75
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2f

    .line 77
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 79
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_1f

    .line 76
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 82
    :cond_32
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v1, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 101
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 106
    new-instance v0, Ldbxyzptlk/j/b;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/b;-><init>(Ldbxyzptlk/j/c;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 116
    invoke-direct {p0}, Ldbxyzptlk/j/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 123
    :try_start_a
    iget-object v1, p0, Ldbxyzptlk/j/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    move-result-object v1

    .line 125
    :goto_16
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 126
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_2a

    goto :goto_16

    .line 131
    :catchall_2a
    move-exception v0

    :goto_2b
    if-eqz v1, :cond_30

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v0

    .line 131
    :cond_31
    if-eqz v1, :cond_36

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_36
    return-object v9

    .line 131
    :catchall_37
    move-exception v0

    move-object v1, v8

    goto :goto_2b
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    sget-object v0, Ldbxyzptlk/j/f;->a:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 211
    if-nez v0, :cond_b

    .line 214
    :goto_a
    return p2

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_a
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 219
    sget-object v0, Ldbxyzptlk/j/f;->f:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 220
    if-nez v0, :cond_b

    .line 223
    :goto_a
    return p2

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_a
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    sget-object v0, Ldbxyzptlk/j/f;->b:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    if-nez v0, :cond_b

    .line 232
    :goto_a
    return p2

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_a
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 237
    sget-object v0, Ldbxyzptlk/j/f;->c:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 238
    if-nez v0, :cond_b

    .line 241
    :goto_a
    return-wide p2

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_a
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 246
    sget-object v0, Ldbxyzptlk/j/f;->d:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-nez v0, :cond_b

    .line 250
    :goto_a
    return-object p2

    :cond_b
    move-object p2, v0

    goto :goto_a
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 289
    sget-object v0, Ldbxyzptlk/j/f;->e:Ldbxyzptlk/j/f;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/j/c;->a(Ljava/lang/String;Ldbxyzptlk/j/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 290
    if-nez v0, :cond_b

    .line 293
    :goto_a
    return-object p2

    :cond_b
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_a
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter

    .prologue
    .line 299
    iget-object v1, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    monitor-enter v1

    .line 300
    :try_start_3
    iget-object v0, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter

    .prologue
    .line 307
    iget-object v1, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    monitor-enter v1

    .line 308
    :try_start_3
    iget-object v0, p0, Ldbxyzptlk/j/c;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
