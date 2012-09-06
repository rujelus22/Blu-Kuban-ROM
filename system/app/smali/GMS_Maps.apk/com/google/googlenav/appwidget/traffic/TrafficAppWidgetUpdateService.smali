.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/appwidget/traffic/m;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/location/Criteria;


# instance fields
.field private c:Ljava/lang/Thread;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Map;

.field private h:Z

.field private volatile i:Landroid/location/Location;

.field private j:Landroid/content/Intent;

.field private k:Landroid/content/Intent;

.field private l:Landroid/app/AlarmManager;

.field private m:Lcom/google/googlenav/common/a;

.field private n:Landroid/location/LocationManager;

.field private o:Landroid/app/PendingIntent;

.field private p:Lcom/google/googlenav/appwidget/traffic/e;

.field private q:Lcom/google/googlenav/appwidget/traffic/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    const-class v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    .line 178
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    .line 179
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 180
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 181
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 182
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 183
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 184
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 185
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 193
    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    .line 230
    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    .line 314
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    .line 315
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {}, Lcom/google/googlenav/appwidget/traffic/k;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 321
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    .line 323
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/traffic/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    .line 324
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/i;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 325
    monitor-exit p0

    return-void

    .line 313
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IJ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 680
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/appwidget/traffic/e;->b(ILandroid/app/PendingIntent;)V

    .line 779
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 355
    if-nez p1, :cond_9

    .line 402
    :cond_8
    :goto_8
    return-void

    .line 359
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 360
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->c(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 363
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;)I

    move-result v0

    .line 364
    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_8

    .line 365
    :cond_1b
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 366
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    .line 367
    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v3

    .line 371
    const-string v4, "location"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 372
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    .line 382
    :cond_39
    :goto_39
    if-nez v3, :cond_8

    .line 385
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    .line 386
    :try_start_3e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 387
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_44

    .line 389
    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_58

    throw v0

    .line 374
    :cond_5b
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 375
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 377
    if-eqz v2, :cond_39

    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    .line 379
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    goto :goto_39

    .line 389
    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_58

    goto :goto_8

    .line 391
    :cond_75
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->d(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 392
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;)I

    move-result v2

    .line 393
    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/i;->a(IJ)V

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/i;->b(IJ)V

    .line 395
    invoke-direct {p0, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto/16 :goto_8

    .line 396
    :cond_90
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 397
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Landroid/net/Uri;)I

    move-result v0

    .line 398
    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d(I)V

    goto/16 :goto_8
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/d;Lad/y;Lad/y;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/l;

    new-instance v3, Lad/j;

    invoke-direct {v3, p2, p3}, Lad/j;-><init>(Lad/y;Lad/y;)V

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/traffic/l;-><init>(Lcom/google/googlenav/appwidget/traffic/m;Lcom/google/googlenav/appwidget/traffic/d;Lad/j;Lcom/google/googlenav/appwidget/traffic/i;Lcom/google/googlenav/common/a;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    const-string v2, "Sending traffic request for widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v2, p1, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 603
    iget v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/j;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_50

    .line 605
    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/traffic/j;->a()I

    .line 607
    :cond_50
    return-void
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/j;)V
    .registers 6
    .parameter

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    const-string v1, "id"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->a:I

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 745
    const-string v1, "c"

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v2}, Lcom/google/googlenav/appwidget/traffic/i;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 748
    const-string v1, "lcs"

    iget-wide v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    invoke-static {v1, v2, v3, v0}, LaT/k;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    .line 751
    const-string v1, "lce"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->b()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, LaT/k;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    .line 754
    const-string v1, "lcd"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, LaT/k;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    .line 758
    const-string v1, "acs"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->c:I

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 762
    const-string v1, "ace"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 766
    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->e()I

    move-result v2

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    const/16 v1, 0x48

    const-string v2, "wlc"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method private a(Landroid/location/Location;J)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 570
    if-nez p1, :cond_4

    .line 581
    :cond_3
    :goto_3
    return v0

    .line 575
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    .line 576
    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 581
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/d;J)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x1

    .line 554
    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_10

    .line 563
    :cond_f
    :goto_f
    return v0

    .line 558
    :cond_10
    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/d;->h:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/d;->h:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-gtz v1, :cond_f

    .line 563
    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(ILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 807
    if-eqz p2, :cond_14

    .line 808
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    :cond_14
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 812
    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 2

    .prologue
    .line 630
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    .line 631
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_15

    if-eqz v0, :cond_13

    .line 633
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 634
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_4

    .line 635
    :catch_11
    move-exception v0

    goto :goto_4

    .line 640
    :cond_13
    monitor-exit p0

    return-void

    .line 630
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_16

    .line 417
    :cond_15
    :goto_15
    return-void

    .line 413
    :catch_16
    move-exception v0

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15
.end method

.method private c()V
    .registers 7

    .prologue
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x4248

    .line 648
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 650
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 652
    return-void
.end method

.method private c(I)V
    .registers 4
    .parameter

    .prologue
    .line 668
    const-wide/16 v0, 0x7148

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(IJ)V

    .line 669
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 660
    return-void
.end method

.method private d(I)V
    .registers 4
    .parameter

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    .line 690
    return-void
.end method

.method private e(I)Lcom/google/googlenav/appwidget/traffic/j;
    .registers 5
    .parameter

    .prologue
    .line 693
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    .line 694
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/traffic/j;

    .line 695
    if-nez v0, :cond_11

    .line 698
    :cond_11
    monitor-exit v1

    return-object v0

    .line 699
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private f(I)V
    .registers 7
    .parameter

    .prologue
    .line 703
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    .line 704
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 705
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 707
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/j;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/j;-><init>(IJI)V

    .line 709
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 712
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c()V

    .line 714
    :cond_39
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private g(I)V
    .registers 6
    .parameter

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v2

    .line 720
    :try_start_4
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 722
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/j;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 725
    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 726
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    .line 728
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_41

    .line 729
    if-eqz v1, :cond_40

    .line 730
    monitor-enter v1

    .line 731
    :try_start_2d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/appwidget/traffic/j;->a(JI)V

    .line 732
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/j;)V

    .line 733
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_44

    .line 735
    :cond_40
    return-void

    .line 728
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 733
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    move-object v1, v0

    goto :goto_1e
.end method

.method private h(I)Landroid/app/PendingIntent;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 785
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 787
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 788
    return-object v0
.end method

.method private i(I)Landroid/app/PendingIntent;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 795
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/k;->c(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 797
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 798
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    .line 425
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .registers 4

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 294
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 295
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a()V

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_32

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onCreate() called while a thread is already running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2f

    .line 293
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f

    .line 303
    monitor-exit p0

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 618
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 619
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    .line 620
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b()V

    .line 621
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 622
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 333
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 433
    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    if-nez v0, :cond_40

    .line 435
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 437
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 441
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c(I)V

    .line 445
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/traffic/i;->b(I)Lcom/google/googlenav/appwidget/traffic/d;

    move-result-object v8

    .line 446
    if-nez v8, :cond_49

    .line 448
    const/16 v0, 0x607

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    .line 449
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_37} :catch_38

    goto :goto_1

    .line 524
    :catch_38
    move-exception v0

    .line 526
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 529
    :cond_40
    monitor-enter p0

    .line 530
    const/4 v0, 0x0

    :try_start_42
    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_fa

    .line 534
    return-void

    .line 453
    :cond_49
    :try_start_49
    iget-boolean v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->k:Z

    if-nez v0, :cond_5a

    .line 455
    const/16 v0, 0x607

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    .line 456
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    .line 460
    :cond_5a
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->m:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 462
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->m:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    .line 463
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    .line 468
    :cond_67
    invoke-direct {p0, v8, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/d;J)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 470
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/e;->c(ILandroid/app/PendingIntent;)V

    .line 471
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    .line 475
    :cond_7a
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    .line 476
    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f(I)V

    .line 478
    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v4

    if-nez v4, :cond_90

    .line 480
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 485
    :cond_90
    invoke-static {v0}, Lt/e;->a(Landroid/location/Location;)Lat/B;

    move-result-object v4

    .line 486
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v9

    .line 489
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_df

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_df

    .line 490
    new-instance v5, Lat/B;

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, v8, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lat/B;-><init>(II)V

    .line 491
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lad/y;->a(Lat/B;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v0

    move-object v6, v0

    .line 496
    :goto_ba
    iget-wide v10, v8, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_f0

    .line 497
    iget-wide v10, v8, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    sub-long v10, v2, v10

    .line 501
    const-wide/32 v12, 0xafc80

    cmp-long v0, v10, v12

    if-lez v0, :cond_e8

    .line 504
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/app/PendingIntent;)V

    .line 513
    :cond_d3
    :goto_d3
    const-wide/32 v0, 0x493e0

    cmp-long v0, v10, v0

    if-ltz v0, :cond_1

    .line 522
    :goto_da
    invoke-direct {p0, v8, v9, v6}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/d;Lad/y;Lad/y;)V

    goto/16 :goto_1

    .line 493
    :cond_df
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v0

    move-object v6, v0

    move-object v5, v7

    goto :goto_ba

    .line 505
    :cond_e8
    if-eqz v5, :cond_d3

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/appwidget/traffic/e;->a(IJLat/B;Lat/B;)V

    goto :goto_d3

    .line 519
    :cond_f0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/e;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/app/PendingIntent;)V
    :try_end_f9
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_f9} :catch_38

    goto :goto_da

    .line 532
    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0
.end method
