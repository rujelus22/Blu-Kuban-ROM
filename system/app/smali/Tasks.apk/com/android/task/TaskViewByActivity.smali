.class public Lcom/android/task/TaskViewByActivity;
.super Landroid/app/Activity;
.source "TaskViewByActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/android/task/TaskViewByAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mList:Landroid/widget/ListView;

.field private mObserver:Landroid/database/ContentObserver;

.field mUpdateAllCheckRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/task/TaskViewByActivity;->mView:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;

    .line 111
    new-instance v0, Lcom/android/task/TaskViewByActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/task/TaskViewByActivity$3;-><init>(Lcom/android/task/TaskViewByActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/task/TaskViewByActivity;->mObserver:Landroid/database/ContentObserver;

    .line 212
    new-instance v0, Lcom/android/task/TaskViewByActivity$4;

    invoke-direct {v0, p0}, Lcom/android/task/TaskViewByActivity$4;-><init>(Lcom/android/task/TaskViewByActivity;)V

    iput-object v0, p0, Lcom/android/task/TaskViewByActivity;->mUpdateAllCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskViewByActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/task/TaskViewByActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/task/TaskViewByActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/task/TaskViewByActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private startTasksMetafeedSync()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const/4 v1, 0x0

    sget-object v2, Lcom/android/task/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method private updateAllCheckState()V
    .registers 7

    .prologue
    .line 180
    const/4 v2, 0x1

    .line 182
    .local v2, everyBodyIsOn:Z
    iget-object v5, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 183
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 185
    .local v3, headerCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_e
    sub-int v5, v1, v3

    if-ge v4, v5, :cond_1d

    if-eqz v2, :cond_1d

    .line 186
    iget-object v5, p0, Lcom/android/task/TaskViewByActivity;->mAdapter:Lcom/android/task/TaskViewByAdapter;

    invoke-virtual {v5, v4}, Lcom/android/task/TaskViewByAdapter;->isChecked(I)Z

    move-result v0

    .line 187
    .local v0, checked:Z
    if-nez v0, :cond_23

    .line 188
    const/4 v2, 0x0

    .line 192
    .end local v0           #checked:Z
    :cond_1d
    iget-object v5, p0, Lcom/android/task/TaskViewByActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    return-void

    .line 185
    .restart local v0       #checked:Z
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 64
    const-string v3, "TasksViewByListActivity"

    const-string v4, "======== onCreate ========"

    invoke-static {v3, v4}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Lcom/android/task/TaskViewByActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/task/TaskViewByActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x3

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 70
    const v3, 0x7f0c004b

    invoke-virtual {p0, v3}, Lcom/android/task/TaskViewByActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskViewByActivity;->mView:Landroid/view/View;

    .line 71
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mView:Landroid/view/View;

    const v4, 0x7f0c0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 72
    .local v2, items:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, context:Landroid/content/Context;
    const v3, 0x7f0c0050

    invoke-virtual {p0, v3}, Lcom/android/task/TaskViewByActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, allitem:Landroid/view/View;
    const v3, 0x7f0c0052

    invoke-virtual {p0, v3}, Lcom/android/task/TaskViewByActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/task/TaskViewByActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 78
    new-instance v3, Lcom/android/task/TaskViewByActivity$1;

    invoke-direct {v3, p0}, Lcom/android/task/TaskViewByActivity$1;-><init>(Lcom/android/task/TaskViewByActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v2, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    .line 87
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/android/task/TaskViewByActivity$2;

    invoke-direct {v4, p0}, Lcom/android/task/TaskViewByActivity$2;-><init>(Lcom/android/task/TaskViewByActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/task/TaskViewByActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskViewByActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v6, v6, v6}, Lcom/android/task/Tasks$TasksAccounts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;

    .line 96
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/android/task/TaskViewByActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 98
    new-instance v3, Lcom/android/task/TaskViewByAdapter;

    iget-object v4, p0, Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/task/TaskViewByActivity;->mUpdateAllCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v1, v4, v5}, Lcom/android/task/TaskViewByAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/task/TaskViewByActivity;->mAdapter:Lcom/android/task/TaskViewByAdapter;

    .line 99
    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mAdapter:Lcom/android/task/TaskViewByAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/task/TaskViewByActivity;->startTasksMetafeedSync()V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 154
    const/4 v0, 0x2

    const v1, 0x7f0a001a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c004f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 145
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 146
    invoke-direct {p0}, Lcom/android/task/TaskViewByActivity;->updateAllCheckState()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 169
    :goto_b
    return v5

    .line 164
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tasks"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewByActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 161
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 129
    const-string v0, "TasksViewByListActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/task/TaskViewByActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 137
    const-string v0, "TasksViewByListActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/task/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/task/TaskViewByActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 10
    .parameter "bCheckStatus"

    .prologue
    .line 197
    iget-object v6, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 198
    .local v1, dataCount:I
    iget-object v6, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 199
    .local v3, headerCount:I
    iget-object v6, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 201
    .local v2, firstPosition:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_13
    sub-int v6, v1, v3

    if-ge v4, v6, :cond_37

    .line 202
    iget-object v6, p0, Lcom/android/task/TaskViewByActivity;->mList:Landroid/widget/ListView;

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 203
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_31

    .line 204
    const v6, 0x7f0c004f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 205
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    .end local v0           #box:Landroid/widget/CheckBox;
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 207
    :cond_31
    iget-object v6, p0, Lcom/android/task/TaskViewByActivity;->mAdapter:Lcom/android/task/TaskViewByAdapter;

    invoke-virtual {v6, v4, p1}, Lcom/android/task/TaskViewByAdapter;->setChecked(IZ)V

    goto :goto_2e

    .line 210
    .end local v5           #view:Landroid/view/View;
    :cond_37
    return-void
.end method
