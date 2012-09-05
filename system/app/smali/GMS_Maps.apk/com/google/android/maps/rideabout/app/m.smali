.class public abstract Lcom/google/android/maps/rideabout/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/rideabout/app/l;


# static fields
.field static final a:[J


# instance fields
.field protected final b:Landroid/app/Service;

.field protected final c:Landroid/app/Notification;

.field private final d:Landroid/app/NotificationManager;

.field private final e:Landroid/content/Intent;

.field private final f:Lcom/google/android/maps/rideabout/app/d;

.field private g:Z

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/maps/rideabout/app/m;->a:[J

    return-void

    nop

    :array_a
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->d:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020260

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/google/android/maps/rideabout/app/d;

    invoke-direct {v0, p1}, Lcom/google/android/maps/rideabout/app/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->f:Lcom/google/android/maps/rideabout/app/d;

    check-cast p1, Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->f:Lcom/google/android/maps/rideabout/app/d;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lcom/google/android/maps/rideabout/app/A;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/m;-><init>(Landroid/app/Service;)V

    return-void
.end method

.method private static a(Z)I
    .registers 2

    if-eqz p0, :cond_6

    const v0, 0x7f020260

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020261

    goto :goto_5
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/m;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/maps/rideabout/app/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/p;-><init>(Landroid/app/Service;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/maps/rideabout/app/o;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/o;-><init>(Landroid/app/Service;)V

    goto :goto_b
.end method

.method static a(Landroid/app/Notification;ILjava/util/EnumSet;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 10

    const/4 v2, 0x0

    iput p1, p0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->defaults:I

    iput-object v2, p0, Landroid/app/Notification;->vibrate:[J

    iput-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz p3, :cond_22

    if-eqz p4, :cond_20

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/maps/rideabout/app/m;->a:[J

    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    :cond_20
    iput-object p5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/m;->c()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->f:Lcom/google/android/maps/rideabout/app/d;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/d;->a()V

    return-void
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    if-nez p2, :cond_17

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/m;->j:Z

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->h:Ljava/lang/CharSequence;

    invoke-static {v0, p3}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p4}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-static {p1}, Lcom/google/android/maps/rideabout/app/m;->a(Z)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "rideabout"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "/navigation"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/m;->e:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    move-object v3, v0

    check-cast v3, Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object p3, p0, Lcom/google/android/maps/rideabout/app/m;->h:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/maps/rideabout/app/m;->i:Ljava/lang/CharSequence;

    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/m;->j:Z

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/NavigationService;->d()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/rideabout/app/m;->h:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/maps/rideabout/app/m;->i:Ljava/lang/CharSequence;

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/rideabout/app/m;->a(Landroid/app/Notification;ILjava/util/EnumSet;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/m;->h:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/app/m;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :try_start_6a
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->f:Lcom/google/android/maps/rideabout/app/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/m;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/d;->a(Ljava/lang/String;Ljava/util/EnumSet;)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_80} :catch_81

    goto :goto_16

    :catch_81
    move-exception v0

    goto :goto_16
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/m;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/m;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/m;->g:Z

    goto :goto_4
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/m;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/m;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/m;->g:Z

    goto :goto_4
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method
