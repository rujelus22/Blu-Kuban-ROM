.class public Lcom/google/android/maps/driveabout/app/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/b;


# static fields
.field private static a:Z

.field private static b:Lcom/google/android/maps/driveabout/app/ca;

.field private static final c:Lcom/google/googlenav/j;

.field private static d:Lcom/google/googlenav/ui/android/L;

.field private static volatile e:Z


# instance fields
.field private final f:Landroid/app/Application;

.field private g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private h:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private i:Lm/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/googlenav/j;

    invoke-direct {v0}, Lcom/google/googlenav/j;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/ca;->c:Lcom/google/googlenav/j;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ca;->f:Landroid/app/Application;

    .line 138
    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/ca;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/android/maps/driveabout/app/ca;->b:Lcom/google/android/maps/driveabout/app/ca;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ca;->a:Z

    if-nez v0, :cond_7

    .line 85
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->d(Landroid/content/Context;)V

    :cond_7
    move-object v0, p0

    .line 87
    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 88
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->b()Lcom/google/googlenav/android/b;

    move-result-object v1

    if-nez v1, :cond_20

    .line 89
    sget-object v1, Lcom/google/android/maps/driveabout/app/ca;->b:Lcom/google/android/maps/driveabout/app/ca;

    if-nez v1, :cond_1b

    .line 90
    new-instance v1, Lcom/google/android/maps/driveabout/app/ca;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ca;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/google/android/maps/driveabout/app/ca;->b:Lcom/google/android/maps/driveabout/app/ca;

    .line 92
    :cond_1b
    sget-object v1, Lcom/google/android/maps/driveabout/app/ca;->b:Lcom/google/android/maps/driveabout/app/ca;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->b(Lcom/google/googlenav/android/b;)V

    .line 94
    :cond_20
    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x138e

    const/16 v3, 0x1068

    const/16 v0, 0xfa0

    .line 393
    if-ge p1, v0, :cond_1c

    if-lt p2, v0, :cond_1c

    .line 394
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_maps_navigation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lh/a;->a(Ljava/io/File;Landroid/content/Context;)Z

    .line 399
    :cond_1c
    if-ge p1, v3, :cond_42

    if-lt p2, v3, :cond_42

    .line 401
    const/4 v0, 0x6

    :goto_21
    if-ltz v0, :cond_42

    .line 402
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

    .line 403
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 408
    :cond_42
    if-ge p1, v4, :cond_63

    if-lt p2, v4, :cond_63

    .line 409
    invoke-static {p0}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 411
    const-string v1, "cache_ImageTileStore"

    invoke-static {v0, v1}, Lh/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    const-string v1, "cache_LayerTileStore"

    invoke-static {v0, v1}, Lh/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    const-string v1, "cache_RoadGraphTileStore"

    invoke-static {v0, v1}, Lh/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    const-string v1, "cache_VectorTileStore"

    invoke-static {v0, v1}, Lh/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    const-string v1, "cache_Resource"

    invoke-static {v0, v1}, Lh/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    :cond_63
    return-void

    .line 401
    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 370
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
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
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    if-gtz p1, :cond_5

    .line 347
    :cond_4
    :goto_4
    return v0

    .line 340
    :cond_5
    const/16 v2, 0x64

    if-lt p1, v2, :cond_b

    move v0, v1

    .line 341
    goto :goto_4

    .line 343
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

    .line 345
    goto :goto_4
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/android/maps/driveabout/app/ca;->b:Lcom/google/android/maps/driveabout/app/ca;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ca;->e:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 364
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lt/d;

    invoke-direct {v1}, Lt/d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 146
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->e(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dD;->a:[Lcom/google/android/maps/driveabout/vector/dg;

    const-string v1, "DriveAbout"

    const v2, 0x7f070003

    new-instance v3, Lcom/google/googlenav/android/I;

    invoke-direct {v3, p0}, Lcom/google/googlenav/android/I;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/dg;Ljava/lang/String;ILaT/o;)V

    .line 149
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->j()V

    .line 155
    invoke-static {p0, v0}, Lo/c;->a(Landroid/content/Context;Lac/p;)V

    .line 156
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;)V

    .line 157
    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/L;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/ca;->d:Lcom/google/googlenav/ui/android/L;

    .line 164
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    invoke-virtual {v0}, LY/c;->d()V

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/app/ca;->a:Z

    .line 167
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 380
    const-string v0, "LastRunVersion"

    const/16 v1, 0xce4

    invoke-static {p0, v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 381
    const-string v1, "6110102"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 382
    if-eq v0, v1, :cond_18

    .line 385
    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;II)V

    .line 386
    const-string v0, "LastRunVersion"

    invoke-static {p0, v0, v1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 388
    :cond_18
    return-void
.end method

.method private static j()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    .line 175
    sget-object v1, Lcom/google/android/maps/driveabout/app/ca;->c:Lcom/google/googlenav/j;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/j;->a([I)V

    .line 176
    return-void

    .line 170
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
    .parameter

    .prologue
    .line 214
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/Config;->a(Landroid/content/res/Configuration;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ca;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/c;->a(Landroid/content/Context;)V

    .line 221
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Ljava/util/Locale;)V

    .line 222
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ca;->g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    .line 240
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ca;->h:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 257
    return-void
.end method

.method public a(Lm/b;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ca;->i:Lm/b;

    .line 437
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 275
    const-string v1, "DriveAbout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    const-string v2, "RmiOverride"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 278
    const-string v2, "RmiOverride"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 303
    :cond_15
    :goto_15
    return v0

    .line 288
    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ca;->i:Lm/b;

    if-eqz v1, :cond_15

    .line 291
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ca;->i:Lm/b;

    invoke-virtual {v1}, Lm/b;->n()Lat/B;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/google/android/maps/driveabout/app/ca;->c:Lcom/google/googlenav/j;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 299
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_15

    .line 303
    invoke-static {p1}, Lh/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lt/k;->A()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_15
.end method

.method public a(Landroid/content/Context;Lt/k;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    const-string v1, "DriveAbout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    const-string v2, "OfflineRoutingOverride"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 318
    const-string v2, "OfflineRoutingOverride"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    :cond_15
    :goto_15
    return v0

    .line 323
    :cond_16
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 324
    const/4 v0, 0x1

    goto :goto_15

    .line 329
    :cond_1e
    if-eqz p2, :cond_15

    .line 332
    invoke-static {p1}, Lh/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lt/k;->B()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_15
.end method

.method public d()V
    .registers 1

    .prologue
    .line 205
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->c()V

    .line 206
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 231
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->d()V

    .line 232
    return-void
.end method

.method public f()Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ca;->g:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ca;->h:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/j;
    .registers 2

    .prologue
    .line 352
    sget-object v0, Lcom/google/android/maps/driveabout/app/ca;->c:Lcom/google/googlenav/j;

    return-object v0
.end method

.method public synthetic i()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    return-object v0
.end method
