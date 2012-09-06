.class public LMb;
.super Ljava/lang/Object;
.source "DocListDatabase.java"


# instance fields
.field final a:LMc;

.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(LanD;Ljava/lang/String;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime LLZ;
        .end annotation
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 139
    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    :goto_c
    invoke-static {v1}, LafQ;->b(Z)V

    .line 140
    new-instance v1, LMc;

    invoke-direct {v1, v0, p2}, LMc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, LMb;->a:LMc;

    .line 141
    const-string v0, "DocListDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openHelper points on new database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 139
    :cond_2f
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private a(LMa;Landroid/content/ContentValues;Landroid/net/Uri;)J
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    .line 159
    :try_start_0
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, LMa;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 160
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_34

    .line 161
    const-string v2, "DocListDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, LMa;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_33
    :goto_33
    return-wide v0

    .line 163
    :cond_34
    if-eqz p3, :cond_33

    .line 164
    iget-object v2, p0, LMb;->a:LMc;

    invoke-static {p3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, LMc;->a(Landroid/net/Uri;)V
    :try_end_3f
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_33

    .line 167
    :catch_40
    move-exception v0

    .line 168
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, LMa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 308
    :catch_7
    move-exception v0

    .line 309
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    throw v0
.end method

.method public a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)J
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 255
    invoke-direct {p0, p3, p4, p5}, LMb;->a(LMa;Landroid/content/ContentValues;Landroid/net/Uri;)J

    move-result-wide p1

    .line 258
    :goto_a
    return-wide p1

    .line 257
    :cond_b
    invoke-virtual/range {p0 .. p5}, LMb;->a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)V

    goto :goto_a
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 296
    :catch_11
    move-exception v0

    .line 297
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    throw v0
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 363
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 365
    return-object v0

    .line 362
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()V
    .registers 3

    .prologue
    .line 319
    const-string v0, "DocListDatabase"

    const-string v1, "in openReadDatabase"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 321
    iget-object v0, p0, LMb;->a:LMc;

    invoke-virtual {v0}, LMc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 322
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p0, v0}, LMb;->a(Ljava/lang/String;)V

    .line 323
    return-void

    .line 320
    :cond_1d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, LafQ;->a(Z)V

    .line 187
    :try_start_c
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, LMa;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, LMa;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, p4, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    if-eq v0, v1, :cond_65

    .line 191
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Database updates failed"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_41} :catch_41

    .line 196
    :catch_41
    move-exception v0

    .line 197
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, LMa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    throw v0

    .line 193
    :cond_65
    if-eqz p5, :cond_6a

    .line 194
    :try_start_67
    invoke-virtual {p0, p5, p1, p2}, LMb;->a(Landroid/net/Uri;J)V
    :try_end_6a
    .catch Landroid/database/SQLException; {:try_start_67 .. :try_end_6a} :catch_41

    .line 200
    :cond_6a
    return-void
.end method

.method public a(JLMa;Landroid/net/Uri;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_54

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 229
    :try_start_1e
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, LMa;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, LMa;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    if-eqz p4, :cond_53

    .line 233
    iget-object v0, p0, LMb;->a:LMc;

    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, LMc;->a(Landroid/net/Uri;)V
    :try_end_53
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_53} :catch_56

    .line 239
    :cond_53
    return-void

    :cond_54
    move v0, v1

    .line 227
    goto :goto_8

    .line 235
    :catch_56
    move-exception v0

    .line 236
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, LMa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    throw v0
.end method

.method public a(LMa;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, LMa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_a

    .line 278
    return-void

    .line 274
    :catch_a
    move-exception v0

    .line 275
    const-string v1, "DocListDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, LMa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    throw v0
.end method

.method public a(Landroid/net/Uri;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 213
    const-string v0, "null uri"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2c

    const/4 v0, 0x1

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 215
    iget-object v0, p0, LMb;->a:LMc;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, LMc;->a(Landroid/net/Uri;)V

    .line 216
    return-void

    .line 214
    :cond_2c
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 398
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    return-void

    .line 397
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    goto :goto_5
.end method

.method public b()V
    .registers 3

    .prologue
    .line 330
    const-string v0, "DocListDatabase"

    const-string v1, "in openWriteDatabase"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 332
    iget-object v0, p0, LMb;->a:LMc;

    invoke-virtual {v0}, LMc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 333
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p0, v0}, LMb;->a(Ljava/lang/String;)V

    .line 334
    return-void

    .line 331
    :cond_1d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 346
    :goto_4
    return-void

    .line 343
    :cond_5
    const-string v0, "DocListDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_4
.end method

.method public d()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 374
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    return-void

    .line 373
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 382
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    return-void

    .line 381
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 406
    iget-object v0, p0, LMb;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 407
    return-void

    .line 405
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LMb;->a()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    :goto_7
    monitor-exit p0

    return-void

    .line 418
    :cond_9
    :try_start_9
    invoke-virtual {p0}, LMb;->c()V

    .line 419
    invoke-virtual {p0}, LMb;->b()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 414
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
