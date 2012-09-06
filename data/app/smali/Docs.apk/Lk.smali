.class public LLk;
.super Ljava/lang/Object;
.source "OnDriveEnabledNotificationManager.java"


# instance fields
.field private final a:LLh;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LdO;

.field private final a:Ldg;

.field private final a:LeO;


# direct methods
.method public constructor <init>(LanD;LeO;LdO;LLh;Ldg;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LeO;",
            "LdO;",
            "LLh;",
            "Ldg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, LLk;->a:LanD;

    .line 46
    iput-object p2, p0, LLk;->a:LeO;

    .line 47
    iput-object p3, p0, LLk;->a:LdO;

    .line 48
    iput-object p4, p0, LLk;->a:LLh;

    .line 49
    iput-object p5, p0, LLk;->a:Ldg;

    .line 50
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, LLk;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 105
    const-string v1, "upgradedToDriveNotified"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lde;->a(Ljava/lang/String;Z)V

    .line 106
    iget-object v1, p0, LLk;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Lde;)V
    :try_end_11
    .catch Ldh; {:try_start_0 .. :try_end_11} :catch_12

    .line 111
    :goto_11
    return-void

    .line 107
    :catch_12
    move-exception v0

    .line 108
    const-string v0, "OnDriveEnabledNotificationManager"

    const-string v1, "Failed to save account flags"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_1
    iget-object v1, p0, LLk;->a:Ldg;

    invoke-interface {v1, p1}, Ldg;->a(Ljava/lang/String;)Lde;
    :try_end_6
    .catch Ldh; {:try_start_1 .. :try_end_6} :catch_e

    move-result-object v1

    .line 97
    const-string v2, "upgradedToDriveNotified"

    invoke-interface {v1, v2, v0}, Lde;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    :goto_d
    return v0

    .line 92
    :catch_e
    move-exception v1

    .line 93
    const-string v1, "OnDriveEnabledNotificationManager"

    const-string v2, "Failed to load account flags"

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, LLk;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 61
    iget-object v2, p0, LLk;->a:LdO;

    invoke-virtual {v2, p1}, LdO;->a(Ljava/lang/String;)LdL;

    move-result-object v2

    .line 63
    sget-object v3, LdL;->a:LdL;

    invoke-virtual {v2, v3}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    invoke-direct {p0, p1}, LLk;->b(Ljava/lang/String;)Z

    move-result v3

    .line 66
    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    if-eqz v3, :cond_22

    :cond_20
    move v0, v1

    .line 85
    :goto_21
    return v0

    .line 70
    :cond_22
    iget-object v0, p0, LLk;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 71
    sget-object v2, Lhf;->b:Lhf;

    invoke-static {v0, p1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;

    move-result-object v2

    .line 73
    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 75
    sget v2, LcY;->notification_welcome_to_drive:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v3, Landroid/app/Notification;

    sget v4, LcR;->notification_icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 78
    invoke-virtual {v3, v0, v2, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 80
    const/16 v0, 0x18

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 81
    iget-object v0, p0, LLk;->a:LLh;

    const/4 v1, 0x5

    invoke-interface {v0, p1, v1, v3}, LLh;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 83
    invoke-direct {p0, p1}, LLk;->a(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_21
.end method
