.class public Lcom/google/googlenav/friend/reporting/LocationReceiverService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/googlenav/friend/reporting/g;

.field private c:Lcom/google/googlenav/friend/reporting/d;

.field private d:Lcom/google/googlenav/android/F;

.field private e:Lcom/google/googlenav/friend/reporting/h;

.field private f:Lcom/google/googlenav/friend/reporting/o;

.field private g:Lcom/google/googlenav/friend/reporting/s;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Lcom/google/googlenav/friend/reporting/e;

.field private j:Lcom/google/googlenav/friend/reporting/n;

.field private k:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    const-string v0, "LocationReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 343
    const-string v0, "cell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    const/4 v0, 0x1

    .line 350
    :goto_9
    return v0

    .line 345
    :cond_a
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 346
    const/4 v0, 0x0

    goto :goto_9

    .line 347
    :cond_14
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 348
    const/4 v0, 0x2

    goto :goto_9

    .line 350
    :cond_1e
    const/4 v0, 0x3

    goto :goto_9
.end method

.method private a(Landroid/location/Location;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 286
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

.method private static b(Landroid/location/Location;)Lcom/google/googlenav/friend/reporting/m;
    .registers 7
    .parameter

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 314
    new-instance v0, Lcom/google/googlenav/friend/reporting/m;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/m;-><init>()V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/m;->a(II)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v0

    invoke-static {p0}, Lap/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/m;->a(I)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/m;->a(J)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 320
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/m;->a(F)Lcom/google/googlenav/friend/reporting/m;

    .line 323
    :cond_3b
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 324
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/m;->b(F)Lcom/google/googlenav/friend/reporting/m;

    .line 327
    :cond_48
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 328
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/m;->a(D)Lcom/google/googlenav/friend/reporting/m;

    .line 331
    :cond_55
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 332
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/m;->c(F)Lcom/google/googlenav/friend/reporting/m;

    .line 334
    :cond_62
    return-object v0
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/googlenav/friend/reporting/LocationReportingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    return-void
.end method

.method a(Landroid/content/Intent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    const-string v1, "providerEnabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 255
    :cond_9
    :goto_9
    return-void

    .line 151
    :cond_a
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->i:Lcom/google/googlenav/friend/reporting/e;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/e;->a()Z

    move-result v1

    if-nez v1, :cond_18

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->j:Lcom/google/googlenav/friend/reporting/n;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/n;->b()V

    goto :goto_9

    .line 167
    :cond_18
    invoke-static {p1}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Intent;)Lcom/google/android/location/clientlib/c;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/google/android/location/clientlib/c;->a:Landroid/location/Location;

    if-eqz v2, :cond_9

    .line 181
    const-string v3, "gps"

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 182
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 185
    :cond_37
    iget v3, v1, Lcom/google/android/location/clientlib/c;->b:I

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/location/Location;I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 191
    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/location/Location;)V

    .line 193
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/s;->b(Z)Ljava/util/List;

    move-result-object v5

    .line 196
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/s;->a()Landroid/location/Location;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/h;

    invoke-virtual {v4, v2, v3, v5}, Lcom/google/googlenav/friend/reporting/h;->a(Landroid/location/Location;Landroid/location/Location;Ljava/util/List;)Lcom/google/googlenav/friend/reporting/j;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Lcom/google/googlenav/friend/reporting/j;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 204
    invoke-static {v2}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b(Landroid/location/Location;)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v3

    .line 206
    iget v4, v1, Lcom/google/android/location/clientlib/c;->b:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_68

    .line 207
    iget v4, v1, Lcom/google/android/location/clientlib/c;->b:I

    invoke-virtual {v3, v4}, Lcom/google/googlenav/friend/reporting/m;->b(I)Lcom/google/googlenav/friend/reporting/m;

    .line 210
    :cond_68
    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->d:Lcom/google/googlenav/android/F;

    invoke-virtual {v4}, Lcom/google/googlenav/android/F;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/friend/reporting/m;->c(I)Lcom/google/googlenav/friend/reporting/m;

    .line 211
    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->d:Lcom/google/googlenav/android/F;

    invoke-virtual {v4}, Lcom/google/googlenav/android/F;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/friend/reporting/m;->a(Z)Lcom/google/googlenav/friend/reporting/m;

    .line 212
    invoke-virtual {v6}, Lcom/google/googlenav/friend/reporting/j;->a()Z

    move-result v4

    if-nez v4, :cond_81

    const/4 v0, 0x1

    :cond_81
    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->b(Z)Lcom/google/googlenav/friend/reporting/m;

    .line 214
    iget-object v0, v1, Lcom/google/android/location/clientlib/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_8d

    .line 215
    iget-object v0, v1, Lcom/google/android/location/clientlib/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/m;

    .line 217
    :cond_8d
    iget-object v0, v1, Lcom/google/android/location/clientlib/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_9a

    .line 218
    iget-object v0, v1, Lcom/google/android/location/clientlib/c;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->d(I)Lcom/google/googlenav/friend/reporting/m;

    .line 221
    :cond_9a
    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/m;->a()Lcom/google/googlenav/friend/reporting/k;

    move-result-object v0

    .line 226
    :try_start_9e
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b:Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/reporting/g;->b(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_9e .. :try_end_a3} :catch_d5

    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/location/Location;)Z

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Lcom/google/googlenav/friend/reporting/o;

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/s;->c()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/googlenav/friend/reporting/j;->a()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/friend/reporting/o;->a(JJLjava/util/List;Z)Lcom/google/googlenav/friend/reporting/q;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/q;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/s;->c(J)Z

    .line 250
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a()V

    goto/16 :goto_9

    .line 227
    :catch_d5
    move-exception v0

    goto/16 :goto_9
.end method

.method a(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 299
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 101
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 105
    :cond_c
    invoke-static {p0}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a:Z

    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 108
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->k:Lcom/google/googlenav/common/a;

    .line 109
    invoke-static {p0, v1}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    .line 111
    new-instance v0, Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/googlenav/friend/reporting/g;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;Lcom/google/googlenav/friend/reporting/s;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->b:Lcom/google/googlenav/friend/reporting/g;

    .line 113
    new-instance v0, Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->g:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/reporting/d;-><init>(Landroid/content/Context;LaT/b;Lcom/google/googlenav/friend/reporting/s;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->c:Lcom/google/googlenav/friend/reporting/d;

    .line 115
    new-instance v0, Lcom/google/googlenav/android/F;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/F;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->d:Lcom/google/googlenav/android/F;

    .line 116
    new-instance v0, Lcom/google/googlenav/friend/reporting/h;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->e:Lcom/google/googlenav/friend/reporting/h;

    .line 117
    new-instance v0, Lcom/google/googlenav/friend/reporting/o;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/o;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->f:Lcom/google/googlenav/friend/reporting/o;

    .line 118
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->j:Lcom/google/googlenav/friend/reporting/n;

    .line 120
    new-instance v0, Lcom/google/googlenav/friend/reporting/e;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->i:Lcom/google/googlenav/friend/reporting/e;

    .line 122
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 123
    const/4 v1, 0x1

    const-string v2, "LocationReceiverService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->h:Landroid/os/PowerManager$WakeLock;

    .line 124
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    return-void

    .line 132
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
