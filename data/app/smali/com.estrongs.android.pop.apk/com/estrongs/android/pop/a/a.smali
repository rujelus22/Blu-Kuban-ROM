.class public Lcom/estrongs/android/pop/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/a/a;

.field private static final b:[Ljava/lang/String;

.field private static c:Landroid/net/Uri;

.field private static d:Landroid/net/Uri;

.field private static e:[Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/a/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/a/a;->a:Lcom/estrongs/android/pop/a/a;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/android/pop/a/a;->b:[Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/estrongs/android/pop/a/a;->d:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/android/pop/a/a;->e:[Ljava/lang/String;

    const-string v0, "(mime_type=? or mime_type=?)"

    sput-object v0, Lcom/estrongs/android/pop/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method private a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I)Landroid/net/Uri;
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/a/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_20
    return-object v0

    :cond_21
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "mime_type"

    const-string v2, "image/png"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    const-string v0, "orientation"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "bucket_id"

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "bucket_display_name"

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_92

    const-string v0, "latitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "longitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_92
    const-string v0, "_data"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_97
    sget-object v0, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_a6

    move-result-object v0

    goto :goto_20

    :cond_9e
    const-string v0, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :catch_a6
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_20
.end method

.method public static a()Lcom/estrongs/android/pop/a/a;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/a/a;->a:Lcom/estrongs/android/pop/a/a;

    return-object v0
.end method

.method private d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    :try_start_0
    sget-object v1, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "(mime_type=? or mime_type=?) and _data=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/pop/a/a;->b:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    const/4 v0, 0x0

    goto :goto_35
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/a/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v0, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "bucketId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v0
.end method

.method public a(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_11

    if-eqz p2, :cond_11

    array-length v0, p2

    if-eqz v0, :cond_11

    const-string v0, "/."

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move-object v8, v6

    :cond_12
    return-object v8

    :cond_13
    move v9, v7

    move-object v8, v6

    :goto_15
    array-length v0, p2

    if-ge v9, v0, :cond_12

    aget-object v2, p2, v9

    const-string v0, "/."

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v8

    :cond_23
    :goto_23
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v8, v0

    goto :goto_15

    :cond_28
    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_40
    invoke-direct {p0, p1, v2}, Lcom/estrongs/android/pop/a/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_23

    :cond_51
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_23

    :cond_7c
    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I)Landroid/net/Uri;

    :cond_87
    move-object v0, v8

    goto :goto_23
.end method

.method public b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .registers 13

    const/4 v8, 0x0

    if-eqz p2, :cond_b

    const-string v0, "/."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    move-object v0, v8

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "/sdcard/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_19
    :try_start_19
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_b2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3e} :catch_a5

    move-result-object v9

    if-eqz v9, :cond_8f

    :try_start_41
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "EEEE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get image uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_41 .. :try_end_88} :catchall_ba
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_88} :catch_bf

    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    :cond_8f
    :try_start_8f
    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I)Landroid/net/Uri;
    :try_end_9d
    .catchall {:try_start_8f .. :try_end_9d} :catchall_ba
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_bf

    move-result-object v0

    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    :catch_a5
    move-exception v0

    move-object v1, v8

    :goto_a7
    :try_start_a7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_bc

    if-eqz v1, :cond_af

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object v0, v8

    goto/16 :goto_c

    :catchall_b2
    move-exception v0

    move-object v9, v8

    :goto_b4
    if-eqz v9, :cond_b9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b9
    throw v0

    :catchall_ba
    move-exception v0

    goto :goto_b4

    :catchall_bc
    move-exception v0

    move-object v9, v1

    goto :goto_b4

    :catch_bf
    move-exception v0

    move-object v1, v9

    goto :goto_a7
.end method

.method public c(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/a/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/estrongs/android/pop/a/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1e
    return-void
.end method
