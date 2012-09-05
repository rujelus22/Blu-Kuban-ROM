.class public Lcom/google/android/maps/driveabout/app/SearchActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.google.android.maps.SearchHistoryProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Lt/L;Lt/L;)Lt/V;
    .registers 5

    const v2, 0x461c4000

    invoke-virtual {p0}, Lt/L;->e()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, p1}, Lt/L;->c(Lt/L;)F

    move-result v1

    div-float v0, v1, v0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_17

    :goto_12
    invoke-static {p0, p1}, Lt/V;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v0

    return-object v0

    :cond_17
    div-float v0, v2, v0

    invoke-virtual {p0, p1, v0}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object p1

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    const-string v3, "data1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data1"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/maps/driveabout/app/SearchActivity;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->finish()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aL;Lt/W;)V
    .registers 9

    const/4 v0, 0x0

    const/high16 v1, -0x4080

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(F)Lt/ab;

    move-result-object v1

    if-eqz v1, :cond_86

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v2

    if-nez v2, :cond_86

    new-instance v2, Lt/ab;

    invoke-virtual {v1}, Lt/ab;->d()Lt/P;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lt/ab;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Lt/ab;->c()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lt/ab;-><init>(Lt/P;II)V

    invoke-virtual {v2}, Lt/ab;->e()Lt/P;

    move-result-object v1

    :goto_2b
    if-eqz p2, :cond_37

    invoke-virtual {p2}, Lt/W;->a()Lt/V;

    move-result-object v0

    :cond_31
    :goto_31
    if-eqz v0, :cond_36

    invoke-static {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lt/P;Lt/V;)V

    :cond_36
    return-void

    :cond_37
    const v2, 0x461c4000

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/aL;->a(F)Lt/ab;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lt/ab;->f()Lt/V;

    move-result-object v0

    goto :goto_31

    :cond_45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v3

    if-eqz v3, :cond_80

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v3

    invoke-virtual {v3}, Lt/o;->a()I

    move-result v3

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-virtual {v2}, Lt/o;->b()I

    move-result v2

    invoke-static {v3, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v0

    goto :goto_31

    :cond_80
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v0

    goto :goto_31

    :cond_86
    move-object v1, v0

    goto :goto_2b
.end method

.method private static a(Landroid/os/Bundle;Lt/P;Lt/V;)V
    .registers 10

    invoke-virtual {p2}, Lt/V;->f()Lt/L;

    move-result-object v0

    const-string v1, "centerLatitude"

    invoke-virtual {v0}, Lt/L;->a()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "centerLongitude"

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lt/V;->h()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lt/L;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2}, Lt/V;->g()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3e3921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    const-wide v3, 0x412e848000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const-string v2, "latitudeSpan"

    const/16 v3, 0x4642

    int-to-float v0, v0

    const v4, 0x3f8ccccd

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "longitudeSpan"

    const/16 v2, 0x4642

    int-to-float v1, v1

    const v3, 0x3f8ccccd

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "skipSearchWizardOnBack"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_8b

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Lt/P;)[B

    move-result-object v0

    if-eqz v0, :cond_8b

    const-string v1, "routePolyline"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_8b
    return-void
.end method

.method static a(Lt/P;)[B
    .registers 13

    const/4 v4, 0x5

    const/4 v11, 0x3

    const/4 v0, 0x0

    new-instance v2, Lam/b;

    sget-object v1, LbD/cO;->d:Lam/e;

    invoke-direct {v2, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lam/b;->h(II)V

    invoke-virtual {v2, v11}, Lam/b;->a(I)Lam/b;

    move-result-object v3

    const v1, -0x3fbf5701

    invoke-virtual {v3, v4, v1}, Lam/b;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1, v4}, Lam/b;->h(II)V

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v4

    mul-int/lit8 v1, v4, 0x8

    new-array v5, v1, [B

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    move v1, v0

    :goto_2b
    if-ge v0, v4, :cond_6f

    invoke-virtual {p0, v0, v6}, Lt/P;->a(ILt/L;)V

    invoke-virtual {v6}, Lt/L;->a()I

    move-result v7

    invoke-virtual {v6}, Lt/L;->c()I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    shr-int/lit8 v10, v7, 0x18

    int-to-byte v10, v10

    aput-byte v10, v5, v1

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    add-int/lit8 v9, v1, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v5, v1

    add-int/lit8 v1, v9, 0x1

    int-to-byte v7, v7

    aput-byte v7, v5, v9

    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v9, v8, 0x18

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    add-int/lit8 v1, v7, 0x1

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    add-int/lit8 v1, v7, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_6f
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v5}, Lam/b;->b(I[B)V

    invoke-virtual {v2, v11, v3}, Lam/b;->b(ILam/b;)V

    :try_start_76
    invoke-virtual {v2}, Lam/b;->f()[B
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7b

    move-result-object v0

    :goto_7a
    return-object v0

    :catch_7b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
