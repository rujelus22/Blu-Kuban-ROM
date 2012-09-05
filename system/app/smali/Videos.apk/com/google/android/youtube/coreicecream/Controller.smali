.class public abstract Lcom/google/android/youtube/coreicecream/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field protected final application:Landroid/app/Application;

.field private final arguments:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .parameter "application"
    .parameter "analytics"
    .parameter "activity"
    .parameter "arguments"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/Controller;->application:Landroid/app/Application;

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/Controller;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 44
    iput-object p3, p0, Lcom/google/android/youtube/coreicecream/Controller;->activity:Landroid/app/Activity;

    .line 45
    iput-object p4, p0, Lcom/google/android/youtube/coreicecream/Controller;->arguments:Landroid/os/Bundle;

    .line 46
    return-void
.end method


# virtual methods
.method protected final getArguments()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)Z
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 134
    if-nez p2, :cond_7

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 117
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 127
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 145
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 124
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "inState"

    .prologue
    .line 87
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 94
    return-void
.end method

.method protected onSearchRequested()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->analytics:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackPage(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method
