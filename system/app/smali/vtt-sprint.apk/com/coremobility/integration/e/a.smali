.class public final Lcom/coremobility/integration/e/a;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "AirplaneBlocker"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    :try_start_3
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_14} :catch_1c

    move-result v1

    :goto_15
    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/a;->a(Z)V

    return-void

    :catch_1c
    move-exception v1

    move v1, v0

    goto :goto_15
.end method

.method public final a(Z)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_1e

    if-nez p1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1f

    move v2, v0

    :goto_10
    if-eqz v2, :cond_21

    const-string v0, "Off"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->d(Lcom/coremobility/integration/x;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    if-eqz p1, :cond_1e

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_36

    :goto_27
    if-nez v0, :cond_1e

    const-string v0, "On"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->c(Lcom/coremobility/integration/x;)V

    goto :goto_1e

    :cond_36
    move v0, v1

    goto :goto_27
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/e/a;->d:Lcom/coremobility/f/g;

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/16 v1, 0x17

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    return-void
.end method
