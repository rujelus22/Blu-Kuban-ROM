.class public Lcom/google/googlenav/friend/reporting/LocationReportingIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;Lcom/google/googlenav/friend/reporting/n;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.reporting.LocationReportingIntentSender.START_REPORTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SHOULD_START_LOCATION_REPORTING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 52
    const-string v0, "requestor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 55
    const-string v0, "requestor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/friend/reporting/n;->a(J)V

    .line 84
    :cond_31
    :goto_31
    return-void

    .line 59
    :cond_32
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/n;->a()V

    goto :goto_31

    .line 63
    :cond_36
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/n;->b()V

    goto :goto_31

    .line 69
    :cond_3a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 70
    const-string v0, "signedin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "signedin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 77
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/n;->a()V

    goto :goto_31

    .line 80
    :cond_5e
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/n;->b()V

    goto :goto_31
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 38
    :cond_9
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/a;->a(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0}, LQ/a;->a()V

    .line 42
    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/n;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingIntentReceiver;->a(Landroid/content/Intent;Lcom/google/googlenav/friend/reporting/n;)V

    .line 43
    return-void
.end method
