.class public Lcom/google/googlenav/networkinitiated/g;
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 161
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, p3, p2, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 162
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 163
    const/4 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 164
    invoke-virtual {v2, p0, p1, p2, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 165
    return-object v2
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "intentAction"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v0, "intentData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v0, "intentActivityContext"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    if-eqz v1, :cond_62

    .line 137
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v1, v0

    .line 141
    :goto_22
    if-eqz v2, :cond_27

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_27
    if-eqz v3, :cond_30

    .line 145
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    const-string v4, "e_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 151
    const-string v4, "e_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 139
    :cond_62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    goto :goto_22

    .line 155
    :cond_6b
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 72
    const-string v0, "pushNotification"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 79
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v0, "ticker"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v0, "pendingIntentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/googlenav/networkinitiated/g;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 85
    const-string v4, "source"

    const-string v5, "po"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v4, "ACTIVITY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    .line 110
    :goto_31
    const v4, 0x7f02026d

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 115
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v6, v2, v3, v4, v1}, Lcom/google/googlenav/networkinitiated/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    const/16 v0, 0x3d

    const-string v1, "pn"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 121
    return-void

    .line 96
    :cond_50
    const-string v4, "BROADCAST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v0, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    goto :goto_31

    .line 99
    :cond_60
    const-string v4, "SERVICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v0, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    goto :goto_31

    .line 103
    :cond_70
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    goto :goto_31
.end method
