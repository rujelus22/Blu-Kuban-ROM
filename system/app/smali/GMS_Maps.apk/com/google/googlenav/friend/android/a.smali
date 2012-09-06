.class public Lcom/google/googlenav/friend/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/google/googlenav/friend/android/p;

.field private final e:Lcom/google/googlenav/friend/checkins/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/p;Lcom/google/googlenav/friend/checkins/b;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    .line 398
    iput-object p1, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    .line 399
    iput-object p2, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    .line 400
    iput-object p3, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    .line 401
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    .line 403
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;)Landroid/app/NotificationManager;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 632
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 633
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    .line 634
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 635
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 638
    :cond_26
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 639
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p8}, Lcom/google/googlenav/friend/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/a;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    const/4 v4, 0x1

    .line 461
    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    .line 462
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 463
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 464
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 474
    :goto_22
    new-instance v3, Lcom/google/googlenav/friend/bi;

    invoke-direct {v3}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->f(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->g(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/bi;->b(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    .line 485
    new-instance v0, Lcom/google/googlenav/friend/android/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/android/c;-><init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;)V

    .line 488
    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/bg;->m()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/googlenav/friend/bj;

    .line 490
    if-eqz v4, :cond_78

    iget-boolean v1, v4, Lcom/google/googlenav/friend/bj;->a:Z

    if-eqz v1, :cond_78

    .line 491
    iget-object v1, v4, Lcom/google/googlenav/friend/bj;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v2, v4, Lcom/google/googlenav/friend/bj;->c:Ljava/util/List;

    iget-object v3, v4, Lcom/google/googlenav/friend/bj;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-wide v4, v4, Lcom/google/googlenav/friend/bj;->e:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    .line 504
    :goto_6e
    const-string v0, "cas"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 505
    return-void

    .line 464
    :cond_74
    const v0, 0x1869f

    goto :goto_22

    .line 496
    :cond_78
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/android/c;->a(J)V

    goto :goto_6e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    .line 521
    new-instance v5, Landroid/app/Notification;

    move/from16 v0, p7

    invoke-direct {v5, v0, p1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 522
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 524
    if-eqz p8, :cond_1e

    .line 525
    const/4 v1, -0x1

    iput v1, v5, Landroid/app/Notification;->defaults:I

    .line 528
    :cond_1e
    const/4 v2, 0x1

    .line 529
    sget-object v1, Lcom/google/googlenav/android/M;->a:Landroid/net/Uri;

    invoke-static {v1, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 530
    if-eqz p6, :cond_2e

    .line 531
    const/4 v2, 0x2

    .line 532
    sget-object v1, Lcom/google/googlenav/android/M;->b:Landroid/net/Uri;

    invoke-static {v1, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 535
    :cond_2e
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    const-class v9, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    const-string v1, "notification_fired"

    invoke-virtual {v6, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 537
    const/high16 v1, 0x1400

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    if-nez p6, :cond_63

    .line 539
    const-string v1, "source"

    const-string v3, "cn"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :try_start_4c
    const-string v1, "location"

    invoke-virtual {p5}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_59} :catch_83

    .line 548
    :goto_59
    iget-boolean v1, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    if-eqz v1, :cond_63

    .line 549
    const-string v1, "optout"

    const/4 v3, 0x1

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    :cond_63
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v7, 0x4000

    invoke-static {v3, v4, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, v1, p2, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 560
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/a;->b()V

    .line 563
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 566
    if-eqz p6, :cond_7f

    .line 567
    invoke-static {}, Lcom/google/googlenav/friend/af;->D()V

    .line 571
    :goto_7e
    return-void

    .line 569
    :cond_7f
    invoke-static {}, Lcom/google/googlenav/friend/af;->C()V

    goto :goto_7e

    .line 544
    :catch_83
    move-exception v1

    goto :goto_59
.end method

.method private a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    .line 355
    return-void
.end method

.method static a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 605
    if-nez p1, :cond_4

    .line 610
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static b(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 619
    invoke-virtual {p1}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    .line 620
    new-instance v1, Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lat/B;-><init>(II)V

    .line 624
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 578
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 579
    return-void
.end method

.method private static c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 647
    const/16 v0, 0x4e

    const-string v1, "sm"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/android/d;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 452
    new-instance v0, Lcom/google/googlenav/friend/android/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/friend/android/d;-><init>(Lcom/google/googlenav/friend/android/b;)V

    .line 453
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/checkins/b;->a()LaM/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v0}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    .line 455
    return-object v0
.end method

.method public a(Lcom/google/googlenav/friend/checkins/c;)V
    .registers 4
    .parameter

    .prologue
    .line 406
    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    if-nez v0, :cond_5

    .line 445
    :cond_4
    :goto_4
    return-void

    .line 411
    :cond_5
    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x4396

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 418
    iget-boolean v0, p1, Lcom/google/googlenav/friend/checkins/c;->e:Z

    if-nez v0, :cond_1d

    .line 438
    iget-boolean v0, p1, Lcom/google/googlenav/friend/checkins/c;->f:Z

    if-eqz v0, :cond_4

    .line 440
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/a;->b()V

    goto :goto_4

    .line 425
    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/a;->a()Lcom/google/googlenav/friend/android/d;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    if-eqz v1, :cond_2a

    .line 429
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    invoke-interface {v1}, Lcom/google/googlenav/friend/android/p;->a()V

    .line 433
    :cond_2a
    invoke-static {}, Lcom/google/googlenav/friend/android/a;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 434
    invoke-static {v1}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 437
    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_4
.end method
