.class public Lcom/google/googlenav/networkinitiated/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    return-void
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private f()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "gmobilemaps@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->f()V

    return-void
.end method

.method public F_()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->k()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "registration_id"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/networkinitiated/i;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v5}, Lcom/google/googlenav/networkinitiated/i;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/j;)V

    invoke-virtual {v2, v3}, Lat/h;->c(Lat/g;)V

    :cond_27
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->d()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/networkinitiated/i;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/googlenav/networkinitiated/k;

    iget-object v4, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/googlenav/networkinitiated/k;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/googlenav/networkinitiated/i;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/j;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "registration_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lax/aa;->l()Z

    move-result v1

    if-nez v1, :cond_17

    :goto_16
    return-void

    :cond_17
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/c;->a(Ljava/lang/String;)V

    goto :goto_16

    :cond_1d
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->f()V

    goto :goto_16
.end method

.method public i()V
    .registers 1

    return-void
.end method
