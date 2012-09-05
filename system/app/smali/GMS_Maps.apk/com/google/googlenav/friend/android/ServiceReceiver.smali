.class public Lcom/google/googlenav/friend/android/ServiceReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    move v0, v1

    :goto_f
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_13
    const/4 v0, 0x2

    goto :goto_f
.end method

.method private a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/capabilities/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_opt_in"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_17
    const/4 v0, 0x1

    :goto_18
    invoke-static {}, Lcom/google/googlenav/M;->S()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;->a(Landroid/content/Context;)V

    :cond_21
    :goto_21
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ai()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;)V

    :cond_2e
    if-eqz v0, :cond_40

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/ServiceReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.GMM_NLP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_40
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/android/ServiceReceiver;->a(Landroid/content/Context;Z)V

    return-void

    :cond_4c
    const/4 v0, 0x0

    goto :goto_18

    :cond_4e
    if-nez v0, :cond_58

    const-string v2, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_58
    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/k;->a(Landroid/content/Context;)V

    goto :goto_21
.end method
