.class public Lcom/google/googlenav/friend/reporting/b;
.super Ljava/lang/Object;


# static fields
.field static a:J

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcom/google/googlenav/friend/reporting/d;

.field private d:Lcom/google/googlenav/friend/reporting/a;

.field private e:Lcom/google/googlenav/friend/reporting/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/reporting/b;->b:Ljava/lang/Object;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/google/googlenav/friend/reporting/b;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/a;Lcom/google/googlenav/friend/reporting/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/friend/reporting/d;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/reporting/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/b;->c:Lcom/google/googlenav/friend/reporting/d;

    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/b;->e:Lcom/google/googlenav/friend/reporting/l;

    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/b;->d:Lcom/google/googlenav/friend/reporting/a;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 4

    const-string v0, "SELECT count(*) FROM latitudeLocations"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/reporting/g;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "latLngEncrypted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/b;->d:Lcom/google/googlenav/friend/reporting/a;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/a;->a([B)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v4}, Lcom/google/googlenav/friend/reporting/i;-><init>()V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/google/googlenav/friend/reporting/i;->a(II)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v0

    const-string v3, "source"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/reporting/i;->a(I)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v0

    const-string v3, "time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/reporting/i;->a(J)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v3

    const-string v0, "speed"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->a(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_5a
    const-string v0, "heading"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->b(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_6d
    const-string v0, "altitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_80

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/friend/reporting/i;->a(D)Lcom/google/googlenav/friend/reporting/i;

    :cond_80
    const-string v0, "accuracy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_93

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->c(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_93
    const-string v0, "gmmNlpVersion"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->b(I)Lcom/google/googlenav/friend/reporting/i;

    :cond_a6
    const-string v0, "batteryLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->c(I)Lcom/google/googlenav/friend/reporting/i;

    :cond_b9
    const-string v0, "batteryCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_cf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10f

    move v0, v1

    :goto_cc
    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->a(Z)Lcom/google/googlenav/friend/reporting/i;

    :cond_cf
    const-string v0, "stationary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_e4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_111

    :goto_e1
    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/reporting/i;->b(Z)Lcom/google/googlenav/friend/reporting/i;

    :cond_e4
    const-string v0, "levelId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_f7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/reporting/i;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/i;

    :cond_f7
    const-string v1, "levelNumberE3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/i;->d(I)Lcom/google/googlenav/friend/reporting/i;

    :cond_10a
    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/i;->a()Lcom/google/googlenav/friend/reporting/g;

    move-result-object v0

    return-object v0

    :cond_10f
    move v0, v2

    goto :goto_cc

    :cond_111
    move v1, v2

    goto :goto_e1
.end method

.method private a(JLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    const-string v0, "latitudeLocations"

    invoke-virtual {p3, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "latitudeLocations"

    const-string v2, "time <= ?"

    invoke-virtual {p3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c
.end method

.method private b(Lcom/google/googlenav/friend/reporting/g;)Landroid/content/ContentValues;
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "latLngEncrypted"

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/b;->d:Lcom/google/googlenav/friend/reporting/a;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/friend/reporting/a;->a(II)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "time"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->f()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "speed"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->g()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_45
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->h()Z

    move-result v1

    if-eqz v1, :cond_58

    const-string v1, "heading"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_58
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->j()Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "altitude"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->k()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_6b
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->l()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "accuracy"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->m()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_7e
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->n()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "gmmNlpVersion"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_91
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->p()Z

    move-result v1

    if-eqz v1, :cond_a4

    const-string v1, "batteryLevel"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a4
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->r()Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "batteryCharging"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_b7
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->t()Z

    move-result v1

    if-eqz v1, :cond_ca

    const-string v1, "stationary"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_ca
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->v()Z

    move-result v1

    if-eqz v1, :cond_d9

    const-string v1, "levelId"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->x()Z

    move-result v1

    if-eqz v1, :cond_ec

    const-string v1, "levelNumberE3"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/g;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_ec
    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "SELECT min(%s) FROM %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "time"

    aput-object v2, v1, v5

    const-string v2, "latitudeLocations"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "latitudeLocations"

    const-string v1, "%s = ?"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "time"

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_6
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6

    sget-object v1, Lcom/google/googlenav/friend/reporting/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/googlenav/friend/reporting/b;->c()V

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/b;->c:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select * from latitudeLocations"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_35
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_20} :catch_2e

    move-result v4

    if-nez v4, :cond_38

    :try_start_23
    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/reporting/b;->a(Landroid/database/Cursor;)Lcom/google/googlenav/friend/reporting/g;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_23 .. :try_end_2a} :catch_46
    .catch Landroid/database/SQLException; {:try_start_23 .. :try_end_2a} :catch_2e

    :goto_2a
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_35
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1d

    :catch_2e
    move-exception v0

    :try_start_2f
    new-instance v2, Lcom/google/googlenav/friend/reporting/c;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/friend/reporting/c;-><init>(Lcom/google/googlenav/friend/reporting/b;Ljava/lang/Exception;)V

    throw v2

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_35
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_44} :catch_2e

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_35

    return-object v3

    :catch_46
    move-exception v4

    goto :goto_2a
.end method

.method public a(J)V
    .registers 6

    sget-object v1, Lcom/google/googlenav/friend/reporting/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/b;->c:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/friend/reporting/b;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_18} :catch_1a

    :try_start_18
    monitor-exit v1

    return-void

    :catch_1a
    move-exception v0

    new-instance v2, Lcom/google/googlenav/friend/reporting/c;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/friend/reporting/c;-><init>(Lcom/google/googlenav/friend/reporting/b;Ljava/lang/Exception;)V

    throw v2

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Lcom/google/googlenav/friend/reporting/g;)Z
    .registers 11

    const-wide/16 v7, -0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/friend/reporting/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-direct {p0}, Lcom/google/googlenav/friend/reporting/b;->c()V

    if-nez p1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "You can\'t save a null location"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_1a
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    :try_start_14
    new-instance v2, Lcom/google/googlenav/friend/reporting/c;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/friend/reporting/c;-><init>(Lcom/google/googlenav/friend/reporting/b;Ljava/lang/Exception;)V

    throw v2

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/b;->c:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/reporting/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_1a
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_26} :catch_13

    :try_start_26
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/b;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/l;->b()Z

    move-result v3

    if-nez v3, :cond_44

    const-wide/16 v3, -0x1

    invoke-direct {p0, v3, v4, v2}, Lcom/google/googlenav/friend/reporting/b;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    :goto_33
    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/reporting/b;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    sget-wide v5, Lcom/google/googlenav/friend/reporting/b;->a:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_50

    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/reporting/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_1a
    .catch Ljava/security/GeneralSecurityException; {:try_start_26 .. :try_end_40} :catch_41
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_40} :catch_13

    goto :goto_33

    :catch_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_1a

    :goto_43
    return v0

    :cond_44
    :try_start_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4, v2}, Lcom/google/googlenav/friend/reporting/b;->a(JLandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_33

    :cond_50
    const-string v3, "latitudeLocations"

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/reporting/b;->b(Lcom/google/googlenav/friend/reporting/g;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_1a
    .catch Ljava/security/GeneralSecurityException; {:try_start_44 .. :try_end_5a} :catch_41
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_5a} :catch_13

    move-result-wide v3

    :try_start_5b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_1a
    .catch Landroid/database/SQLException; {:try_start_5b .. :try_end_64} :catch_13

    cmp-long v2, v3, v7

    if-lez v2, :cond_69

    const/4 v0, 0x1

    :cond_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_1a

    goto :goto_43
.end method

.method public b()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/reporting/b;->a(J)V

    return-void
.end method
