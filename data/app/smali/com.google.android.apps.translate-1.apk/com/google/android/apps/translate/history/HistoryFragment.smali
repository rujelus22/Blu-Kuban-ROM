.class public Lcom/google/android/apps/translate/history/HistoryFragment;
.super Landroid/app/ListFragment;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mControlPanelWrapper:Landroid/view/View;

.field private final mFlushOnPause:Z

.field private mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

.field private final mIsHistoryMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/translate/history/HistoryFragment;-><init>(ZZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .parameter "isHistory"
    .parameter "flushOnPause"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 43
    const-string v0, "HistoryFragment"

    const-string v1, "HistoryFragment"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-boolean p1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mIsHistoryMode:Z

    .line 45
    iput-boolean p2, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mFlushOnPause:Z

    .line 46
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    .line 47
    return-void
.end method


# virtual methods
.method public isHistoryMode()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mIsHistoryMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const-string v1, "HistoryFragment"

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mActivity:Landroid/app/Activity;

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreate(Landroid/app/Activity;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mIsHistoryMode:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/HistoryHelper;->loadDatabaseFile(Z)V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mFlushOnPause:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/HistoryHelper;->setFlushOnPause(Z)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->input_method_view_wrapper:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mControlPanelWrapper:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/HistoryHelper;->getListAdapter()Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/HistoryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 77
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->setListView(Landroid/widget/ListView;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/HistoryFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    .line 161
    :cond_c
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const-string v0, "HistoryFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/HistoryFragment;->setHasOptionsMenu(Z)V

    .line 54
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 119
    const-string v0, "HistoryFragment"

    const-string v1, "onCreateContextMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/history/HistoryHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 126
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const-string v0, "HistoryFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    sget v0, Lcom/google/android/apps/translate/R$layout;->history_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onDestroy()V

    .line 101
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/history/HistoryHelper;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 168
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/history/HistoryHelper;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 106
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 138
    const-string v0, "HistoryFragment"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onPause()V

    .line 85
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 131
    const-string v0, "HistoryFragment"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/HistoryHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 133
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "HistoryFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mHelper:Lcom/google/android/apps/translate/history/HistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryHelper;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mControlPanelWrapper:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryFragment;->mControlPanelWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_1a
    return-void
.end method
