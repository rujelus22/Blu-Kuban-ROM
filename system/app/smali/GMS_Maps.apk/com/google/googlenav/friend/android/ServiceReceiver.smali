.class public Lcom/google/googlenav/friend/android/ServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    move v0, v1

    :goto_f
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 80
    return-void

    .line 75
    :cond_13
    const/4 v0, 0x2

    goto :goto_f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 40
    :cond_9
    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_20
    const/4 v0, 0x1

    .line 44
    :goto_21
    invoke-static {}, Lcom/google/googlenav/K;->T()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 45
    invoke-static {p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;->a(Landroid/content/Context;)V

    .line 53
    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->al()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 55
    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;)V

    .line 61
    :cond_37
    if-eqz v0, :cond_4f

    invoke-static {p1}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {p1}, Lcom/google/android/location/clientlib/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.GMM_NLP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    :cond_4f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/android/ServiceReceiver;->a(Landroid/content/Context;Z)V

    .line 68
    return-void

    .line 42
    :cond_5b
    const/4 v0, 0x0

    goto :goto_21

    .line 46
    :cond_5d
    if-nez v0, :cond_67

    const-string v2, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 47
    :cond_67
    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    goto :goto_2a
.end method
