.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/googlenav/appwidget/traffic/l;
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

.field private m:Laf/a;

.field private n:Landroid/location/LocationManager;

.field private o:Landroid/app/PendingIntent;

.field private p:Lcom/google/googlenav/appwidget/traffic/d;

.field private q:Lcom/google/googlenav/appwidget/traffic/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {}, Lcom/google/googlenav/appwidget/traffic/j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/traffic/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/h;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IJ)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/appwidget/traffic/d;->b(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->c(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_8

    :cond_1b
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v3

    const-string v4, "location"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    :cond_39
    :goto_39
    if-nez v3, :cond_8

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

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

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_44

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_39

    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    goto :goto_39

    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_58

    goto :goto_8

    :cond_75
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->d(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->a(Landroid/net/Uri;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/h;->a(IJ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/h;->b(IJ)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto/16 :goto_8

    :cond_90
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/j;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d(I)V

    goto/16 :goto_8
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/c;Lau/x;Lau/x;)V
    .registers 10

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/k;

    new-instance v3, Lau/j;

    invoke-direct {v3, p2, p3}, Lau/j;-><init>(Lau/x;Lau/x;)V

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/traffic/k;-><init>(Lcom/google/googlenav/appwidget/traffic/l;Lcom/google/googlenav/appwidget/traffic/c;Lau/j;Lcom/google/googlenav/appwidget/traffic/h;Laf/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending traffic request for widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/googlenav/appwidget/traffic/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    iget v0, p1, Lcom/google/googlenav/appwidget/traffic/c;->a:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/i;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/traffic/i;->a()I

    :cond_50
    return-void
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/i;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/i;->a:I

    invoke-static {v1, v2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const-string v1, "c"

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v2}, Lcom/google/googlenav/appwidget/traffic/h;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const-string v1, "lcs"

    iget-wide v2, p1, Lcom/google/googlenav/appwidget/traffic/i;->b:J

    invoke-static {v1, v2, v3, v0}, Laf/m;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    const-string v1, "lce"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/i;->b()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Laf/m;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    const-string v1, "lcd"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/i;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Laf/m;->a(Ljava/lang/String;JLjava/lang/StringBuilder;)V

    const-string v1, "acs"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/i;->c:I

    invoke-static {v1, v2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const-string v1, "ace"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/i;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/i;->e()I

    move-result v2

    invoke-static {v1, v2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    const-string v2, "wlc"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Landroid/location/Location;J)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/c;J)Z
    .registers 9

    const-wide/16 v3, -0x1

    const/4 v0, 0x1

    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/c;->l:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/c;->l:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/c;->h:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    iget-wide v1, p1, Lcom/google/googlenav/appwidget/traffic/c;->h:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-gtz v1, :cond_f

    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(ILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_14

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_15

    if-eqz v0, :cond_13

    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_4

    :catch_11
    move-exception v0

    goto :goto_4

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15
.end method

.method private c()V
    .registers 7

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x4248

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method

.method private c(I)V
    .registers 4

    const-wide/16 v0, 0x7148

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(IJ)V

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private d(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    return-void
.end method

.method private e(I)Lcom/google/googlenav/appwidget/traffic/i;
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/traffic/i;

    if-nez v0, :cond_11

    :cond_11
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private f(I)V
    .registers 7

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/i;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/i;-><init>(IJI)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c()V

    :cond_39
    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private g(I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_41

    if-eqz v1, :cond_40

    monitor-enter v1

    :try_start_2d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/appwidget/traffic/i;->a(JI)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/i;)V

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_44

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

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

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private i(I)Landroid/app/PendingIntent;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/j;->c(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_32

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

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f

    monitor-exit p0

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b()V

    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 15

    const/4 v7, 0x0

    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/traffic/h;->b(I)Lcom/google/googlenav/appwidget/traffic/c;

    move-result-object v8

    if-nez v8, :cond_49

    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_37} :catch_38

    goto :goto_1

    :catch_38
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_42
    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_fa

    return-void

    :cond_49
    :try_start_49
    iget-boolean v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->k:Z

    if-nez v0, :cond_5a

    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    :cond_5a
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_67

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->m:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    :cond_67
    invoke-direct {p0, v8, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/c;J)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/d;->c(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto :goto_1

    :cond_7a
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f(I)V

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v4

    if-nez v4, :cond_90

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_90
    invoke-static {v0}, Lz/f;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v9

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_df

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_df

    new-instance v5, LaJ/B;

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, v8, Lcom/google/googlenav/appwidget/traffic/c;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v0, v6}, LaJ/B;-><init>(II)V

    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lau/x;->a(LaJ/B;Ljava/lang/String;Lt/y;)Lau/x;

    move-result-object v0

    move-object v6, v0

    :goto_ba
    iget-wide v10, v8, Lcom/google/googlenav/appwidget/traffic/c;->i:J

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_f0

    iget-wide v10, v8, Lcom/google/googlenav/appwidget/traffic/c;->i:J

    sub-long v10, v2, v10

    const-wide/32 v12, 0xafc80

    cmp-long v0, v10, v12

    if-lez v0, :cond_e8

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/app/PendingIntent;)V

    :cond_d3
    :goto_d3
    const-wide/32 v0, 0x493e0

    cmp-long v0, v10, v0

    if-ltz v0, :cond_1

    :goto_da
    invoke-direct {p0, v8, v9, v6}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/c;Lau/x;Lau/x;)V

    goto/16 :goto_1

    :cond_df
    iget-object v0, v8, Lcom/google/googlenav/appwidget/traffic/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    move-object v6, v0

    move-object v5, v7

    goto :goto_ba

    :cond_e8
    if-eqz v5, :cond_d3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/appwidget/traffic/d;->a(IJLaJ/B;LaJ/B;)V

    goto :goto_d3

    :cond_f0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Lcom/google/googlenav/appwidget/traffic/d;

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/app/PendingIntent;)V
    :try_end_f9
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_f9} :catch_38

    goto :goto_da

    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0
.end method
