.class public Lbe/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbe/a;


# instance fields
.field private b:Lbe/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbe/b;

    invoke-direct {v0, p1}, Lbe/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbe/a;->b:Lbe/b;

    return-void
.end method

.method public static a()Lbe/a;
    .registers 1

    sget-object v0, Lbe/a;->a:Lbe/a;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Lbe/h;
    .registers 8

    new-instance v0, Lbe/h;

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

    invoke-direct {v0, v1, v2, v3}, Lbe/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lbe/a;->a:Lbe/a;

    if-nez v0, :cond_b

    new-instance v0, Lbe/a;

    invoke-direct {v0, p0}, Lbe/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbe/a;->a:Lbe/a;

    :cond_b
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lbe/a;->c(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v3}, Lbe/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v2, :cond_22

    const-string v2, "cDocid= ?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string v5, "listing_interaction_table"

    invoke-virtual {v3, v5, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_1b
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    :goto_21
    return v0

    :cond_22
    const-string v2, "listing_interaction_table"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1b

    :cond_2a
    move v0, v1

    goto :goto_21
.end method

.method private b(Landroid/database/Cursor;)Lbe/g;
    .registers 7

    new-instance v0, Lbe/g;

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

    invoke-direct {v0, v1, v2}, Lbe/g;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v0}, Lbe/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "cDocid= ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v1, "listing_interaction_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_27

    move v0, v8

    :goto_21
    if-eqz v1, :cond_26

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_26
    return v0

    :cond_27
    move v0, v9

    goto :goto_21
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v0}, Lbe/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "cDocid= ? AND directionsTime NOT NULL"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "listing_interaction_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    :goto_1c
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2d

    :try_start_22
    invoke-direct {p0, v0}, Lbe/a;->b(Landroid/database/Cursor;)Lbe/g;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_31

    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1c

    :cond_2d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_31
    move-exception v2

    goto :goto_29
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v0}, Lbe/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "cDocid= ? AND questionId= ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v8

    const-string v1, "feedback_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2a

    move v0, v8

    :goto_24
    if-eqz v1, :cond_29

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_29
    return v0

    :cond_2a
    move v0, v9

    goto :goto_24
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v0}, Lbe/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "cDocid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "experiment"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "questionId"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "answerId"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "feedback_table"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3b

    const/4 v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lbe/a;->b:Lbe/b;

    invoke-virtual {v0}, Lbe/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "cDocid= ? AND phoneNumber= ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const-string v1, "listing_interaction_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    :goto_1f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_30

    :try_start_25
    invoke-direct {p0, v0}, Lbe/a;->a(Landroid/database/Cursor;)Lbe/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_34

    :goto_2c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1f

    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_34
    move-exception v2

    goto :goto_2c
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cDocid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "directionsTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lbe/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cDocid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phoneTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lbe/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
