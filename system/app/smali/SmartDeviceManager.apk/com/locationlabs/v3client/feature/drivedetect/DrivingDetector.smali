.class public Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;
.super Landroid/app/IntentService;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;,
        Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b:Z

    .line 754
    new-instance v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    invoke-direct {v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    const-string v0, "DrivingDetector"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    .line 208
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 212
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->k()V

    .line 222
    :goto_d
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "DWD_GPS_MIN_UPDATE_INTERVAL_MILLIS"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "DWD_GPS_MIN_UPDATE_DISTANCE_METERS"

    invoke-static {v4}, Ln;->e(Ljava/lang/String;)F

    move-result v4

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 227
    return-void

    .line 219
    :cond_25
    const-string v0, "DWD_GPS_TIMEOUT_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_d
.end method

.method private a(J)V
    .registers 8
    .parameter

    .prologue
    .line 511
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 512
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->i()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 515
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b:Z

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.BEGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 690
    if-eqz p1, :cond_d

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.IS_DRIVING_NOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    :goto_9
    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 701
    return-void

    .line 695
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.IS_NOT_DRIVING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private b()V
    .registers 3

    .prologue
    .line 247
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 248
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e()Landroid/app/PendingIntent;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 250
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 253
    return-void
.end method

.method private b(J)V
    .registers 9
    .parameter

    .prologue
    .line 705
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 706
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 707
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 709
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;

    .line 710
    iget-wide v2, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d:J

    iget-wide v4, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->b:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-lez v0, :cond_c

    .line 713
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 716
    :cond_2b
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 261
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b()V

    .line 263
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    .line 265
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->f()Landroid/app/PendingIntent;

    move-result-object v0

    .line 266
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 267
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 269
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    .line 271
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.PHONE_OFFHOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method

.method private d()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.GPSFIX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 302
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private f()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.END_GPS_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private g()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.NETFIX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 9

    .prologue
    const-wide/16 v4, 0x3e8

    .line 475
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 477
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 478
    const-string v0, "DWD_ONPHONE_CHECK_INTERVAL_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 479
    invoke-direct {p0, v0, v1}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(J)V

    .line 504
    :cond_1c
    :goto_1c
    return-void

    .line 483
    :cond_1d
    const-string v0, "DWD_MIN_CHECK_ANYWAY_INTERVAL_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 484
    const-string v2, "DWD_MAX_CHECK_ANYWAY_INTERVAL_SEC"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    .line 486
    iget-wide v4, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    sget-object v6, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v6, v6, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    sub-long/2addr v4, v6

    .line 488
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v2

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1c

    .line 492
    cmp-long v6, v4, v2

    if-lez v6, :cond_44

    move-wide v0, v2

    .line 501
    :cond_40
    :goto_40
    invoke-direct {p0, v0, v1}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(J)V

    goto :goto_1c

    .line 495
    :cond_44
    cmp-long v2, v4, v0

    if-ltz v2, :cond_40

    move-wide v0, v4

    goto :goto_40
.end method

.method private i()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    const-string v1, "com.locationlabs.v3client.action.CHECK_DRIVING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .registers 2

    .prologue
    .line 525
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 528
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->h()V

    .line 537
    :goto_b
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c()V

    .line 538
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->h()V

    .line 540
    return-void

    .line 533
    :cond_12
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->l()V

    goto :goto_b
.end method

.method private k()V
    .registers 10

    .prologue
    .line 644
    const-string v0, "DWD_GPS_SAMPLE_TIME_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v1, v0, v2

    .line 647
    const-string v0, "DWD_GPS_SAMPLE_STOP_SLOP_MSEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    .line 651
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v5, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    add-long/2addr v5, v1

    iput-wide v5, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    .line 655
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 656
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->f()Landroid/app/PendingIntent;

    move-result-object v5

    .line 657
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 658
    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v1, v7

    add-long/2addr v1, v3

    invoke-virtual {v0, v6, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 661
    return-void
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 675
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    iput-wide v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    .line 676
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    .line 677
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->k()V

    .line 679
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput v3, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    .line 681
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 683
    invoke-static {p0, v3}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(Landroid/content/Context;Z)V

    .line 684
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 14
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    sget-boolean v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b:Z

    if-eqz v0, :cond_9

    .line 155
    :cond_8
    :goto_8
    return-void

    .line 99
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d:J

    .line 103
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_23

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    .line 105
    :cond_23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2f

    .line 108
    const-string v0, "DrivingDetector null action intent"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 111
    :cond_2f
    const-string v1, "com.locationlabs.v3client.action.BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 112
    sput-boolean v4, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b:Z

    const-string v0, "begin driving detection"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "Network not enabled"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "GPS not enabled"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    :cond_5c
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a()V

    const-string v0, "DWD_USE_CELL_POLLING"

    invoke-static {v0, v5}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "DWD: Using CELL"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    const-string v0, "DWD_CELL_POLLING_INTERVAL_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    .line 152
    :cond_79
    :goto_79
    const-string v0, "DWD_MAX_CELL_ENTRIES"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v0, :cond_8

    const-string v1, "DWD_MAX_CELL_AGE_MSEC"

    invoke-static {v1}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b(J)V

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v0, :cond_8

    const-string v1, "DWD_TRIM_CELLS_TIME_MSEC"

    invoke-static {v1}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b(J)V

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v0, :cond_8

    const-string v1, "DWD_OVERLIMIT_TRIM_CELLS_TIME_MSEC"

    invoke-static {v1}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b(J)V

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v0, :cond_8

    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_8

    .line 112
    :cond_cb
    const-string v0, "DWD: Using NET"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-string v2, "DWD_NETWORK_MIN_UPDATE_INTERVAL_MILLIS"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "DWD_NETWORK_MIN_UPDATE_DISTANCE_METERS"

    invoke-static {v4}, Ln;->e(Ljava/lang/String;)F

    move-result v4

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_79

    .line 114
    :cond_e8
    const-string v1, "com.locationlabs.v3client.action.END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 115
    sput-boolean v5, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b:Z

    const-string v0, "end driving detection"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c()V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.PASSIVEFIX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->i()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    goto/16 :goto_79

    .line 117
    :cond_152
    const-string v1, "com.locationlabs.v3client.action.GPSFIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e2

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_79

    const-string v1, "fake"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    invoke-virtual {v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a()Z

    move-result v2

    if-nez v2, :cond_185

    const-string v2, "DWD_USE_CELL_POLLING"

    invoke-static {v2, v5}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_185

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->g()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    :cond_185
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const-string v3, "DWD_GPS_MAX_ACCEPTABLE_UNCERTAINTY_METERS"

    invoke-static {v3}, Ln;->c(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_213

    if-nez v1, :cond_1a4

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_1a4

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->k()V

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b()V

    :cond_1a4
    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    if-nez v1, :cond_1ae

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-object v0, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    :cond_1ae
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    invoke-virtual {v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a()Z

    move-result v2

    if-nez v2, :cond_25b

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v2, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    invoke-virtual {v2, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const-string v3, "DWD_MIN_TRAVEL_DISTANCE_METERS"

    invoke-static {v3}, Ln;->c(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_22a

    const-string v2, "moved too far, resetting seen table"

    invoke-static {v2}, Li;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v2, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-object v0, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    :cond_1dd
    :goto_1dd
    const-string v2, "DWD_DRIVING_SPEED_METERS_SEC"

    invoke-static {v2}, Ln;->e(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23f

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    const-string v1, "DWD_FAST_SAMPLES_REQUIRED"

    invoke-static {v1}, Ln;->c(Ljava/lang/String;)I

    move-result v1

    if-le v2, v1, :cond_20f

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->k()V

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v2, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    iput-wide v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-wide v10, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput v4, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput v4, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    invoke-static {p0, v5}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(Landroid/content/Context;Z)V

    :cond_20f
    :goto_20f
    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-object v0, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->g:Landroid/location/Location;

    :cond_213
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_79

    iget-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v2, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_79

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c()V

    goto/16 :goto_79

    :cond_22a
    const-string v3, "DWD_MIN_TRIM_DISTANCE_METERS"

    invoke-static {v3}, Ln;->c(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1dd

    const-string v2, "DWD_TRIM_CELLS_TIME_MSEC"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b(J)V

    goto :goto_1dd

    :cond_23f
    iget-wide v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    sget-object v3, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v3, v3, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_24d

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->h()V

    goto :goto_20f

    :cond_24d
    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    if-lez v1, :cond_20f

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    goto :goto_20f

    :cond_25b
    const-string v2, "DWD_NOT_DRIVING_SPEED_METERS_SEC"

    invoke-static {v2}, Ln;->e(Ljava/lang/String;)F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28c

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    const-string v2, "DWD_STOP_SAMPLES_REQUIRED"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_27e

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    :goto_279
    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-object v0, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    goto :goto_20f

    :cond_27e
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->l()V

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    const-string v2, "DWD_FAST_SAMPLE_CREDIT_REDRIVE"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    goto :goto_279

    :cond_28c
    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput v4, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    const v2, 0x41d69446

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_29d

    const/high16 v1, 0x3fc0

    :cond_29d
    iget-wide v2, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c:J

    sget-object v4, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-wide v4, v4, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    sub-long/2addr v2, v4

    const-string v4, "DWD_MAX_DRIVING_CONSIDERATION_SEC"

    invoke-static {v4}, Ln;->c(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_2b3

    move-wide v2, v4

    :cond_2b3
    const-string v6, "DWD_REFERENCE_CHECK_INTERVAL_SEC"

    invoke-static {v6}, Ln;->c(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    long-to-float v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v6

    long-to-float v3, v4

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v1, v1

    const-string v3, "DWD_MAX_CHECK_DELAY_MILLIS"

    invoke-static {v3}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "DWD_MIN_CHECK_DELAY_MILLIS"

    invoke-static {v5}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_2db

    move-wide v1, v3

    :cond_2db
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->c()V

    invoke-direct {p0, v1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(J)V

    goto :goto_279

    .line 120
    :cond_2e2
    const-string v1, "com.locationlabs.v3client.action.NETFIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_363

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    const-string v1, "com.locationlabs.extra.CELL_STRING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_348

    new-instance v0, Lau;

    invoke-direct {v0, v1}, Lau;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_304
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a()Z

    move-result v0

    if-nez v0, :cond_79

    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iput-object v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->f:Lau;

    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v0, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;

    if-eqz v0, :cond_353

    iget-wide v2, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d:J

    iget-wide v4, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->b:J

    sub-long/2addr v2, v4

    const-string v4, "DWD_MAX_CELL_AGE_MSEC"

    invoke-static {v4}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_353

    iget-wide v2, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->d:J

    iput-wide v2, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->b:J

    :goto_32f
    iget-wide v1, v1, Lau;->e:J

    sget-object v3, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v3, v3, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_79

    sget-object v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v1, v1, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->g:Landroid/location/Location;

    iput-object v1, v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->a:Landroid/location/Location;

    goto/16 :goto_79

    :cond_348
    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    new-instance v1, Lau;

    invoke-direct {v1, v0}, Lau;-><init>(Landroid/location/Location;)V

    goto :goto_304

    :cond_353
    new-instance v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;

    invoke-direct {v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;-><init>()V

    sget-object v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->e:Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;

    iget-object v2, v2, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a()V

    goto :goto_32f

    .line 123
    :cond_363
    const-string v1, "com.locationlabs.v3client.action.PASSIVEFIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 126
    const-string v1, "com.locationlabs.v3client.action.CHECK_DRIVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_378

    .line 127
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a()V

    goto/16 :goto_79

    .line 129
    :cond_378
    const-string v1, "com.locationlabs.v3client.action.TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_385

    .line 130
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->j()V

    goto/16 :goto_79

    .line 132
    :cond_385
    const-string v1, "com.locationlabs.v3client.action.END_GPS_POLL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 133
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->j()V

    goto/16 :goto_79

    .line 141
    :cond_392
    const-string v1, "com.locationlabs.v3client.action.PHONE_OFFHOOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39f

    .line 142
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a()V

    goto/16 :goto_79

    .line 145
    :cond_39f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    goto/16 :goto_79
.end method
