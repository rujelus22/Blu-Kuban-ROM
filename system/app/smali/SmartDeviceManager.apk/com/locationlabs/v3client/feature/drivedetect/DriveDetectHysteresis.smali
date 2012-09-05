.class public Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;
.super Landroid/content/BroadcastReceiver;
.source "a"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.DRIVECHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-class v1, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    or-int/2addr v2, p1

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x2000

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "com.locationlabs.v3client.action.IS_DRIVING_NOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 42
    invoke-static {p1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1f

    .line 47
    const-string v0, "saying that driving started"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 48
    const-string v0, "com.locationlabs.v3client.action.DRIVING"

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    :cond_1e
    :goto_1e
    return-void

    .line 51
    :cond_1f
    const-string v1, "restarted driving"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 53
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_1e

    .line 59
    :cond_33
    const-string v1, "com.locationlabs.v3client.action.IS_NOT_DRIVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 64
    invoke-static {p1, v2}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_47

    .line 66
    const-string v0, "Dupe not driving"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_1e

    .line 69
    :cond_47
    const-string v0, "stopped driving"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 72
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 74
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v5, p0, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1e

    .line 80
    :cond_6c
    const-string v1, "com.locationlabs.v3client.action.DRIVECHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 81
    const-string v0, "saying driving stopped"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 82
    const-string v0, "com.locationlabs.v3client.action.STOPPED"

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e
.end method
