.class public LXk;
.super Ljava/lang/Object;
.source "AccountSwitcherImpl.java"

# interfaces
.implements LXj;


# instance fields
.field a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, LXk;->a:LeZ;

    sget-object v2, LeV;->c:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 33
    const-string v1, "desiredApplicationMode"

    sget-object v2, Lhf;->c:Lhf;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    :goto_22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void

    .line 36
    :cond_26
    const-string v1, "desiredApplicationMode"

    sget-object v2, Lhf;->a:Lhf;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_22
.end method
