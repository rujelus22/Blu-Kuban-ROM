.class public Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;
.super Landroid/app/ActivityGroup;
.source "panda.py"

# interfaces
.implements Lcom/github/droidfu/activities/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;

.field private f:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 220
    const/high16 v0, 0x400

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_25

    .line 227
    new-instance v1, Lcom/dropbox/android/activity/droidfu/a;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/activity/droidfu/a;-><init>(Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->setContentView(Landroid/view/View;)V

    .line 234
    if-eqz v0, :cond_25

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 239
    :cond_25
    return-void
.end method

.method public final b_()I
    .registers 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v0, v2, :cond_11

    .line 196
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->finish()V

    .line 217
    :cond_10
    :goto_10
    return-void

    .line 199
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/droidfu/a;

    .line 200
    iget-object v0, v0, Lcom/dropbox/android/activity/droidfu/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 203
    iget-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/droidfu/a;

    .line 204
    iget-object v2, v0, Lcom/dropbox/android/activity/droidfu/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 206
    iget-object v0, v0, Lcom/dropbox/android/activity/droidfu/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->setContentView(Landroid/view/View;)V

    .line 212
    if-eqz v0, :cond_10

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->a:Z

    .line 50
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->e:Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 53
    instance-of v1, v0, Lcom/github/droidfu/DroidFuApplication;

    if-eqz v1, :cond_21

    .line 54
    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    :cond_21
    iget-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    if-nez v0, :cond_2c

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    .line 61
    :cond_2c
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->c:I

    iget v1, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->d:I

    invoke-static {p0, v0, v1}, Lcom/github/droidfu/activities/b;->a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 66
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    iput-object p1, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->e:Landroid/content/Intent;

    .line 96
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->b:Z

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->a:Z

    .line 78
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->b:Z

    .line 72
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 84
    iget-object v0, p0, Lcom/dropbox/android/activity/droidfu/BetterActivityGroup;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 85
    return-void
.end method
