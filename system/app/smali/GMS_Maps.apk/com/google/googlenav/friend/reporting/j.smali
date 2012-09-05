.class public Lcom/google/googlenav/friend/reporting/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Class;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/googlenav/friend/reporting/b;

.field private final d:Lcom/google/googlenav/friend/reporting/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/friend/reporting/LocationReceiverService;

    sput-object v0, Lcom/google/googlenav/friend/reporting/j;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/b;Lcom/google/googlenav/friend/reporting/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/j;->c:Lcom/google/googlenav/friend/reporting/b;

    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/j;->d:Lcom/google/googlenav/friend/reporting/l;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/j;
    .registers 5

    new-instance v0, Lcom/google/googlenav/friend/reporting/a;

    invoke-static {p0}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/a;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v1, Lcom/google/googlenav/friend/reporting/l;

    const-string v2, "LOCATION_REPORTING"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/friend/reporting/l;-><init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/a;)V

    new-instance v2, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/googlenav/friend/reporting/b;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/a;Lcom/google/googlenav/friend/reporting/l;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/googlenav/friend/reporting/j;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/b;Lcom/google/googlenav/friend/reporting/l;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/j;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/j;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/j;->c()V

    goto :goto_6
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->d:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/friend/reporting/l;->a(J)V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/j;->a()V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/j;->f()V

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->c:Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/b;->b()V
    :try_end_8
    .catch Lcom/google/googlenav/friend/reporting/c; {:try_start_3 .. :try_end_8} :catch_e

    :goto_8
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->d:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/l;->d()Z

    return-void

    :catch_e
    move-exception v0

    goto :goto_8
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    new-instance v1, Lag/a;

    invoke-direct {v1}, Lag/a;-><init>()V

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a(Landroid/content/Context;Laf/a;)V

    return-void
.end method

.method d()Z
    .registers 2

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    return v0
.end method

.method e()V
    .registers 9

    const-wide/32 v2, 0xea60

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    sget-object v6, Lcom/google/googlenav/friend/reporting/j;->a:Ljava/lang/Class;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v7, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    invoke-static {v6}, Lf/g;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-static {v5, v7, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const-class v7, Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_4e

    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "passive"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_61
    return-void

    :cond_62
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v6, "network"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "network"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_4e
.end method

.method f()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/friend/reporting/j;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/j;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method
