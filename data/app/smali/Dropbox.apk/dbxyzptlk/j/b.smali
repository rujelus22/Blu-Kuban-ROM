.class Ldbxyzptlk/j/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final b:Ldbxyzptlk/j/c;

.field private final c:Ljava/util/HashMap;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Ldbxyzptlk/j/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/j/b;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldbxyzptlk/j/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/j/c;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/j/b;->d:Z

    .line 27
    iput-object p1, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 42
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 43
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ldbxyzptlk/j/c;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public apply()V
    .registers 1

    .prologue
    .line 32
    invoke-virtual {p0}, Ldbxyzptlk/j/b;->commit()Z

    .line 33
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/j/b;->d:Z

    .line 38
    return-object p0
.end method

.method public commit()Z
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v4, v0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 57
    :try_start_c
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v6, v0, Ldbxyzptlk/j/c;->d:Ljava/util/HashMap;

    .line 58
    iget-boolean v0, p0, Ldbxyzptlk/j/b;->d:Z

    if-eqz v0, :cond_17

    .line 59
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 61
    :cond_17
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_21
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 64
    sget-object v8, Ldbxyzptlk/j/b;->e:Ljava/lang/Object;

    if-ne v0, v8, :cond_42

    .line 65
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 76
    :catchall_3f
    move-exception v0

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_3f

    throw v0

    .line 67
    :cond_42
    :try_start_42
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 70
    if-eqz v8, :cond_4e

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 71
    :cond_4e
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 76
    :cond_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_3f

    .line 78
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v0, v0, Ldbxyzptlk/j/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    if-nez v0, :cond_ee

    .line 81
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v0, v0, Ldbxyzptlk/j/c;->a:Ldbxyzptlk/j/q;

    invoke-virtual {v0}, Ldbxyzptlk/j/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v4, v0

    .line 86
    :goto_6b
    if-nez v2, :cond_70

    .line 87
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    :cond_70
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v6, v0, Ldbxyzptlk/j/c;->b:Ljava/lang/String;

    .line 92
    :try_start_74
    iget-boolean v0, p0, Ldbxyzptlk/j/b;->d:Z

    if-eqz v0, :cond_7e

    .line 93
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-virtual {v4, v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    :cond_7e
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 97
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 98
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_91
    :goto_91
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    const/4 v10, 0x0

    aput-object v1, v7, v10

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 102
    sget-object v10, Ldbxyzptlk/j/b;->e:Ljava/lang/Object;

    if-ne v0, v10, :cond_f6

    .line 103
    const-string v0, "pref_name= ?"

    invoke-virtual {v4, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 104
    if-eq v0, v3, :cond_f2

    .line 105
    sget-object v10, Ldbxyzptlk/j/b;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t delete "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " from "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    iget-object v11, v11, Ldbxyzptlk/j/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ": "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_74 .. :try_end_e6} :catchall_e7

    goto :goto_91

    .line 126
    :catchall_e7
    move-exception v0

    if-nez v2, :cond_ed

    .line 127
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_ed
    throw v0

    :cond_ee
    move v2, v3

    move-object v4, v0

    .line 83
    goto/16 :goto_6b

    .line 107
    :cond_f2
    :try_start_f2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 110
    :cond_f6
    const-string v10, "pref_name"

    invoke-virtual {v8, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "pref_value"

    invoke-static {v0}, Ldbxyzptlk/j/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "pref_name= ?"

    invoke-virtual {v4, v6, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 113
    if-nez v0, :cond_91

    .line 115
    const-string v0, "pref_name"

    invoke-virtual {v4, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v10, -0x1

    cmp-long v0, v0, v10

    if-nez v0, :cond_91

    .line 116
    sget-object v0, Ldbxyzptlk/j/b;->a:Ljava/lang/String;

    const-string v1, "insert failed"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 122
    :cond_121
    if-nez v2, :cond_126

    .line 123
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_126
    .catchall {:try_start_f2 .. :try_end_126} :catchall_e7

    .line 126
    :cond_126
    if-nez v2, :cond_12b

    .line 127
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    :cond_12b
    iget-object v0, p0, Ldbxyzptlk/j/b;->b:Ldbxyzptlk/j/c;

    invoke-virtual {v0, v5}, Ldbxyzptlk/j/c;->a(Ljava/util/Collection;)V

    .line 132
    return v3
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Ldbxyzptlk/j/b;->c:Ljava/util/HashMap;

    sget-object v1, Ldbxyzptlk/j/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object p0
.end method
