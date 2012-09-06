.class public Lcom/google/android/apps/translate/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# static fields
.field private static final EULA_TEST:Z = false

.field private static final TAG:Ljava/lang/String; = "HomeActivity"

.field public static final TREAT_BACK_BUTTON_LIKE_HOME_BUTTON:Z = true


# instance fields
.field private mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

.field private mHandler:Landroid/os/Handler;

.field private mInitRun:Z

.field private final mOnVoiceSupportedLanguagesResult:Landroid/content/BroadcastReceiver;

.field private mShowEula:Z

.field private mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

.field private mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mShowEula:Z

    .line 51
    new-instance v0, Lcom/google/android/apps/translate/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/HomeActivity$1;-><init>(Lcom/google/android/apps/translate/HomeActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mOnVoiceSupportedLanguagesResult:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/HomeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->reportCsiMetrics()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/translate/HomeActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/apps/translate/HomeActivity;->mInitRun:Z

    return p1
.end method

.method private checkVersion()V
    .registers 7

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->getCurrentVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 164
    .local v1, versionCodeInSettings:I
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 165
    .local v0, versionCode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 168
    if-eq v1, v0, :cond_4e

    .line 169
    const-string v2, "version code changed (from %d to %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/16 v2, 0xa

    if-gt v1, v2, :cond_4b

    .line 176
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->resetFirstRunFlags(Landroid/content/Context;)V

    .line 178
    :cond_4b
    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Profile;->setCurrentVersionCode(Landroid/content/Context;I)V

    .line 180
    :cond_4e
    return-void
.end method

.method private reportCsiMetrics()V
    .registers 6

    .prologue
    .line 215
    const-string v1, "HomeActivity"

    const-string v2, "reportCsiMetrics"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "init"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;->end([Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/CsiTimer;->report(Landroid/content/Context;)V

    .line 220
    new-instance v1, Lcom/google/android/apps/translate/CsiTimer;

    const-string v2, "home"

    invoke-direct {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    .line 224
    .local v0, app:Lcom/google/android/apps/translate/TranslateApplication;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->endAndReportAppCsiTimer()V

    .line 225
    return-void
.end method

.method private showEula()V
    .registers 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/EulaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method private startTranslateActivity()V
    .registers 3

    .prologue
    .line 129
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->openTranslateActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->finish()V

    .line 132
    return-void
.end method

.method private stopCsiTimers()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "HomeActivity"

    const-string v1, "stopCsiTimers"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mInitRun:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mShowEula:Z

    if-nez v0, :cond_25

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/HomeActivity$2;-><init>(Lcom/google/android/apps/translate/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_25
    return-void
.end method


# virtual methods
.method public getTranslateFragmentWrapper()Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 248
    const-string v0, "HomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    packed-switch p1, :pswitch_data_54

    .line 263
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useFragments()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    :cond_34
    :goto_34
    return-void

    .line 251
    :pswitch_35
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3c

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->finish()V

    goto :goto_34

    .line 255
    :cond_3c
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useFragments()Z

    move-result v0

    if-nez v0, :cond_34

    .line 258
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->startTranslateActivity()V

    goto :goto_34

    .line 266
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_34

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_34

    .line 249
    :pswitch_data_54
    .packed-switch 0x96
        :pswitch_35
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    :cond_c
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 297
    const-string v0, "HomeActivity"

    const-string v1, "onContextItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 89
    const-string v1, "HomeActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-boolean v5, p0, Lcom/google/android/apps/translate/HomeActivity;->mInitRun:Z

    .line 91
    new-instance v1, Lcom/google/android/apps/translate/CsiTimer;

    const-string v2, "home"

    invoke-direct {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "init"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;->begin([Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->checkVersion()V

    .line 103
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/HomeActivity;->setVolumeControlStream(I)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$layout;->home_activity:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useFragments()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 109
    new-instance v1, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    .line 111
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->isEulaAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 112
    iput-boolean v5, p0, Lcom/google/android/apps/translate/HomeActivity;->mShowEula:Z

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->showEula()V

    .line 126
    :goto_5b
    return-void

    .line 115
    :cond_5c
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->stopCsiTimers()V

    goto :goto_5b

    .line 118
    :cond_60
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->isEulaAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 119
    iput-boolean v5, p0, Lcom/google/android/apps/translate/HomeActivity;->mShowEula:Z

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->showEula()V

    goto :goto_5b

    .line 122
    :cond_6c
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->stopCsiTimers()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/apps/translate/HomeActivity;->startTranslateActivity()V

    goto :goto_5b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 303
    const-string v0, "HomeActivity"

    const-string v1, "onCreateContextMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 305
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 276
    const-string v0, "HomeActivity"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 242
    const-string v0, "HomeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 136
    const-string v1, "HomeActivity"

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useFragments()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 151
    :goto_1a
    return v0

    .line 142
    :cond_1b
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->isFloatingActivity(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x4

    if-ne p1, v1, :cond_28

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/HomeActivity;->moveTaskToBack(Z)Z

    goto :goto_1a

    .line 151
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 288
    const-string v0, "HomeActivity"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_14
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 229
    const-string v0, "HomeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_13

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onPause()V

    .line 236
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mInitRun:Z

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/translate/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->resetAppCsiTimer()V

    .line 238
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 282
    const-string v0, "HomeActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 191
    const-string v0, "HomeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    if-eqz v0, :cond_10

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->onResume()V

    .line 195
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 196
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "HomeActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Translate;->setAcceptLanguage(Ljava/lang/String;)V

    .line 160
    return-void
.end method
