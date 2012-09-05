.class Lcom/google/android/maps/driveabout/app/ac;
.super Lcom/google/android/maps/driveabout/app/S;


# static fields
.field static final c:[Ljava/lang/String;

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "content://com.google.android.maps.StarredItemProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/ac;->d:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/ac;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ls/b;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/S;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_14

    const v1, 0x7f0b00b9

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/X;->a(I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {}, Lcom/google/android/maps/driveabout/app/X;->a()Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/ac;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ad;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/maps/driveabout/app/ad;-><init>(Lcom/google/android/maps/driveabout/app/ac;Ls/b;Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ad;->start()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/ac;->d:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/ac;->c:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ac;Ls/b;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ac;->a(Ls/b;Z)V

    return-void
.end method

.method private a(Ls/b;Z)V
    .registers 13

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ac;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/ac;->d:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/ac;->c:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_23

    const v0, 0x7f0b00b9

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/X;->a(I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v5, :cond_8b

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/maps/driveabout/app/X;

    move v0, v6

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v1, 0x4

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x5

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v2, :cond_40

    if-eqz v4, :cond_78

    :cond_40
    new-instance v1, Lt/o;

    invoke-direct {v1, v2, v4}, Lt/o;-><init>(II)V

    :goto_45
    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x6

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_53

    if-eqz v2, :cond_2c

    :cond_53
    if-nez v2, :cond_56

    move-object v2, v4

    :cond_56
    new-instance v9, Lu/P;

    invoke-direct {v9, v2, v1, v4, v3}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v9, v2}, Lcom/google/android/maps/driveabout/app/X;->a(Lu/P;I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v2

    if-eqz p1, :cond_72

    if-eqz v1, :cond_72

    invoke-virtual {p1, v1}, Ls/b;->b(Lt/o;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/app/X;->a(F)V

    invoke-virtual {p1, v1}, Ls/b;->a(Lt/o;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/X;->b(F)V

    :cond_72
    add-int/lit8 v1, v0, 0x1

    aput-object v2, v8, v0

    move v0, v1

    goto :goto_2c

    :cond_78
    move-object v1, v3

    goto :goto_45

    :cond_7a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/X;->i()Lar/d;

    move-result-object v0

    invoke-static {v8, v0}, Lar/a;->a([Ljava/lang/Object;Lar/d;)V

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8b
    if-eqz p2, :cond_8e

    const/4 v6, 0x1

    :cond_8e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_9e

    const v0, 0x7f0b00c5

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/X;->b(I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/ac;->b(Ljava/util/ArrayList;)V

    return-void
.end method
