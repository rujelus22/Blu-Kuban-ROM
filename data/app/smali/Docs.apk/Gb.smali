.class public LGb;
.super Ljava/lang/Object;
.source "ClientFlagDatabaseImpl.java"

# interfaces
.implements LFZ;


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>(LanD;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, LGb;->a:Z

    .line 94
    iput-object p1, p0, LGb;->a:LanD;

    .line 95
    return-void
.end method


# virtual methods
.method public a(LFX;)V
    .registers 8
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, LGb;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 101
    new-instance v1, LGc;

    invoke-direct {v1, v0}, LGc;-><init>(Landroid/content/Context;)V

    .line 103
    :try_start_d
    invoke-virtual {v1}, LGc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_10} :catch_58

    move-result-object v2

    .line 106
    :try_start_11
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_53

    .line 111
    :try_start_14
    invoke-virtual {v1, v2}, LGc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    invoke-virtual {v1, v2}, LGc;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    monitor-enter p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4e

    .line 115
    :try_start_1b
    invoke-interface {p1}, LFX;->a()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 118
    const-string v4, "KEY"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, "VALUE"

    const-string v5, ""

    invoke-interface {p1, v0, v5}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "ClientFlag"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_23

    .line 123
    :catchall_4b
    move-exception v0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 127
    :catchall_4e
    move-exception v0

    :try_start_4f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 130
    :catchall_53
    move-exception v0

    :try_start_54
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_58} :catch_58

    .line 132
    :catch_58
    move-exception v0

    .line 133
    new-instance v1, LGa;

    const-string v2, "Unable to save client flags:"

    invoke-direct {v1, v2, v0}, LGa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_61
    :try_start_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_4b

    .line 125
    :try_start_62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_4e

    .line 127
    :try_start_65
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_53

    .line 130
    :try_start_68
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_6b} :catch_58

    .line 135
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, LGb;->a:Z

    return v0
.end method

.method public b(LFX;)V
    .registers 12
    .parameter

    .prologue
    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, LGb;->a:Z

    .line 141
    iget-object v1, p0, LGb;->a:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 146
    :try_start_b
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 147
    new-instance v2, LGc;

    invoke-direct {v2, v1}, LGc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, LGc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_18} :catch_49

    move-result-object v1

    .line 150
    :try_start_19
    const-string v2, "ClientFlag"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_44

    move-result-object v3

    .line 152
    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 153
    const-string v2, "KEY"

    invoke-static {v3, v2}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string v4, "VALUE"

    invoke-static {v3, v4}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    if-eqz v2, :cond_25

    if-eqz v4, :cond_25

    .line 156
    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3f

    goto :goto_25

    .line 160
    :catchall_3f
    move-exception v2

    :try_start_40
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    .line 163
    :catchall_44
    move-exception v2

    :try_start_45
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_49} :catch_49

    .line 167
    :catch_49
    move-exception v1

    .line 168
    new-instance v2, LGa;

    const-string v3, "Unable to load client flags:"

    invoke-direct {v2, v3, v1}, LGa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    :cond_52
    :try_start_52
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_44

    .line 163
    :try_start_55
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_58} :catch_49

    .line 173
    if-eqz v9, :cond_88

    .line 174
    monitor-enter p1

    .line 175
    :try_start_5b
    invoke-interface {p1}, LFX;->b()V

    .line 176
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 179
    :catchall_84
    move-exception v1

    monitor-exit p1
    :try_end_86
    .catchall {:try_start_5b .. :try_end_86} :catchall_84

    throw v1

    :cond_87
    :try_start_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_84

    .line 181
    :cond_88
    return-void
.end method
