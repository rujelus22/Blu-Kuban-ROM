.class public Lcom/google/android/apps/translate/translation/TranslateActivity;
.super Landroid/app/Activity;
.source "TranslateActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranslateActivity"


# instance fields
.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

.field private mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/translation/TranslateActivity;)Lcom/google/android/apps/translate/translation/TranslateHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->finish()V

    .line 152
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 124
    const-string v0, "TranslateActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 129
    :cond_16
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    :cond_9
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v1, "TranslateActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$layout;->translate_activity:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 44
    .local v0, rootView:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateActivity;->setContentView(Landroid/view/View;)V

    .line 48
    new-instance v1, Lcom/google/android/apps/translate/translation/TranslateActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/TranslateActivity$1;-><init>(Lcom/google/android/apps/translate/translation/TranslateActivity;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/translate/translation/TranslateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getContextMenuTargetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/translation/TranslateActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 75
    const-string v0, "TranslateActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_18

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :cond_18
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 156
    const-string v1, "TranslateActivity"

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 169
    :goto_14
    return v0

    .line 160
    :cond_15
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->isFloatingActivity(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x4

    if-ne p1, v1, :cond_22

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateActivity;->moveTaskToBack(Z)Z

    goto :goto_14

    .line 169
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "TranslateActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onPause()V

    .line 146
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onResume()V

    .line 140
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "TranslateActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onStart()V

    .line 71
    return-void
.end method
