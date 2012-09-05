.class public Lcom/google/googlenav/RatingReminderManager;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/google/googlenav/aI;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/RatingReminderManager;-><init>(Lcom/google/googlenav/aI;)V

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/aI;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aI;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const-string v0, "http://maps.google.com/maps/place?cid=%s&action=openratings"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.RATING_REMINDER_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v7, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "intent-source"

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0202e2

    const/16 v2, 0x362

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x32f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    const/high16 v6, 0x4000

    invoke-static {v4, v7, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aI;

    if-nez v0, :cond_64

    new-instance v0, Lcom/google/googlenav/aH;

    iget-object v1, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/aH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aI;

    :cond_64
    iget-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aI;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v5}, Lcom/google/googlenav/aI;->a(ILandroid/app/Notification;)V

    const/16 v0, 0x55

    const-string v1, "rrs"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/RatingReminderManager;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/h;)V
    .registers 5

    invoke-static {p0}, Lcom/google/googlenav/RatingReminderManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->o()Lcom/google/googlenav/i;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    if-ne v2, v3, :cond_21

    invoke-static {v1, v0}, Lcom/google/googlenav/RatingReminderManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_21
    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_6

    :cond_2d
    new-instance v0, Lcom/google/googlenav/aF;

    invoke-direct {v0}, Lcom/google/googlenav/aF;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aF;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Z)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aH;

    invoke-direct {v1, v0}, Lcom/google/googlenav/aH;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/google/googlenav/RatingReminderManager;->a(ZLcom/google/googlenav/aI;)V

    return-void
.end method

.method static a(ZLcom/google/googlenav/aI;)V
    .registers 2

    return-void
.end method

.method public static a()Z
    .registers 2

    const-string v0, "RATING_REMINDERS_PREFERENCE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laf/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/google/googlenav/RatingReminderManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    const/4 v1, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/h;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/RatingReminderManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/google/googlenav/h;)Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    invoke-virtual {p0}, Lcom/google/googlenav/h;->o()Lcom/google/googlenav/i;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    if-ne v0, v1, :cond_7

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-static {}, Lcom/google/googlenav/RatingReminderManager;->a()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_e

    :cond_31
    new-instance v3, Lcom/google/googlenav/aE;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/googlenav/aE;-><init>(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aE;->a(Ljava/lang/String;)V

    goto :goto_e
.end method
