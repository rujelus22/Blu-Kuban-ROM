.class public Lcom/google/googlenav/provider/NavigationAvailabilityProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/google/googlenav/j;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "navigation_available"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b:[Ljava/lang/String;

    const-string v0, "content://com.google.android.maps.NavigationAvailabilityProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)LaJ/B;
    .registers 11

    const-wide v8, 0x412e848000000000L

    const/4 v0, 0x0

    if-nez p0, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    :try_start_14
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_8

    const-wide v6, -0x3fa9800000000000L

    cmpg-double v1, v2, v6

    if-ltz v1, :cond_8

    const-wide v6, 0x4066800000000000L

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_8

    const-wide v6, -0x3f99800000000000L

    cmpg-double v1, v4, v6

    if-ltz v1, :cond_8

    new-instance v1, LaJ/B;

    mul-double/2addr v2, v8

    double-to-int v2, v2

    mul-double v3, v4, v8

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, LaJ/B;-><init>(II)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4f} :catch_51

    move-object v0, v1

    goto :goto_8

    :catch_51
    move-exception v1

    goto :goto_8
.end method

.method private a(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x53

    const-string v2, "r"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    if-nez v0, :cond_29

    const-string v0, "1"

    :goto_23
    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_29
    const-string v0, "0"

    goto :goto_23
.end method

.method private a(LaJ/B;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/net/Uri;)I
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v1

    if-nez v0, :cond_26

    if-nez v1, :cond_26

    const/4 v0, 0x2

    goto :goto_b

    :cond_26
    if-eqz v0, :cond_30

    invoke-direct {p0, v0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(LaJ/B;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    goto :goto_b

    :cond_30
    if-eqz v1, :cond_3a

    invoke-direct {p0, v1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(LaJ/B;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x4

    goto :goto_b

    :cond_3a
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deletion not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, "vnd.android.cursor.dir/vnd.gmm.navigation_availability"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insertion not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    new-instance v0, Lcom/google/googlenav/j;

    invoke-direct {v0}, Lcom/google/googlenav/j;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/j;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/j;

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/j;

    invoke-virtual {v0}, Lcom/google/googlenav/j;->c()Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
