.class public Lcom/google/android/apps/translate/conversation/ConversationFragment;
.super Landroid/app/ListFragment;
.source "ConversationFragment.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

.field private mInputText:Ljava/lang/String;

.field private mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 3
    .parameter "translateEntry"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    .line 50
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 51
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 52
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mInputText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/conversation/ConversationFragment;)Lcom/google/android/apps/translate/conversation/ConversationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onCreate(Landroid/app/Activity;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mToLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mInputText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->init(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->getConversationAdapter()Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->setListView(Landroid/widget/ListView;)V

    .line 76
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/conversation/ConversationFragment$1;-><init>(Lcom/google/android/apps/translate/conversation/ConversationFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 127
    const-string v0, "ConversationFragment"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 133
    const-string v0, "ConversationFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    :goto_f
    return-void

    .line 137
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    sget v0, Lcom/google/android/apps/translate/R$layout;->conversation_panel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 112
    const-string v0, "ConversationFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_17
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 118
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    if-eqz v0, :cond_b

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 166
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 151
    const-string v0, "ConversationFragment"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 88
    const-string v0, "ConversationFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onPause()V

    .line 91
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 142
    const-string v0, "ConversationFragment"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    :goto_f
    return-void

    .line 146
    :cond_10
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_f
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 95
    const-string v0, "ConversationFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 97
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setHomeButton(Landroid/app/Activity;Z)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    if-eqz v0, :cond_1d

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onResume()V

    .line 101
    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 105
    const-string v0, "ConversationFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationFragment;->mHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onStart()V

    .line 108
    return-void
.end method
