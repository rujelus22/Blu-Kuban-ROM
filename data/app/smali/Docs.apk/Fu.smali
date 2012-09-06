.class public LFu;
.super Ljava/lang/Object;
.source "TestHelper.java"


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, LFu;->a:Z

    .line 44
    iput-boolean v0, p0, LFu;->b:Z

    return-void
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 71
    :try_start_0
    const-string v0, "com.google.android.apps.docs.editors.TestOverride"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_6
    return v0

    .line 73
    :catch_7
    move-exception v0

    .line 74
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a(LFv;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, LFu;->a:Z

    if-eqz v0, :cond_d

    .line 101
    const-string v0, "TEST"

    invoke-static {p1}, LFv;->a(LFv;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_d
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, LFu;->c()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "testMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "testMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LFu;->a:Z

    .line 60
    :goto_29
    invoke-direct {p0}, LFu;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isKixRenderer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isKixRenderer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LFu;->b:Z

    .line 66
    :goto_4d
    return-void

    .line 57
    :cond_4e
    iput-boolean v2, p0, LFu;->a:Z

    goto :goto_29

    .line 64
    :cond_51
    iput-boolean v2, p0, LFu;->b:Z

    goto :goto_4d
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, LFu;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, LFu;->b:Z

    return v0
.end method
