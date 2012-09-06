.class public Lcom/github/droidfu/activities/BetterListActivity;
.super Landroid/app/ListActivity;
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
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_()I
    .registers 2

    .prologue
    .line 110
    invoke-static {p0}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->a:Z

    .line 49
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->e:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->c:I

    iget v1, p0, Lcom/github/droidfu/activities/BetterListActivity;->d:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    iput-object p1, p0, Lcom/github/droidfu/activities/BetterListActivity;->e:Landroid/content/Intent;

    .line 93
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->b:Z

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->a:Z

    .line 87
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 76
    instance-of v1, v0, Ldbxyzptlk/q/a;

    if-eqz v1, :cond_16

    .line 77
    const-string v1, "is_busy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 78
    check-cast v0, Ldbxyzptlk/q/a;

    invoke-virtual {v0, v1}, Ldbxyzptlk/q/a;->a(Z)V

    .line 80
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/droidfu/activities/BetterListActivity;->b:Z

    .line 81
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/github/droidfu/activities/BetterListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 66
    instance-of v1, v0, Ldbxyzptlk/q/a;

    if-eqz v1, :cond_16

    .line 67
    check-cast v0, Ldbxyzptlk/q/a;

    invoke-virtual {v0}, Ldbxyzptlk/q/a;->a()Z

    move-result v0

    .line 68
    const-string v1, "is_busy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    :cond_16
    return-void
.end method
