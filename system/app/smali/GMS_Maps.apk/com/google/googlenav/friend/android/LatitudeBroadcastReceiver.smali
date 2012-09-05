.class public Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Landroid/content/IntentFilter;

.field private b:Lcom/google/googlenav/android/T;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/MapsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Lcom/google/googlenav/android/T;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b(Lcom/google/android/maps/MapsActivity;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Lcom/google/googlenav/android/T;

    invoke-virtual {p1, p0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Lcom/google/googlenav/android/T;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "respondingGaiaId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "timestamp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_21
    const-string v0, "respondingGaiaId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "timestamp"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Lcom/google/googlenav/android/T;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/googlenav/android/T;->a(JJ)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_42} :catch_43

    goto :goto_4

    :catch_43
    move-exception v0

    goto :goto_4
.end method
