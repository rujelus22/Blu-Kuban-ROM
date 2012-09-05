.class public Lcom/google/googlenav/friend/reporting/LocationReceiverService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Z

.field private b:Lcom/google/googlenav/friend/reporting/b;

.field private c:Lcom/google/googlenav/android/J;

.field private d:Lcom/google/googlenav/friend/reporting/e;

.field private e:Lcom/google/googlenav/friend/reporting/l;

.field private f:Landroid/os/PowerManager$WakeLock;

.field private g:Laf/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "LocationReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "cell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    :cond_1e
    const/4 v0, 0x3

    goto :goto_9
.end method

.method private a(JZ)Z
    .registers 9

    const-wide/32 v0, 0xea60

    const/4 v2, 0x1

    if-eqz p3, :cond_12

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    sub-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-lez v3, :cond_12

    :goto_11
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-wide/32 v0, 0x927c0

    :cond_1b
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    sub-long/2addr v3, p1

    cmp-long v0, v3, v0

    if-lez v0, :cond_29

    move v0, v2

    :goto_27
    move v2, v0

    goto :goto_11

    :cond_29
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private a(Landroid/location/Location;I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a:Z

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static b(Landroid/location/Location;)Lcom/google/googlenav/friend/reporting/i;
    .registers 7

    const-wide v4, 0x416312d000000000L

    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/i;-><init>()V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;->a(II)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v0

    invoke-static {p0}, LaG/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/i;->a(I)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;->a(J)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/i;->a(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_3b
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/i;->b(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_48
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;->a(D)Lcom/google/googlenav/friend/reporting/i;

    :cond_55
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/i;->c(F)Lcom/google/googlenav/friend/reporting/i;

    :cond_62
    return-object v0
.end method


# virtual methods
.method a()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/googlenav/friend/reporting/LocationReportingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setTime(J)V

    const-string v3, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/location/Location;I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/location/Location;)V

    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v4, v2}, Lcom/google/googlenav/friend/reporting/l;->b(Z)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->d:Lcom/google/googlenav/friend/reporting/e;

    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v6}, Lcom/google/googlenav/friend/reporting/l;->a()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Lcom/google/googlenav/friend/reporting/e;->a(Landroid/location/Location;Landroid/location/Location;Ljava/util/List;)Lcom/google/googlenav/friend/reporting/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/friend/reporting/f;->b()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/l;->a(Landroid/location/Location;)Z

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b(Landroid/location/Location;)Lcom/google/googlenav/friend/reporting/i;

    move-result-object v6

    if-eq v3, v7, :cond_4c

    invoke-virtual {v6, v3}, Lcom/google/googlenav/friend/reporting/i;->b(I)Lcom/google/googlenav/friend/reporting/i;

    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->c:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/i;->c(I)Lcom/google/googlenav/friend/reporting/i;

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->c:Lcom/google/googlenav/android/J;

    invoke-virtual {v0}, Lcom/google/googlenav/android/J;->a()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/i;->a(Z)Lcom/google/googlenav/friend/reporting/i;

    invoke-virtual {v5}, Lcom/google/googlenav/friend/reporting/f;->a()Z

    move-result v0

    if-nez v0, :cond_cc

    move v0, v1

    :goto_65
    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/i;->b(Z)Lcom/google/googlenav/friend/reporting/i;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "levelId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "levelId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/i;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/i;

    :cond_87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "levelNumberE3"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "levelNumberE3"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/friend/reporting/i;->d(I)Lcom/google/googlenav/friend/reporting/i;

    :cond_a0
    invoke-virtual {v6}, Lcom/google/googlenav/friend/reporting/i;->a()Lcom/google/googlenav/friend/reporting/g;

    move-result-object v0

    :try_start_a4
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b:Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/b;->a(Lcom/google/googlenav/friend/reporting/g;)Z
    :try_end_a9
    .catch Lcom/google/googlenav/friend/reporting/c; {:try_start_a4 .. :try_end_a9} :catch_d0

    move-result v0

    if-eqz v0, :cond_ac

    :cond_ac
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/l;->c()J

    move-result-wide v5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    :goto_b8
    invoke-direct {p0, v5, v6, v1}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/l;->c(J)Z

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a()V

    goto/16 :goto_d

    :cond_cc
    move v0, v2

    goto :goto_65

    :cond_ce
    move v1, v2

    goto :goto_b8

    :catch_d0
    move-exception v0

    goto/16 :goto_d
.end method

.method a(Landroid/location/Location;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-static {p0}, Lf/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a:Z

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/reporting/a;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/a;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v0, Lcom/google/googlenav/friend/reporting/l;

    const-string v2, "LOCATION_REPORTING"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/friend/reporting/l;-><init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/a;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    new-instance v0, Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/l;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/googlenav/friend/reporting/b;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/a;Lcom/google/googlenav/friend/reporting/l;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b:Lcom/google/googlenav/friend/reporting/b;

    new-instance v0, Lcom/google/googlenav/android/J;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/J;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->c:Lcom/google/googlenav/android/J;

    new-instance v0, Lcom/google/googlenav/friend/reporting/e;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/e;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->d:Lcom/google/googlenav/friend/reporting/e;

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Laf/a;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "LocationReceiverService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
