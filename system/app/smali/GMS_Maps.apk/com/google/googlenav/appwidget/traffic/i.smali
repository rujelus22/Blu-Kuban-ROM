.class public Lcom/google/googlenav/appwidget/traffic/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/i;->a:[Ljava/lang/String;

    .line 52
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

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/i;->b:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/i;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    .line 144
    return-void
.end method

.method private static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 330
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
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 341
    if-ne p0, v0, :cond_4

    .line 344
    :goto_3
    return v0

    .line 343
    :cond_4
    if-nez p0, :cond_8

    .line 344
    const/4 v0, 0x0

    goto :goto_3

    .line 346
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

    .prologue
    const/4 v6, 0x0

    .line 247
    invoke-static {}, Lcom/google/googlenav/appwidget/traffic/k;->a()Landroid/net/Uri;

    move-result-object v1

    .line 250
    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/i;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3f

    move-result-object v1

    .line 251
    if-nez v1, :cond_19

    .line 262
    if-eqz v1, :cond_17

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object v0, v6

    :cond_18
    :goto_18
    return-object v0

    .line 255
    :cond_19
    :try_start_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 256
    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 257
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 258
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_31

    goto :goto_1e

    .line 262
    :catchall_31
    move-exception v0

    move-object v6, v1

    :goto_33
    if-eqz v6, :cond_38

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0

    .line 262
    :cond_39
    if-eqz v1, :cond_18

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_18

    .line 262
    :catchall_3f
    move-exception v0

    goto :goto_33
.end method

.method a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method a(III)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    const-string v2, "endPointLat"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v2, "endPointLng"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method a(IJ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 202
    const-string v2, "lastLaunched"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method a(IJIJJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 188
    const-string v2, "eta"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v2, "delayRatio"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v2, "lastUpdated"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v2, "lastUpdatedDistance"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method a(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 236
    const-string v2, "errorMsg"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 159
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v2, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "endPoint"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "lastUpdated"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v2, "lastUpdatedDistance"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v2, "lastLaunched"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v2, "configured"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/googlenav/appwidget/traffic/i;->a(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v2, "sleepTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v2, "errorMsg"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 174
    return-void
.end method

.method b(I)Lcom/google/googlenav/appwidget/traffic/d;
    .registers 23
    .parameter

    .prologue
    .line 272
    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v2

    .line 273
    const/4 v7, 0x0

    .line 275
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/googlenav/appwidget/traffic/i;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_a8

    move-result-object v20

    .line 276
    if-eqz v20, :cond_1a

    :try_start_14
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_b0

    move-result v1

    if-nez v1, :cond_21

    .line 277
    :cond_1a
    const/4 v1, 0x0

    .line 300
    if-eqz v20, :cond_20

    .line 301
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_20
    :goto_20
    return-object v1

    .line 280
    :cond_21
    const/4 v1, 0x0

    :try_start_22
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    const/4 v1, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    const/4 v1, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_90

    const/4 v5, 0x0

    .line 284
    :goto_39
    const/4 v1, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    const/4 v6, 0x0

    .line 286
    :goto_43
    const/4 v1, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 287
    const/4 v1, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 288
    const/4 v1, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 289
    const/4 v1, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 290
    const/16 v1, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 291
    const/16 v1, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 292
    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/i;->d(I)Z

    move-result v16

    .line 293
    const/16 v1, 0xa

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 294
    const/16 v1, 0xb

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 296
    new-instance v1, Lcom/google/googlenav/appwidget/traffic/d;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v19}, Lcom/google/googlenav/appwidget/traffic/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JIJJJZJLjava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_22 .. :try_end_8a} :catchall_b0

    .line 300
    if-eqz v20, :cond_20

    .line 301
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 282
    :cond_90
    const/4 v1, 0x2

    :try_start_91
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_39

    .line 284
    :cond_9c
    const/4 v1, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_b0

    move-result-object v6

    goto :goto_43

    .line 300
    :catchall_a8
    move-exception v1

    move-object v2, v7

    :goto_aa
    if-eqz v2, :cond_af

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_af
    throw v1

    .line 300
    :catchall_b0
    move-exception v1

    move-object/from16 v2, v20

    goto :goto_aa
.end method

.method b(IJ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 212
    const-string v2, "sleepTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method c(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 310
    .line 312
    :try_start_1
    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Landroid/net/Uri;

    move-result-object v1

    .line 313
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/i;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2a

    move-result-object v1

    .line 314
    if-eqz v1, :cond_18

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_31

    move-result v0

    if-nez v0, :cond_1f

    .line 320
    :cond_18
    if-eqz v1, :cond_1d

    .line 321
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1d
    move-object v0, v6

    :cond_1e
    :goto_1e
    return-object v0

    .line 317
    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_31

    move-result-object v0

    .line 320
    if-eqz v1, :cond_1e

    .line 321
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    .line 320
    :catchall_2a
    move-exception v0

    :goto_2b
    if-eqz v6, :cond_30

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v0

    .line 320
    :catchall_31
    move-exception v0

    move-object v6, v1

    goto :goto_2b
.end method
