.class public Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/IntentFilter;

.field private final b:Landroid/content/IntentFilter;

.field private c:Lcom/google/googlenav/android/P;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a:Landroid/content/IntentFilter;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->c:Lcom/google/googlenav/android/P;

    .line 70
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public b(Lcom/google/android/maps/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->c:Lcom/google/googlenav/android/P;

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->c:Lcom/google/googlenav/android/P;

    if-nez v0, :cond_5

    .line 63
    :cond_4
    :goto_4
    return-void

    .line 57
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->c:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->refreshFriends()V

    .line 60
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->c:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->refreshFriendsSettings()V

    goto :goto_4
.end method
