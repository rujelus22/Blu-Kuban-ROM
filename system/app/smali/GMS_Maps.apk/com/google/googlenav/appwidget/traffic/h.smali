.class public Lcom/google/googlenav/appwidget/traffic/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/h;->a:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "endPoint"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "endPointLat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endPointLng"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eta"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "delayRatio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lastLaunched"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lastUpdated"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lastUpdatedDistance"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "configured"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sleepTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "errorMsg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/h;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/h;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    return-void
.end method

.method private static a(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static d(I)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/googlenav/appwidget/traffic/j;->a()Landroid/net/Uri;

    move-result-object v1

    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/h;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3f

    move-result-object v1

    if-nez v1, :cond_19

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object v0, v6

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    :try_start_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_31

    goto :goto_1e

    :catchall_31
    move-exception v0

    move-object v6, v1

    :goto_33
    if-eqz v6, :cond_38

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0

    :cond_39
    if-eqz v1, :cond_18

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_18

    :catchall_3f
    move-exception v0

    goto :goto_33
.end method

.method a(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method a(III)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "endPointLat"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "endPointLng"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method a(IJ)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "lastLaunched"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method a(IJIJJ)V
    .registers 14

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eta"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "delayRatio"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "lastUpdated"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "lastUpdatedDistance"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method a(ILjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "errorMsg"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "endPoint"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastUpdated"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "lastUpdatedDistance"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "lastLaunched"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "configured"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/googlenav/appwidget/traffic/h;->a(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sleepTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "errorMsg"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method b(I)Lcom/google/googlenav/appwidget/traffic/c;
    .registers 23

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/googlenav/appwidget/traffic/h;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_a5

    move-result-object v20

    if-eqz v20, :cond_1a

    :try_start_14
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_ad

    move-result v1

    if-nez v1, :cond_21

    :cond_1a
    const/4 v1, 0x0

    if-eqz v20, :cond_20

    :goto_1d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    :try_start_22
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v5, 0x0

    :goto_39
    const/4 v1, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v6, 0x0

    :goto_43
    const/4 v1, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v1, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v1, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v1, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v1, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/h;->d(I)Z

    move-result v16

    const/16 v1, 0xa

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/16 v1, 0xb

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v1, Lcom/google/googlenav/appwidget/traffic/c;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v19}, Lcom/google/googlenav/appwidget/traffic/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JIJJJZJLjava/lang/String;)V

    if-eqz v20, :cond_20

    goto :goto_1d

    :cond_8d
    const/4 v1, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_39

    :cond_99
    const/4 v1, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a3
    .catchall {:try_start_22 .. :try_end_a3} :catchall_ad

    move-result-object v6

    goto :goto_43

    :catchall_a5
    move-exception v1

    move-object v2, v7

    :goto_a7
    if-eqz v2, :cond_ac

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v1

    :catchall_ad
    move-exception v1

    move-object/from16 v2, v20

    goto :goto_a7
.end method

.method b(IJ)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "sleepTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method c(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->a(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/h;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/h;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2a

    move-result-object v1

    if-eqz v1, :cond_18

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_31

    move-result v0

    if-nez v0, :cond_1f

    :cond_18
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1d
    move-object v0, v6

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_31

    move-result-object v0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :catchall_2a
    move-exception v0

    :goto_2b
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v0

    :catchall_31
    move-exception v0

    move-object v6, v1

    goto :goto_2b
.end method
