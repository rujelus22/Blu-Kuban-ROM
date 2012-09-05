.class public Lcom/google/googlenav/friend/reporting/LocationReportingIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;Lcom/google/googlenav/friend/reporting/j;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.reporting.LocationReportingIntentSender.START_REPORTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SHOULD_START_LOCATION_REPORTING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "requestor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "requestor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/friend/reporting/j;->a(J)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/j;->a()V

    goto :goto_31

    :cond_36
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/j;->b()V

    goto :goto_31

    :cond_3a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "signedin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "signedin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/j;->a()V

    goto :goto_31

    :cond_5e
    invoke-virtual {p2}, Lcom/google/googlenav/friend/reporting/j;->b()V

    goto :goto_31
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Lad/a;

    invoke-direct {v0}, Lad/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/a;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lad/a;->a()V

    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/j;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/j;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingIntentReceiver;->a(Landroid/content/Intent;Lcom/google/googlenav/friend/reporting/j;)V

    return-void
.end method
