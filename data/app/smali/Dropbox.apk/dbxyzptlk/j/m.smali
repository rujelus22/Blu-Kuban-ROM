.class public final Ldbxyzptlk/j/m;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static f:Ldbxyzptlk/j/m;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ldbxyzptlk/p/x;

.field private final c:Ljava/lang/Object;

.field private volatile d:Landroid/content/SharedPreferences;

.field private volatile e:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/j/m;->c:Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/m;->a:Landroid/content/Context;

    .line 133
    new-instance v0, Ldbxyzptlk/j/n;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/n;-><init>(Ldbxyzptlk/j/m;)V

    invoke-virtual {v0}, Ldbxyzptlk/j/n;->start()V

    .line 140
    return-void
.end method

.method public static B()V
    .registers 7

    .prologue
    .line 511
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 512
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v1

    iget-object v1, v1, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    .line 514
    invoke-static {}, Lcom/dropbox/android/util/h;->b()Lcom/dropbox/android/util/r;

    move-result-object v2

    .line 516
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v3

    .line 517
    if-eqz v3, :cond_34

    .line 518
    const-string v4, "COUNTRY"

    iget-object v5, v3, Ldbxyzptlk/p/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 519
    const-string v4, "QUOTA_QUOTA"

    iget-wide v5, v3, Ldbxyzptlk/p/x;->c:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 520
    const-string v4, "QUOTA_NORMAL"

    iget-wide v5, v3, Ldbxyzptlk/p/x;->d:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 521
    const-string v4, "QUOTA_SHARED"

    iget-wide v5, v3, Ldbxyzptlk/p/x;->e:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 524
    :cond_34
    const-string v3, "CAMERA_UPLOAD_ENABLED"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 525
    const-string v3, "CAMERA_UPLOAD_INITIAL_SCAN"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->h()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 526
    const-string v3, "CAMERA_UPLOAD_HAS_UPLOADED_ONCE"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->g()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 527
    const-string v3, "CAMERA_UPLOAD_HASH_UPDATE"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v4

    invoke-virtual {v4}, Ldbxyzptlk/j/p;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 528
    const-string v3, "CAMERA_UPLOAD_FIRST_MEDIA_SCAN"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->o()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 529
    const-string v3, "CAMERA_UPLOAD_USE_3G"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->p()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 530
    const-string v3, "CAMERA_UPLOAD_3G_LIMIT"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->q()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 531
    const-string v3, "CAMERA_UPLOAD_IGNORE_EXISTING"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->r()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 532
    const-string v3, "CAMERA_UPLOAD_SEEN_INTRO"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->s()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 533
    const-string v3, "CAMERA_UPLOAD_BROMO_COUNT"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->u()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 534
    const-string v3, "CAMERA_UPLOAD_SEEN_BROMO"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->v()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 535
    const-string v3, "CAMERA_UPLOADS_ALBUM_CURSOR"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 537
    const-string v3, "NOTIFICATIONS_TO_MUTE"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 538
    const-string v3, "NOTIFICATIONS_MUTED"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 539
    const-string v3, "SEEN_TOUR"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->z()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 540
    const-string v3, "UPDATE_NAG_TIMES"

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->e(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 541
    const-string v1, "DID_REPORT_HOST_SPECIAL"

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->E()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 543
    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 544
    return-void
.end method

.method private F()Landroid/content/SharedPreferences;
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Ldbxyzptlk/j/m;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_17

    .line 144
    iget-object v1, p0, Ldbxyzptlk/j/m;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_7
    iget-object v0, p0, Ldbxyzptlk/j/m;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_16

    .line 146
    new-instance v0, Ldbxyzptlk/j/c;

    iget-object v2, p0, Ldbxyzptlk/j/m;->a:Landroid/content/Context;

    const-string v3, "DropboxAccountPrefs"

    invoke-direct {v0, v2, v3}, Ldbxyzptlk/j/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/j/m;->d:Landroid/content/SharedPreferences;

    .line 148
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 150
    :cond_17
    iget-object v0, p0, Ldbxyzptlk/j/m;->d:Landroid/content/SharedPreferences;

    return-object v0

    .line 148
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private G()Landroid/content/SharedPreferences;
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Ldbxyzptlk/j/m;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_17

    .line 155
    iget-object v1, p0, Ldbxyzptlk/j/m;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_7
    iget-object v0, p0, Ldbxyzptlk/j/m;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_16

    .line 157
    new-instance v0, Ldbxyzptlk/j/c;

    iget-object v2, p0, Ldbxyzptlk/j/m;->a:Landroid/content/Context;

    const-string v3, "DropboxPersistentPrefs"

    invoke-direct {v0, v2, v3}, Ldbxyzptlk/j/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/j/m;->e:Landroid/content/SharedPreferences;

    .line 159
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 161
    :cond_17
    iget-object v0, p0, Ldbxyzptlk/j/m;->e:Landroid/content/SharedPreferences;

    return-object v0

    .line 159
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private H()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 587
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private I()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 591
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldbxyzptlk/j/m;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ldbxyzptlk/j/m;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;

    if-nez v0, :cond_a

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_a
    sget-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    const-class v1, Ldbxyzptlk/j/m;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;

    if-nez v0, :cond_10

    .line 110
    new-instance v0, Ldbxyzptlk/j/m;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 114
    monitor-exit v1

    return-void

    .line 112
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_16

    .line 109
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ldbxyzptlk/j/m;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ldbxyzptlk/j/m;
    .registers 2
    .parameter

    .prologue
    .line 124
    sget-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;

    if-nez v0, :cond_a

    .line 126
    new-instance v0, Ldbxyzptlk/j/m;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/m;-><init>(Landroid/content/Context;)V

    .line 128
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Ldbxyzptlk/j/m;->f:Ldbxyzptlk/j/m;

    goto :goto_9
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 430
    const-string v0, ""

    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_a

    .line 434
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 437
    :cond_a
    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 446
    :goto_22
    invoke-static {v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 449
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 450
    if-eqz v0, :cond_46

    .line 451
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_46

    .line 453
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_46

    .line 456
    const-string v1, "\\W"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_46
    invoke-static {v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 464
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    :cond_54
    return-object v1

    :cond_55
    move-object v1, v0

    goto :goto_22
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 4

    .prologue
    .line 471
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEVICE_UDID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 483
    :goto_12
    return-object v0

    .line 479
    :cond_13
    iget-object v0, p0, Ldbxyzptlk/j/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ldbxyzptlk/j/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-direct {p0}, Ldbxyzptlk/j/m;->I()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DEVICE_UDID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_12
.end method

.method public final C()J
    .registers 5

    .prologue
    .line 551
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ANAL_NEXT_ROTATION"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()Ljava/lang/String;
    .registers 4

    .prologue
    .line 566
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ANAL_LAST_USER_INFO"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()Z
    .registers 4

    .prologue
    .line 579
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DID_REPORT_HOST_SPECIAL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_BROMO_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    return-void
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 558
    invoke-direct {p0}, Ldbxyzptlk/j/m;->I()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ANAL_NEXT_ROTATION"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_EXPORT_URI_V2"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method public final a(Ldbxyzptlk/j/o;)V
    .registers 5
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_NOTIFICATION"

    invoke-virtual {p1}, Ldbxyzptlk/j/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method public final a(Ldbxyzptlk/j/p;)V
    .registers 5
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HASH_UPDATE"

    invoke-virtual {p1}, Ldbxyzptlk/j/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    return-void
.end method

.method public final a(Ldbxyzptlk/p/x;)V
    .registers 6
    .parameter

    .prologue
    .line 191
    if-eqz p1, :cond_51

    .line 192
    iput-object p1, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    .line 193
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    const-string v1, "COUNTRY"

    iget-object v2, p1, Ldbxyzptlk/p/x;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v1, "DISPLAY_NAME"

    iget-object v2, p1, Ldbxyzptlk/p/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v1, "QUOTA_QUOTA"

    iget-wide v2, p1, Ldbxyzptlk/p/x;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v1, "QUOTA_NORMAL"

    iget-wide v2, p1, Ldbxyzptlk/p/x;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v1, "QUOTA_SHARED"

    iget-wide v2, p1, Ldbxyzptlk/p/x;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v1, "UID"

    iget-wide v2, p1, Ldbxyzptlk/p/x;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v1, "REFERRAL_LINK"

    iget-object v2, p1, Ldbxyzptlk/p/x;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v1, "EMAIL"

    iget-object v2, p1, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    iget-wide v1, p1, Ldbxyzptlk/p/x;->f:J

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    .line 207
    :goto_50
    return-void

    .line 205
    :cond_51
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    goto :goto_50
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_URI"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 376
    invoke-static {p1}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CAMERA_UPLOAD_BROMO_MAX_IDS"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    return-void
.end method

.method public final a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    if-nez p1, :cond_1a

    .line 242
    const-string v1, "CAMERA_UPLOAD_INITIAL_SCAN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HAS_UPLOADED_ONCE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    :cond_1a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 165
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    .line 166
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    .line 168
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOADS_ALBUM_CURSOR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HAS_UPLOADED_ONCE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method

.method public final c()Ldbxyzptlk/p/x;
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    .line 172
    iget-object v0, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    if-nez v0, :cond_5c

    .line 173
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    const-string v1, "UID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 175
    const-string v1, "COUNTRY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "DISPLAY_NAME"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v3, "QUOTA_QUOTA"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 178
    const-string v3, "QUOTA_NORMAL"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 179
    const-string v3, "QUOTA_SHARED"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 180
    const-string v3, "UID"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 181
    const-string v5, "REFERRAL_LINK"

    const-string v12, ""

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    const-string v12, "EMAIL"

    const-string v13, ""

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 183
    new-instance v0, Ldbxyzptlk/p/x;

    invoke-direct/range {v0 .. v12}, Ldbxyzptlk/p/x;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJLjava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    .line 184
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    iget-wide v1, v1, Ldbxyzptlk/p/x;->f:J

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    .line 187
    :cond_5c
    iget-object v0, p0, Ldbxyzptlk/j/m;->b:Ldbxyzptlk/p/x;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 409
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_TO_MUTE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method

.method public final c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_INITIAL_SCAN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 214
    new-instance v0, Lcom/dropbox/android/util/Z;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "LAST_URI"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 418
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_MUTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void
.end method

.method public final d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HAD_BACKLOG"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    return-void
.end method

.method public final e(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "UPDATE_NAG_VERSION"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    if-eqz p1, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 489
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "UPDATE_NAG_TIMES"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 491
    :cond_1f
    return v0
.end method

.method public final e()Landroid/net/Uri;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "LAST_EXPORT_URI_V2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_11

    .line 225
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    :cond_11
    return-object v0
.end method

.method public final e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 324
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_FIRST_MEDIA_SCAN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 496
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 498
    const-string v3, "UPDATE_NAG_VERSION"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 501
    const-string v3, "UPDATE_NAG_TIMES"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 506
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    .line 507
    const-string v1, "UPDATE_NAG_TIMES"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void

    .line 503
    :cond_2b
    const-string v1, "UPDATE_NAG_VERSION"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f
.end method

.method public final f(Z)V
    .registers 4
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_USE_3G"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method

.method public final f()Z
    .registers 4

    .prologue
    .line 236
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 575
    invoke-direct {p0}, Ldbxyzptlk/j/m;->I()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ANAL_LAST_USER_INFO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    return-void
.end method

.method public final g(Z)V
    .registers 4
    .parameter

    .prologue
    .line 340
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_3G_LIMIT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public final g()Z
    .registers 4

    .prologue
    .line 248
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HAS_UPLOADED_ONCE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h(Z)V
    .registers 4
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_IGNORE_EXISTING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    return-void
.end method

.method public final h()Z
    .registers 4

    .prologue
    .line 262
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_INITIAL_SCAN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Ldbxyzptlk/j/p;
    .registers 4

    .prologue
    .line 270
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HASH_UPDATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_12

    .line 272
    invoke-static {v0}, Ldbxyzptlk/j/p;->valueOf(Ljava/lang/String;)Ldbxyzptlk/j/p;

    move-result-object v0

    .line 274
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ldbxyzptlk/j/p;->b:Ldbxyzptlk/j/p;

    goto :goto_11
.end method

.method public final i(Z)V
    .registers 4
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_SEEN_INTRO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    return-void
.end method

.method public final j()Ldbxyzptlk/j/o;
    .registers 4

    .prologue
    .line 282
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_NOTIFICATION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_12

    .line 284
    invoke-static {v0}, Ldbxyzptlk/j/o;->valueOf(Ljava/lang/String;)Ldbxyzptlk/j/o;

    move-result-object v0

    .line 286
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ldbxyzptlk/j/o;->a:Ldbxyzptlk/j/o;

    goto :goto_11
.end method

.method public final j(Z)V
    .registers 4
    .parameter

    .prologue
    .line 393
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_SEEN_BROMO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method

.method public final k()J
    .registers 5

    .prologue
    .line 294
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_NUM_UPLOADS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(Z)V
    .registers 4
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Ldbxyzptlk/j/m;->I()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SEEN_TOUR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public final l()V
    .registers 7

    .prologue
    .line 298
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_NUM_UPLOADS"

    invoke-virtual {p0}, Ldbxyzptlk/j/m;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 299
    return-void
.end method

.method public final l(Z)V
    .registers 4
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Ldbxyzptlk/j/m;->I()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DID_REPORT_HOST_SPECIAL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 584
    return-void
.end method

.method public final m()V
    .registers 5

    .prologue
    .line 302
    invoke-direct {p0}, Ldbxyzptlk/j/m;->H()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_NUM_UPLOADS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 303
    return-void
.end method

.method public final n()Z
    .registers 4

    .prologue
    .line 306
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_HAD_BACKLOG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .registers 4

    .prologue
    .line 320
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_FIRST_MEDIA_SCAN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .registers 4

    .prologue
    .line 328
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_USE_3G"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .registers 4

    .prologue
    .line 336
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_3G_LIMIT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .registers 4

    .prologue
    .line 344
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_IGNORE_EXISTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .registers 4

    .prologue
    .line 352
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_SEEN_INTRO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final t()Ljava/util/Map;
    .registers 4

    .prologue
    .line 360
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_BROMO_MAX_IDS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-nez v0, :cond_13

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    :goto_12
    return-object v0

    .line 366
    :cond_13
    :try_start_13
    new-instance v1, Ldbxyzptlk/C/b;

    invoke-direct {v1}, Ldbxyzptlk/C/b;-><init>()V

    .line 368
    invoke-virtual {v1, v0}, Ldbxyzptlk/C/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1e
    .catch Ldbxyzptlk/C/c; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 370
    :catch_1f
    move-exception v0

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_12
.end method

.method public final u()I
    .registers 4

    .prologue
    .line 381
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_BROMO_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final v()Z
    .registers 4

    .prologue
    .line 389
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOAD_SEEN_BROMO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .registers 4

    .prologue
    .line 401
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAMERA_UPLOADS_ALBUM_CURSOR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 4

    .prologue
    .line 405
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_TO_MUTE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 4

    .prologue
    .line 413
    invoke-direct {p0}, Ldbxyzptlk/j/m;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_MUTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .registers 4

    .prologue
    .line 422
    invoke-direct {p0}, Ldbxyzptlk/j/m;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SEEN_TOUR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
