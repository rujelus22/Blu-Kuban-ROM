.class public Lcom/acquariusoft/UpdateMe/BootService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 11

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "disable_check_rom"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "check_rom_time"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v2, v0, 0x3c

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->a()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->d()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->f()Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez v1, :cond_47

    const/4 v0, 0x1

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->p:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/BootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_47
    if-nez v1, :cond_6c

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/BootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/acquariusoft/UpdateMe/BootService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/BootService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    add-long v2, v3, v5

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_6c
    return-void
.end method
