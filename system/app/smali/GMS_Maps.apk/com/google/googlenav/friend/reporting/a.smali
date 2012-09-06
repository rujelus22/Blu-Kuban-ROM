.class public abstract Lcom/google/googlenav/friend/reporting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:I

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/googlenav/friend/reporting/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/reporting/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/googlenav/friend/reporting/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/reporting/c;-><init>(Lcom/google/googlenav/friend/reporting/a;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->g:Lcom/google/googlenav/friend/reporting/c;

    .line 58
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    .line 59
    iput p4, p0, Lcom/google/googlenav/friend/reporting/a;->d:I

    .line 60
    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/a;->c:Ljava/lang/String;

    .line 61
    iput-wide p5, p0, Lcom/google/googlenav/friend/reporting/a;->e:J

    .line 62
    iput-object p7, p0, Lcom/google/googlenav/friend/reporting/a;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/reporting/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(JLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    .line 228
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    invoke-virtual {p3, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    :goto_c
    return-void

    .line 230
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 231
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 209
    const-string v0, "SELECT min(%s) FROM %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/a;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 211
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    const-string v1, "%s = ?"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/a;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 4
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT count(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/reporting/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 240
    :cond_6
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/content/ContentValues;
.end method

.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method public a(J)V
    .registers 6
    .parameter

    .prologue
    .line 181
    sget-object v1, Lcom/google/googlenav/friend/reporting/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->g:Lcom/google/googlenav/friend/reporting/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/friend/reporting/a;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 187
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_18} :catch_1a

    .line 192
    :try_start_18
    monitor-exit v1

    .line 193
    return-void

    .line 189
    :catch_1a
    move-exception v0

    .line 190
    new-instance v2, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v2, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 192
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v0
.end method

.method protected abstract a()Z
.end method

.method public b()Ljava/util/List;
    .registers 6

    .prologue
    .line 139
    sget-object v1, Lcom/google/googlenav/friend/reporting/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    invoke-direct {p0}, Lcom/google/googlenav/friend/reporting/a;->d()V

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->g:Lcom/google/googlenav/friend/reporting/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 148
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_4a
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_33} :catch_43

    move-result v4

    if-nez v4, :cond_4d

    .line 151
    :try_start_36
    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/reporting/a;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_3f

    .line 153
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4a
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_36 .. :try_end_3f} :catch_5b
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_3f} :catch_43

    .line 158
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_30

    .line 165
    :catch_43
    move-exception v0

    .line 166
    :try_start_44
    new-instance v2, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v2, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 168
    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4a

    throw v0

    .line 160
    :cond_4d
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_4a
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_59} :catch_43

    .line 164
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_4a

    return-object v3

    .line 155
    :catch_5b
    move-exception v4

    goto :goto_3f
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 98
    sget-object v1, Lcom/google/googlenav/friend/reporting/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_5
    invoke-direct {p0}, Lcom/google/googlenav/friend/reporting/a;->d()V

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/a;->g:Lcom/google/googlenav/friend/reporting/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/a;->a()Z

    move-result v2

    if-nez v2, :cond_35

    .line 105
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/googlenav/friend/reporting/a;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    :goto_1c
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/reporting/a;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iget v4, p0, Lcom/google/googlenav/friend/reporting/a;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_40

    .line 116
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/reporting/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_32
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_1c

    .line 125
    :catch_2b
    move-exception v0

    .line 126
    :try_start_2c
    new-instance v2, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v2, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 128
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v0

    .line 109
    :cond_35
    :try_start_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/friend/reporting/a;->e:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3, v0}, Lcom/google/googlenav/friend/reporting/a;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1c

    .line 120
    :cond_40
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/a;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_32
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_54} :catch_2b

    .line 124
    cmp-long v0, v2, v6

    if-lez v0, :cond_5b

    const/4 v0, 0x1

    :goto_59
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_32

    return v0

    :cond_5b
    const/4 v0, 0x0

    goto :goto_59
.end method

.method public c()V
    .registers 3

    .prologue
    .line 202
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/reporting/a;->a(J)V

    .line 203
    return-void
.end method
