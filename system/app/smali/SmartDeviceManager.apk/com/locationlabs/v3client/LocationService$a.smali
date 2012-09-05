.class final Lcom/locationlabs/v3client/LocationService$a;
.super Laa;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/LocationService;


# direct methods
.method synthetic constructor <init>(Lcom/locationlabs/v3client/LocationService;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/locationlabs/v3client/LocationService$a;-><init>(Lcom/locationlabs/v3client/LocationService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/locationlabs/v3client/LocationService;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    invoke-direct {p0}, Laa;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->j()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Long;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0, p1}, Lw;->b(Ljava/lang/Long;)V

    .line 75
    return-void
.end method

.method protected final b()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/content/Context;Z)V

    .line 80
    return-void
.end method

.method protected final b(Ljava/lang/Long;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 93
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    const-class v2, Lcom/locationlabs/v3client/LocationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v0, "com.locationlabs.v3client.action.ACTION_TRY_FUTURE_GPS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    invoke-static {v4, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 97
    return-void
.end method

.method protected final c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    const-class v2, Lcom/locationlabs/v3client/LocationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v0, "com.locationlabs.v3client.action.ACTION_TRY_FUTURE_GPS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/locationlabs/v3client/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 87
    iget-object v2, p0, Lcom/locationlabs/v3client/LocationService$a;->a:Lcom/locationlabs/v3client/LocationService;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 89
    return-void
.end method
