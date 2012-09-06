.class public LaS/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:LaS/j;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    if-eqz p2, :cond_15

    .line 98
    new-instance v0, LaS/k;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaS/k;-><init>(LaS/j;LY/c;Landroid/content/Context;)V

    invoke-virtual {v0}, LaS/k;->g()V

    .line 108
    :goto_14
    return-void

    .line 105
    :cond_15
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 106
    new-instance v0, LaS/n;

    invoke-direct {v0, p1}, LaS/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, LaS/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_14
.end method

.method private a(Landroid/database/Cursor;)LaS/g;
    .registers 8
    .parameter

    .prologue
    .line 417
    new-instance v0, LaS/g;

    const-string v1, "cDocid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneNumber"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const-string v4, "phoneTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2, v3}, LaS/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public static a()LaS/j;
    .registers 1

    .prologue
    .line 142
    sget-object v0, LaS/j;->b:LaS/j;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    sget-object v0, LaS/j;->b:LaS/j;

    if-nez v0, :cond_c

    .line 115
    new-instance v0, LaS/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LaS/j;-><init>(Landroid/content/Context;Z)V

    sput-object v0, LaS/j;->b:LaS/j;

    .line 117
    :cond_c
    return-void
.end method

.method private b(Landroid/database/Cursor;)LaS/f;
    .registers 7
    .parameter

    .prologue
    .line 425
    new-instance v0, LaS/f;

    const-string v1, "cDocid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-string v3, "directionsTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2}, LaS/f;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 383
    const-string v0, "_id IN (SELECT _id FROM listing_interaction_table ORDER BY _id DESC LIMIT -1 OFFSET 40)"

    .line 386
    iget-object v1, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "listing_interaction_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 369
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 370
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "listing_interaction_table"

    const-string v3, "cDocid= ? AND directionsTime NOT NULL"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_23

    move v0, v8

    .line 373
    :goto_1d
    if-eqz v1, :cond_22

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_22
    return v0

    :cond_23
    move v0, v9

    .line 372
    goto :goto_1d
.end method


# virtual methods
.method public a(Ljava/lang/String;)LaS/g;
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 240
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 264
    :goto_7
    return-object v5

    .line 245
    :cond_8
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "cDocid"

    aput-object v0, v2, v6

    const-string v0, "phoneNumber"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "phoneTime"

    aput-object v1, v2, v0

    .line 246
    const-string v3, "cDocid= ? AND phoneNumber NOT NULL AND phoneTime NOT NULL"

    .line 248
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 249
    const-string v7, "phoneTime DESC"

    .line 250
    const-string v8, "1"

    .line 251
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "listing_interaction_table"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 258
    :try_start_31
    invoke-direct {p0, v0}, LaS/j;->a(Landroid/database/Cursor;)LaS/g;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_39

    move-result-object v5

    .line 263
    :cond_35
    :goto_35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 259
    :catch_39
    move-exception v1

    goto :goto_35
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_9

    move v0, v8

    .line 209
    :cond_8
    :goto_8
    return v0

    .line 201
    :cond_9
    const-string v3, "cDocid= ? AND questionId= ?"

    .line 202
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    .line 203
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    move v0, v9

    .line 206
    :goto_26
    if-eqz v1, :cond_8

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_2c
    move v0, v8

    .line 205
    goto :goto_26
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_6

    .line 231
    :cond_5
    :goto_5
    return v0

    .line 222
    :cond_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 224
    const-string v2, "cDocid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "experiment"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "questionId"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "answerId"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    iget-object v2, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 231
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b(Ljava/lang/String;)LaS/f;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 289
    :goto_5
    return-object v2

    .line 276
    :cond_6
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 277
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "listing_interaction_table"

    const-string v3, "cDocid= ? AND directionsTime NOT NULL"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 283
    :try_start_1f
    invoke-direct {p0, v0}, LaS/j;->b(Landroid/database/Cursor;)LaS/f;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_27

    move-result-object v2

    .line 288
    :cond_23
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 284
    :catch_27
    move-exception v1

    goto :goto_23
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 307
    :goto_4
    return-void

    .line 301
    :cond_5
    new-instance v0, LaS/l;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, LaS/l;-><init>(LaS/j;LY/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LaS/l;->g()V

    goto :goto_4
.end method

.method public c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 342
    :goto_4
    return-void

    .line 336
    :cond_5
    new-instance v0, LaS/m;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaS/m;-><init>(LaS/j;LY/c;Ljava/lang/String;)V

    invoke-virtual {v0}, LaS/m;->g()V

    goto :goto_4
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    const-string v1, "cDocid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "phoneTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    iget-object v1, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "listing_interaction_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 322
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    .line 323
    invoke-direct {p0}, LaS/j;->b()V

    .line 325
    :cond_2e
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    const-string v1, "cDocid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "directionsTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    invoke-direct {p0, p1}, LaS/j;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 355
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 356
    iget-object v2, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "listing_interaction_table"

    const-string v4, "cDocid= ? AND directionsTime NOT NULL"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    :cond_2c
    :goto_2c
    return-void

    .line 358
    :cond_2d
    iget-object v1, p0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "listing_interaction_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 359
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 360
    invoke-direct {p0}, LaS/j;->b()V

    goto :goto_2c
.end method
