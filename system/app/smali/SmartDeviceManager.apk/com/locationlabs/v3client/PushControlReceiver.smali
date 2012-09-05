.class public Lcom/locationlabs/v3client/PushControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "a"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/PushControlReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/PushControlReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 83
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/PushControlReceiver;->a:Z

    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/locationlabs/v3client/PushControlReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 45
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 46
    const-string v1, "C2DM_TIMEOUT_MILLIS"

    invoke-static {v1}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    .line 48
    const/4 v3, 0x1

    sput-boolean v3, Lcom/locationlabs/v3client/PushControlReceiver;->a:Z

    .line 53
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 54
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.C2DM_REGISTRATION_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_f

    .line 91
    const-string v1, "com.locationlabs.v3client.extra.TIMEOUT_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_f
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 94
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "com.locationlabs.v3client.action.C2DM_REGISTRATION_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 30
    sput-boolean v2, Lcom/locationlabs/v3client/PushControlReceiver;->a:Z

    const-string v0, "com.locationlabs.v3client.extra.TIMEOUT_ACTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "Push registration timed out (will retry)"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_23
    const/4 v1, 0x0

    invoke-static {p1, v1}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    invoke-static {p1, p2}, Lcom/locationlabs/v3client/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :cond_2c
    :goto_2c
    return-void

    .line 30
    :cond_2d
    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "Push unregistration timed out (will not retry)"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_23

    :cond_3c
    const-string v0, "Unknown push operation timed out (will not retry)"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_23

    .line 31
    :cond_43
    const-string v1, "com.locationlabs.v3client.action.RETRY_C2DM_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 32
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 33
    const-string v0, "got retry intent, retrying c2dm registration"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Laf;->a(Landroid/content/Context;)V

    goto :goto_2c

    .line 36
    :cond_5e
    const-string v0, "got retry intent, but NOT retrying c2dm registration, as it seems that we already have it"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_2c

    .line 39
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected push control receiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_2c
.end method
