.class public Lcom/google/googlenav/friend/reporting/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;Z)V

    .line 32
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/friend/reporting/LocationReportingIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string v1, "com.google.googlenav.friend.reporting.LocationReportingIntentSender.START_REPORTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "SHOULD_START_LOCATION_REPORTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method
