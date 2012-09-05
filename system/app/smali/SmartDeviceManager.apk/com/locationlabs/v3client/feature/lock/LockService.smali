.class public Lcom/locationlabs/v3client/feature/lock/LockService;
.super Landroid/app/Service;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/lock/LockService$a;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field a:Landroid/app/KeyguardManager$KeyguardLock;

.field private c:Landroid/app/KeyguardManager;

.field private d:Lcom/locationlabs/v3client/feature/lock/LockService$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->d:Lcom/locationlabs/v3client/feature/lock/LockService$a;

    .line 454
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 13
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 131
    const-string v0, "doUnlock"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 132
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-static/range {v0 .. v11}, Lcom/locationlabs/v3client/feature/lock/LockService;->a(Landroid/content/Context;JLjava/lang/Integer;Ldg;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZ)V

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/Integer;Ldg;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZ)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/Integer;",
            "Ldg;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locking the screen for app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lt;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li;->c(Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v3

    .line 83
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_57

    .line 84
    if-nez p4, :cond_57

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Feature not set, until time ("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") is not indicative of an unlock, so not locking"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li;->d(Ljava/lang/String;)V

    .line 128
    :goto_56
    return-void

    .line 90
    :cond_57
    sget-object v4, Ldg;->j:Ldg;

    if-ne p4, v4, :cond_18c

    .line 94
    invoke-static {p1, p2}, Lt;->a(J)J

    move-result-wide p1

    move-wide v6, p1

    :goto_60
    move-object v4, p4

    move-object v5, p3

    move-object/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p10

    .line 106
    invoke-virtual/range {v3 .. v10}, Law;->a(Ldg;Ljava/lang/Integer;JLjava/util/List;ZZ)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 114
    sub-long p1, v6, p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_8c

    .line 115
    const-string p1, "Unlocking the screen"

    invoke-static {p1}, Li;->c(Ljava/lang/String;)V

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string p2, "com.locationlabs.v3client.action.UNLOCK"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p0, p1}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_56

    .line 121
    :cond_8c
    const-string p1, "Locking the screen"

    invoke-static {p1}, Li;->c(Ljava/lang/String;)V

    .line 122
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 123
    move-object/from16 v0, p7

    move-object v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 125
    const-string p2, "lockscreen.delay_sec"

    invoke-static {p2}, Ln;->c(Ljava/lang/String;)I

    move-result p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "locking screen in "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " seconds"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Li;->c(Ljava/lang/String;)V

    sget-boolean p2, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    if-nez p2, :cond_185

    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object p2

    invoke-virtual {p2}, Law;->b()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2}, Law;->c()Ldg;

    move-result-object p2

    const-string p6, "toastMessageText"

    move-object v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lah;->b(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_16a

    invoke-static {p0, p2, p4}, Lah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lef;

    move-result-object p2

    check-cast p2, Ler;

    iget-object p2, p2, Ler;->a:Ljava/lang/String;

    invoke-static {p0, p2}, Lh;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_ec
    new-instance p4, Landroid/content/Intent;

    const-class p2, Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-direct {p4, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.locationlabs.v3client.action.LOCK"

    invoke-virtual {p4, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    move-object/from16 v0, p5

    move-object v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string p5, "com.locationlabs.v3client.extra.PACKAGE_LIST"

    move-object v0, p4

    move-object/from16 v1, p5

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.locationlabs.v3client.extra.WHITELIST_INVERT"

    const/16 p5, 0x1

    move-object v0, p4

    move-object v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p2

    const-string p5, "com.locationlabs.v3client.extra.ACTION"

    move-object v0, p4

    move-object/from16 v1, p5

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.locationlabs.v3client.extra.WHITELIST"

    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.locationlabs.v3client.extra.SMS_AUTOREPLY"

    move-object v0, p4

    move-object v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.locationlabs.v3client.extra.SMS_INCOMING_WHITELIST"

    move-object v0, p4

    move-object v1, p1

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.locationlabs.v3client.extra.ALLOW_HANDS_FREE"

    move-object v0, p4

    move-object v1, p1

    move/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "alarm"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    move v0, p3

    int-to-long v0, v0

    move-wide/from16 p6, v0

    const-wide/16 p8, 0x3e8

    mul-long p6, p6, p8

    add-long p3, p4, p6

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_56

    :cond_16a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Can\'t find resource, not displaying toast msg for lock screen: "

    move-object v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_185
    const-string p2, "Not displaying toast msg b/c we are already locked"

    invoke-static {p2}, Li;->c(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_18c
    move-wide v6, p1

    goto/16 :goto_60
.end method

.method static synthetic a(Lcom/locationlabs/v3client/feature/lock/LockService;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->a:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 418
    :try_start_5
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->d:Lcom/locationlabs/v3client/feature/lock/LockService$a;

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_e

    .line 424
    :goto_a
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->stopSelf()V

    .line 425
    return-void

    :catch_e
    move-exception v0

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)V
    .registers 12
    .parameter

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v2

    invoke-virtual {v2}, Law;->a()J

    move-result-wide v2

    .line 498
    sub-long/2addr v2, v0

    .line 500
    cmp-long v4, v2, v7

    if-gtz v4, :cond_27

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    const-string v1, "com.locationlabs.v3client.action.UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 517
    :goto_26
    return-void

    .line 507
    :cond_27
    rem-long/2addr v2, v9

    .line 509
    cmp-long v4, v2, v7

    if-nez v4, :cond_2d

    move-wide v2, v9

    .line 511
    :cond_2d
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.locationlabs.sparkle.action.COUNTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 514
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 516
    add-long/2addr v0, v2

    invoke-virtual {p0, v6, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_26
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 375
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    if-nez v0, :cond_11

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_33

    .line 378
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 380
    return-void

    .line 375
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    sput-boolean v0, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_33

    invoke-static {}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.SET_WHITELIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/locationlabs/v3client/SMSAutoReplier;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->b()V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->a:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    goto :goto_6

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 234
    new-instance v0, Lcom/locationlabs/v3client/feature/lock/LockService$a;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/feature/lock/LockService$a;-><init>(Lcom/locationlabs/v3client/feature/lock/LockService;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->d:Lcom/locationlabs/v3client/feature/lock/LockService$a;

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    const-string v1, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.locationlabs.sparkle.action.911"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.locationlabs.sparkle.action.COUNTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->d:Lcom/locationlabs/v3client/feature/lock/LockService$a;

    invoke-virtual {p0, v1, v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->c:Landroid/app/KeyguardManager;

    .line 247
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->c:Landroid/app/KeyguardManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->a:Landroid/app/KeyguardManager$KeyguardLock;

    .line 250
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 439
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 447
    const-string v0, "onLowMemory() called"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 448
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 449
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 259
    if-eqz p1, :cond_b1

    .line 260
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "com.locationlabs.v3client.action.LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 264
    monitor-enter p0

    :try_start_14
    sget-boolean v0, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    if-ne v0, v3, :cond_1b

    monitor-exit p0

    .line 284
    :cond_19
    :goto_19
    const/4 v0, 0x2

    return v0

    .line 264
    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/feature/lock/LockService;->b:Z

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_7b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.SET_WHITELIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "com.locationlabs.v3client.extra.WHITELIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.ALLOW_HANDS_FREE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Z)V

    invoke-static {v0}, Lbf;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Ljava/util/List;)V

    const-string v1, "com.locationlabs.v3client.extra.SMS_INCOMING_WHITELIST"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;->a([Ljava/lang/String;)V

    :cond_52
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a()V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService;->a:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->b(Landroid/content/Context;)V

    :cond_63
    const-string v0, "com.locationlabs.v3client.extra.SMS_AUTOREPLY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v1

    invoke-virtual {v0}, Law;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/SMSAutoReplier;->a(Landroid/content/Context;Ldg;Ljava/lang/Integer;)V

    goto :goto_19

    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7e
    invoke-static {p0}, Lcom/locationlabs/v3client/SMSAutoReplier;->a(Landroid/content/Context;)V

    goto :goto_19

    .line 266
    :cond_82
    const-string v1, "com.locationlabs.v3client.action.UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 268
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->a()V

    .line 269
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->b()V

    goto :goto_19

    .line 271
    :cond_91
    const-string v1, "com.locationlabs.v3client.action.thisshouldprobablyberemoved.PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unexpected intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 281
    :cond_b1
    const-string v0, "LockService started with null Intent"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_19
.end method
