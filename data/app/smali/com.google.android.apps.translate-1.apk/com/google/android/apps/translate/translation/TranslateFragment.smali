.class public Lcom/google/android/apps/translate/translation/TranslateFragment;
.super Landroid/app/Fragment;
.source "TranslateFragment.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranslateFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

.field private mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

.field private mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

.field private mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V
    .registers 5
    .parameter "translateFragmentWrapper"
    .parameter "spinnerAdapter"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    .line 54
    const-string v0, "TranslateFragment"

    const-string v1, "TranslateFragment"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/translation/TranslateFragment;)Lcom/google/android/apps/translate/translation/TranslateHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    return-object v0
.end method

.method public static startTranslateFragment(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V
    .registers 12
    .parameter "activity"
    .parameter "inputText"
    .parameter "from"
    .parameter "to"
    .parameter "requestTranslate"

    .prologue
    .line 206
    move-object v0, p0

    check-cast v0, Lcom/google/android/apps/translate/HomeActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/HomeActivity;->getTranslateFragmentWrapper()Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->getTranslateFragment()Lcom/google/android/apps/translate/translation/TranslateFragment;

    move-result-object v6

    .line 208
    .local v6, translateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;
    if-eqz v6, :cond_2f

    .line 209
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    const-string v4, ""

    invoke-static {p2}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 211
    iget-object v0, v6, Lcom/google/android/apps/translate/translation/TranslateFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onNavigationItemSelected(IJ)Z

    .line 213
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/apps/translate/translation/TranslateFragment;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 216
    :cond_2f
    return-void
.end method


# virtual methods
.method public getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const-string v0, "TranslateFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V

    .line 82
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/translation/TranslateFragment$1;-><init>(Lcom/google/android/apps/translate/translation/TranslateFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getContextMenuTargetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 163
    const-string v0, "TranslateFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 168
    :cond_16
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 158
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const-string v0, "TranslateFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->setHasOptionsMenu(Z)V

    .line 64
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 151
    :cond_9
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 117
    const-string v0, "TranslateFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 122
    :goto_f
    return-void

    .line 121
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    sget v0, Lcom/google/android/apps/translate/R$layout;->translate_panel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 107
    const-string v0, "TranslateFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_1a
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 135
    const-string v0, "TranslateFragment"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_19
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 187
    const-string v0, "TranslateFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onPause()V

    .line 190
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 126
    const-string v0, "TranslateFragment"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    :goto_f
    return-void

    .line 130
    :cond_10
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_f
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 179
    const-string v0, "TranslateFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 181
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setHomeButton(Landroid/app/Activity;Z)V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onResume()V

    .line 183
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "TranslateFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onStart()V

    .line 103
    return-void
.end method

.method public setInputTextAndDoTranslate(Ljava/lang/String;)V
    .registers 3
    .parameter "inputText"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setTextAndDoTranslate(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 5
    .parameter "translateEntry"

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;ZZZ)V

    .line 202
    return-void
.end method
