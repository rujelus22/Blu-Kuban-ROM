.class public Lcom/vlingo/client/car/iux/CarIUXManager;
.super Ljava/lang/Object;
.source "CarIUXManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishIUX(Landroid/app/Activity;)V
    .registers 3
    .parameter "parentActivity"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    return-void
.end method

.method public static isCarIUXIntroRequired()Z
    .registers 2

    .prologue
    .line 17
    const-string v0, "car_iux_intro_required.2"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static processIUX(Landroid/app/Activity;)V
    .registers 3
    .parameter "parentActivity"

    .prologue
    .line 33
    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->isCarIUXIntroRequired()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    .end local v0           #i:Landroid/content/Intent;
    :goto_18
    return-void

    .line 40
    :cond_19
    invoke-static {p0}, Lcom/vlingo/client/car/iux/CarIUXManager;->finishIUX(Landroid/app/Activity;)V

    goto :goto_18
.end method

.method public static requiresIUX()Z
    .registers 1

    .prologue
    .line 25
    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->isCarIUXIntroRequired()Z

    move-result v0

    return v0
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXManager;->setCarIUXIntroRequired(Z)V

    .line 30
    return-void
.end method

.method public static setCarIUXIntroRequired(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 21
    const-string v0, "car_iux_intro_required.2"

    invoke-static {v0, p0}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method
