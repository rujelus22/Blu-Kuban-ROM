.class public Lcom/sprint/w/installer/ServicePackSwitcher;
.super Landroid/app/Activity;
.source "ServicePackSwitcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ServicePackSwitcher;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/sprint/w/installer/ServicePackSwitcher;->finish()V

    .line 19
    return-void
.end method
