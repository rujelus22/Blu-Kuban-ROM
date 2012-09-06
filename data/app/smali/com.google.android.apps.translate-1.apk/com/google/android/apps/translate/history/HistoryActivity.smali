.class public Lcom/google/android/apps/translate/history/HistoryActivity;
.super Landroid/app/ListActivity;
.source "HistoryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryActivity"


# instance fields
.field private isHistoryMode:Z

.field private mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

.field private mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->isHistoryMode:Z

    return-void
.end method


# virtual methods
.method public isHistoryMode()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->isHistoryMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    .line 133
    :cond_c
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreate(Landroid/app/Activity;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->isHistoryMode:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "flush_on_pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    .local v0, flushOnPause:Z
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 42
    sget v1, Lcom/google/android/apps/translate/R$layout;->history_view:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/HistoryActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->isHistoryMode:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/HistoryHelper;->loadDatabaseFile(Z)V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->setFlushOnPause(Z)V

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/HistoryHelper;->getListAdapter()Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/HistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/HistoryHelper;->setListView(Landroid/widget/ListView;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/HistoryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 92
    const-string v0, "HistoryActivity"

    const-string v1, "onCreateContextMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_d
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onDestroy()V

    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 137
    const-string v0, "HistoryActivity"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    if-eqz v0, :cond_15

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/history/HistoryHelper;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/history/HistoryHelper;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 79
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onPause()V

    .line 57
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onResume()V

    .line 63
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 68
    return-void
.end method
