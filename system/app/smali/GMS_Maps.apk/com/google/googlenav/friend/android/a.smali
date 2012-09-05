.class public Lcom/google/googlenav/friend/android/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/google/googlenav/friend/android/p;

.field private final e:Lcom/google/googlenav/friend/checkins/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/p;Lcom/google/googlenav/friend/checkins/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    iput-object p1, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .registers 5

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_26
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/google/googlenav/friend/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/a;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;Lam/b;)V
    .registers 11

    const-wide v5, 0x412e848000000000L

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_22
    new-instance v3, Lax/bo;

    invoke-direct {v3}, Lax/bo;-><init>()V

    invoke-virtual {v3, v1}, Lax/bo;->a(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lax/bo;->b(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lax/bo;->e(I)Lax/bo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lax/bo;->f(I)Lax/bo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lax/bo;->a(Z)Lax/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lax/bo;->b(Z)Lax/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lax/bo;->c(Z)Lax/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lax/bo;->g(I)Lax/bo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/friend/android/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/android/c;-><init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;)V

    invoke-virtual {v1}, Lax/bo;->a()Lax/bm;

    move-result-object v1

    invoke-virtual {v1}, Lax/bm;->n()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lax/bp;

    if-eqz v4, :cond_78

    iget-boolean v1, v4, Lax/bp;->a:Z

    if-eqz v1, :cond_78

    iget-object v1, v4, Lax/bp;->b:Lam/b;

    iget-object v2, v4, Lax/bp;->c:Ljava/util/List;

    iget-object v3, v4, Lax/bp;->d:Lam/b;

    iget-wide v4, v4, Lax/bp;->e:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/friend/android/c;->a(Lam/b;Ljava/util/List;Lam/b;J)V

    :goto_6e
    const-string v0, "cas"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    return-void

    :cond_74
    const v0, 0x1869f

    goto :goto_22

    :cond_78
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/android/c;->a(J)V

    goto :goto_6e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .registers 19

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification;

    move/from16 v0, p7

    invoke-direct {v5, v0, p1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    if-eqz p8, :cond_1e

    const/4 v1, -0x1

    iput v1, v5, Landroid/app/Notification;->defaults:I

    :cond_1e
    const/4 v2, 0x1

    sget-object v1, Lcom/google/googlenav/android/Q;->a:Landroid/net/Uri;

    invoke-static {v1, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p6, :cond_2e

    const/4 v2, 0x2

    sget-object v1, Lcom/google/googlenav/android/Q;->b:Landroid/net/Uri;

    invoke-static {v1, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2e
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    const-class v9, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification_fired"

    invoke-virtual {v6, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p6, :cond_63

    const-string v1, "source"

    const-string v3, "cn"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_4c
    const-string v1, "location"

    invoke-virtual {p5}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v3

    invoke-virtual {v3}, Lam/b;->f()[B

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_59} :catch_83

    :goto_59
    iget-boolean v1, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    if-eqz v1, :cond_63

    const-string v1, "optout"

    const/4 v3, 0x1

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_63
    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v7, 0x4000

    invoke-static {v3, v4, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, v1, p2, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/a;->b()V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-eqz p6, :cond_7f

    invoke-static {}, Lax/aA;->F()V

    :goto_7e
    return-void

    :cond_7f
    invoke-static {}, Lax/aA;->E()V

    goto :goto_7e

    :catch_83
    move-exception v1

    goto :goto_59
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/friend/android/a;->a:Z

    return-void
.end method

.method static a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

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

    const-wide v5, 0x412e848000000000L

    invoke-virtual {p1}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lam/b;)LaJ/B;

    move-result-object v0

    new-instance v1, LaJ/B;

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

    invoke-direct {v1, v2, v3}, LaJ/B;-><init>(II)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static c()Lam/b;
    .registers 3

    const/16 v0, 0x4e

    const-string v1, "sm"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/android/d;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/friend/android/d;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/friend/android/d;-><init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/android/b;)V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->e:Lcom/google/googlenav/friend/checkins/b;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/checkins/b;->a()LaY/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v0}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/friend/checkins/c;)V
    .registers 4

    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p1, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x4396

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-boolean v0, p1, Lcom/google/googlenav/friend/checkins/c;->e:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p1, Lcom/google/googlenav/friend/checkins/c;->f:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/a;->b()V

    goto :goto_4

    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/a;->a()Lcom/google/googlenav/friend/android/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->d:Lcom/google/googlenav/friend/android/p;

    invoke-interface {v1}, Lcom/google/googlenav/friend/android/p;->a()V

    :cond_2a
    invoke-static {}, Lcom/google/googlenav/friend/android/a;->c()Lam/b;

    move-result-object v1

    invoke-static {v1}, Laf/o;->a(Lam/b;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;Lam/b;)V

    goto :goto_4
.end method
