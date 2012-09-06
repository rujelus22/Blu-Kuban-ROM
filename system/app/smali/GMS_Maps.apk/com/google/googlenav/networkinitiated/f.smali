.class public Lcom/google/googlenav/networkinitiated/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/networkinitiated/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Landroid/app/Notification;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 104
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, p3, p2, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 105
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 106
    const/4 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 107
    const/4 v0, 0x0

    const/high16 v1, 0x4000

    invoke-static {p0, v0, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, p0, p1, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 109
    return-object v2
.end method

.method private c(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "gaiaId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const/16 v3, 0x17b

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 77
    const/16 v4, 0x17a

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_40
    const v4, 0x7f020280

    .line 85
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    sget-object v7, Lcom/google/googlenav/android/M;->a:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/content/Context;

    const-class v9, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v6, "source"

    const-string v7, "ce"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v6, "gaiaId"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v2, 0x1400

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    const/4 v2, 0x3

    iget-object v6, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/content/Context;

    invoke-static {v6, v3, v1, v4, v5}, Lcom/google/googlenav/networkinitiated/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    const/16 v0, 0x3d

    const-string v1, "pm"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 99
    return-void

    .line 80
    :cond_73
    const/16 v1, 0xa9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 50
    const-string v0, "pingMe"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    const-string v0, "op"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "pingMe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->c(Landroid/content/Intent;)V

    .line 62
    :cond_11
    return-void
.end method
