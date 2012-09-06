.class public Lcom/google/android/apps/translate/conversation/ConversationActivity;
.super Landroid/app/ListActivity;
.source "ConversationActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationFragment"


# instance fields
.field private mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

.field private mOnLanguagesChanged:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/conversation/ConversationActivity;)Lcom/google/android/apps/translate/conversation/ConversationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onCreate(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$layout;->conversation_activity:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, rootView:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    sget v1, Lcom/google/android/apps/translate/R$id;->conversation_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_language_from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "key_language_to"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "key_current_translation"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->init(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->getConversationAdapter()Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->setListView(Landroid/widget/ListView;)V

    .line 48
    new-instance v1, Lcom/google/android/apps/translate/conversation/ConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity$1;-><init>(Lcom/google/android/apps/translate/conversation/ConversationActivity;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 97
    const-string v0, "ConversationFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    :cond_e
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 120
    :goto_9
    return v1

    .line 115
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    .local v0, id:I
    const v2, 0x102002c

    if-ne v0, v2, :cond_17

    .line 117
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->openHomeActivity(Landroid/app/Activity;)V

    goto :goto_9

    .line 120
    :cond_17
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_9
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onPause()V

    .line 62
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onResume()V

    .line 68
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onStart()V

    .line 74
    return-void
.end method
