.class public abstract Lcom/google/android/maps/rideabout/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/app/j;


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

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/maps/rideabout/app/k;->a:[J

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
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Landroid/app/Service;

    .line 57
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->d:Landroid/app/NotificationManager;

    .line 60
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202c7

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Landroid/app/Notification;

    .line 61
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    new-instance v0, Lcom/google/android/maps/rideabout/app/d;

    invoke-direct {v0, p1}, Lcom/google/android/maps/rideabout/app/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->f:Lcom/google/android/maps/rideabout/app/d;

    .line 67
    check-cast p1, Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->f:Lcom/google/android/maps/rideabout/app/d;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lcom/google/android/maps/rideabout/app/y;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/k;-><init>(Landroid/app/Service;)V

    return-void
.end method

.method private static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 131
    if-eqz p0, :cond_6

    .line 132
    const v0, 0x7f0202c7

    .line 134
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f0202c8

    goto :goto_5
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/k;
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    new-instance v0, Lcom/google/android/maps/rideabout/app/n;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/n;-><init>(Landroid/app/Service;)V

    .line 51
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/maps/rideabout/app/m;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/m;-><init>(Landroid/app/Service;)V

    goto :goto_b
.end method

.method static a(Landroid/app/Notification;ILjava/util/EnumSet;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 119
    iput-object v2, p0, Landroid/app/Notification;->vibrate:[J

    .line 120
    iput-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 121
    if-eqz p3, :cond_22

    .line 122
    if-eqz p4, :cond_20

    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 123
    sget-object v0, Lcom/google/android/maps/rideabout/app/k;->a:[J

    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 125
    :cond_20
    iput-object p5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 127
    :cond_22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->c()V

    .line 144
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->f:Lcom/google/android/maps/rideabout/app/d;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/d;->a()V

    .line 147
    return-void
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    if-nez p2, :cond_17

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->j:Z

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->h:Ljava/lang/CharSequence;

    invoke-static {v0, p3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p4}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 106
    :cond_16
    :goto_16
    return-void

    .line 79
    :cond_17
    invoke-static {p1}, Lcom/google/android/maps/rideabout/app/k;->a(Z)I

    move-result v1

    .line 80
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

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

    .line 84
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Landroid/app/Service;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/k;->e:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Landroid/app/Service;

    move-object v3, v0

    check-cast v3, Lcom/google/android/maps/rideabout/app/NavigationService;

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->b:Landroid/app/Service;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v2

    .line 88
    iput-object p3, p0, Lcom/google/android/maps/rideabout/app/k;->h:Ljava/lang/CharSequence;

    .line 89
    iput-object p4, p0, Lcom/google/android/maps/rideabout/app/k;->i:Ljava/lang/CharSequence;

    .line 90
    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/k;->j:Z

    .line 92
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Landroid/app/Notification;

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/NavigationService;->d()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/rideabout/app/k;->h:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/maps/rideabout/app/k;->i:Ljava/lang/CharSequence;

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/rideabout/app/k;->a(Landroid/app/Notification;ILjava/util/EnumSet;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->c:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->b:Landroid/app/Service;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/k;->h:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/app/k;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 97
    :try_start_6a
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/k;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 98
    if-eqz p2, :cond_16

    .line 99
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/k;->f:Lcom/google/android/maps/rideabout/app/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/k;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/d;->a(Ljava/lang/String;Ljava/util/EnumSet;)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_80} :catch_81

    goto :goto_16

    .line 101
    :catch_81
    move-exception v0

    goto :goto_16
.end method

.method public b()V
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->g:Z

    if-eqz v0, :cond_5

    .line 167
    :goto_4
    return-void

    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->d()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->g:Z

    goto :goto_4
.end method

.method public c()V
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->g:Z

    if-nez v0, :cond_5

    .line 179
    :goto_4
    return-void

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/k;->e()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/k;->g:Z

    goto :goto_4
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method
