.class public Lcom/google/android/maps/driveabout/app/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/b;


# static fields
.field private static a:Z

.field private static b:Lcom/google/android/maps/driveabout/app/ci;

.field private static final c:Lcom/google/googlenav/j;

.field private static d:Lcom/google/googlenav/ui/android/z;

.field private static e:Lcom/google/googlenav/android/ac;

.field private static volatile f:Z


# instance fields
.field private final g:Landroid/app/Application;

.field private h:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private i:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private j:Ls/b;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/googlenav/j;

    invoke-direct {v0}, Lcom/google/googlenav/j;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/ci;->c:Lcom/google/googlenav/j;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->g:Landroid/app/Application;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->k:Landroid/os/Handler;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ck;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/ck;-><init>(Lcom/google/android/maps/driveabout/app/ci;Lcom/google/android/maps/driveabout/app/cj;)V

    invoke-virtual {v0, v1}, Lat/h;->a(Lat/p;)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ci;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/ci;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/ci;->b:Lcom/google/android/maps/driveabout/app/ci;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3

    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ci;->a:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->d(Landroid/content/Context;)V

    :cond_7
    move-object v0, p0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->b()Lcom/google/googlenav/android/b;

    move-result-object v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/google/android/maps/driveabout/app/ci;->b:Lcom/google/android/maps/driveabout/app/ci;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/google/android/maps/driveabout/app/ci;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ci;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/google/android/maps/driveabout/app/ci;->b:Lcom/google/android/maps/driveabout/app/ci;

    :cond_1b
    sget-object v1, Lcom/google/android/maps/driveabout/app/ci;->b:Lcom/google/android/maps/driveabout/app/ci;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->b(Lcom/google/googlenav/android/b;)V

    :cond_20
    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .registers 8

    const/16 v4, 0x138e

    const/16 v3, 0x1068

    const/16 v0, 0xfa0

    if-ge p1, v0, :cond_1c

    if-lt p2, v0, :cond_1c

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_maps_navigation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ln/b;->a(Ljava/io/File;Landroid/content/Context;)Z

    :cond_1c
    if-ge p1, v3, :cond_42

    if-lt p2, v3, :cond_42

    const/4 v0, 0x6

    :goto_21
    if-ltz v0, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "._speech_nav_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    :cond_42
    if-ge p1, v4, :cond_63

    if-lt p2, v4, :cond_63

    invoke-static {p0}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "cache_ImageTileStore"

    invoke-static {v0, v1}, Ln/b;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_LayerTileStore"

    invoke-static {v0, v1}, Ln/b;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_RoadGraphTileStore"

    invoke-static {v0, v1}, Ln/b;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_VectorTileStore"

    invoke-static {v0, v1}, Ln/b;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache_Resource"

    invoke-static {v0, v1}, Ln/b;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_63
    return-void

    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-gtz p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/16 v2, 0x64

    if-lt p1, v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    if-ge v2, p1, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lz/e;

    invoke-direct {v1}, Lz/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->e(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cS;->d:[Lcom/google/android/maps/driveabout/vector/cU;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    new-instance v3, Lcom/google/googlenav/android/M;

    invoke-direct {v3, p0}, Lcom/google/googlenav/android/M;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cS;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/cU;Ljava/lang/String;ILaf/n;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->i()V

    invoke-static {p0, v0}, Lu/c;->a(Landroid/content/Context;Lat/h;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/android/z;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/ci;->d:Lcom/google/googlenav/ui/android/z;

    new-instance v0, Lcom/google/googlenav/android/ac;

    invoke-direct {v0}, Lcom/google/googlenav/android/ac;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/ci;->e:Lcom/google/googlenav/android/ac;

    sget-object v0, Lcom/google/android/maps/driveabout/app/ci;->e:Lcom/google/googlenav/android/ac;

    invoke-static {p0, v0}, Lcom/google/googlenav/login/a;->b(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v0

    invoke-virtual {v0}, Lap/c;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/app/ci;->a:Z

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3

    const-string v0, "LastRunVersion"

    const/16 v1, 0xce4

    invoke-static {p0, v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "6030007"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_18

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;II)V

    const-string v0, "LastRunVersion"

    invoke-static {p0, v0, v1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_18
    return-void
.end method

.method private static i()V
    .registers 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sget-object v1, Lcom/google/android/maps/driveabout/app/ci;->c:Lcom/google/googlenav/j;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/j;->a([I)V

    return-void

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Laf/b;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/c;->a(Landroid/content/Context;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cS;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-void
.end method

.method public a(Ls/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Ls/b;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "DriveAbout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "RmiOverride"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "RmiOverride"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Ls/b;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Ls/b;

    invoke-virtual {v1}, Ls/b;->n()LaJ/B;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/app/ci;->c:Lcom/google/googlenav/j;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {p1}, Ln/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lz/l;->A()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_15
.end method

.method public a(Landroid/content/Context;Lz/l;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "DriveAbout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "OfflineRoutingOverride"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "OfflineRoutingOverride"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-static {}, Ln/a;->b()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_15

    :cond_1e
    if-eqz p2, :cond_15

    invoke-static {p1}, Ln/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz/l;->B()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_15
.end method

.method public c()V
    .registers 1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->c()V

    return-void
.end method

.method public d()V
    .registers 1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->d()V

    return-void
.end method

.method public e()Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method public f()Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/j;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/app/ci;->c:Lcom/google/googlenav/j;

    return-object v0
.end method

.method public synthetic h()Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    return-object v0
.end method
