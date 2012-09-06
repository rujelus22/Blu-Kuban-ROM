.class public Ldbxyzptlk/j/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ldbxyzptlk/j/q;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Ldbxyzptlk/j/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/j/q;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Ldbxyzptlk/j/q;->b:Ldbxyzptlk/j/q;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    const-string v0, "prefs.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/q;->c:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldbxyzptlk/j/q;
    .registers 3
    .parameter

    .prologue
    .line 36
    const-class v1, Ldbxyzptlk/j/q;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ldbxyzptlk/j/q;->b:Ldbxyzptlk/j/q;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Ldbxyzptlk/j/q;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldbxyzptlk/j/q;->b:Ldbxyzptlk/j/q;

    .line 39
    :cond_e
    sget-object v0, Ldbxyzptlk/j/q;->b:Ldbxyzptlk/j/q;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    if-lez p2, :cond_a

    .line 59
    sget-object v0, Ldbxyzptlk/j/q;->a:Ljava/lang/String;

    const-string v1, "No migration necessary"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_9
    return-void

    .line 63
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/j/q;->c:Landroid/content/Context;

    const-string v1, "DropboxAccountPrefs"

    invoke-direct {p0, p1, v0, v1}, Ldbxyzptlk/j/q;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Ldbxyzptlk/j/q;->c:Landroid/content/Context;

    const-string v1, "DropboxPersistentPrefs"

    invoke-direct {p0, p1, v0, v1}, Ldbxyzptlk/j/q;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 70
    new-instance v0, Ldbxyzptlk/j/c;

    invoke-direct {v0, p1, p2, p3}, Ldbxyzptlk/j/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/j/b;

    .line 74
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 76
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_40

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/j/b;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 78
    :cond_40
    instance-of v5, v2, Ljava/lang/Float;

    if-eqz v5, :cond_54

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/j/b;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 80
    :cond_54
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_68

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/j/b;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 82
    :cond_68
    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_7c

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Ldbxyzptlk/j/b;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 84
    :cond_7c
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_8c

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/j/b;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 86
    :cond_8c
    instance-of v5, v2, Ljava/util/Set;

    if-eqz v5, :cond_9c

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/j/b;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 89
    :cond_9c
    sget-object v1, Ldbxyzptlk/j/q;->a:Ljava/lang/String;

    const-string v2, "Unknown type in preferences migration"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 92
    :cond_a5
    invoke-virtual {v0}, Ldbxyzptlk/j/b;->commit()Z

    .line 95
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ldbxyzptlk/j/q;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Ldbxyzptlk/j/q;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 55
    return-void
.end method
