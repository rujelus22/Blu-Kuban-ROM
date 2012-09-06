.class public Lcom/github/droidfu/activities/BetterDefaultActivity;
.super Landroid/app/Activity;
.source "panda.py"

# interfaces
.implements Lcom/github/droidfu/activities/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_()I
    .registers 2

    .prologue
    .line 91
    invoke-static {p0}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->a:Z

    .line 45
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->e:Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterDefaultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->c:I

    iget v1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->d:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    iput-object p1, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->e:Landroid/content/Intent;

    .line 74
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->b:Z

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->a:Z

    .line 68
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterDefaultActivity;->b:Z

    .line 62
    return-void
.end method
