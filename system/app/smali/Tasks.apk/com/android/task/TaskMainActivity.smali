.class public Lcom/android/task/TaskMainActivity;
.super Landroid/app/Activity;
.source "TaskMainActivity.java"


# static fields
.field public static mDoneCount:I

.field public static mSortOrder:Ljava/lang/String;

.field public static mTotalCount:I


# instance fields
.field private mListByItems:[Ljava/lang/CharSequence;

.field private mListByWhichEvents:I

.field private mView:Lcom/android/task/TaskMainListView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    .line 63
    sput v1, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    .line 64
    sput v1, Lcom/android/task/TaskMainActivity;->mDoneCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    .line 54
    iput-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskMainActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/task/TaskMainActivity;->savePreferences(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/task/TaskMainActivity;)Lcom/android/task/TaskMainListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/task/TaskMainActivity;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private deleteTask(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v0, p1}, Lcom/android/task/TaskMainListView;->deleteTask(I)V

    .line 323
    return-void
.end method

.method private getSortOrder(I)Ljava/lang/String;
    .registers 3
    .parameter "order"

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, sortOrder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    .line 300
    const-string v0, "due_date ASC, reminder_time ASC , complete ASC , importance DESC"

    .line 304
    :goto_6
    return-object v0

    .line 288
    :pswitch_7
    const-string v0, "due_date ASC, reminder_time ASC"

    .line 289
    goto :goto_6

    .line 291
    :pswitch_a
    const-string v0, "complete ASC , due_date ASC, reminder_time ASC , importance DESC"

    .line 292
    goto :goto_6

    .line 297
    :pswitch_d
    const-string v0, "importance DESC"

    .line 298
    goto :goto_6

    .line 283
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method private listByAlertDialog(I)V
    .registers 5
    .parameter "whichEvents"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    if-nez v1, :cond_11

    .line 252
    invoke-virtual {p0}, Lcom/android/task/TaskMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    .line 254
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    iget-object v1, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/task/TaskMainActivity$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskMainActivity$1;-><init>(Lcom/android/task/TaskMainActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 271
    return-void
.end method

.method private loadPreferences()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 316
    const-string v1, "TasksSharedPreferences"

    invoke-virtual {p0, v1, v2}, Lcom/android/task/TaskMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "list_by"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    .line 318
    iget v1, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    invoke-direct {p0, v1}, Lcom/android/task/TaskMainActivity;->getSortOrder(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    .line 319
    return-void
.end method

.method private printTask(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v1, p1}, Lcom/android/task/TaskMainListView;->printTask(I)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private savePreferences(I)V
    .registers 5
    .parameter "sortOrder"

    .prologue
    .line 308
    iput p1, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    .line 309
    iget v1, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    invoke-direct {p0, v1}, Lcom/android/task/TaskMainActivity;->getSortOrder(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    .line 310
    const-string v1, "TasksSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/task/TaskMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "list_by"

    iget v2, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    return-void
.end method

.method private shareTask(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v1, p1}, Lcom/android/task/TaskMainListView;->shareTask(I)Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, chooserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/task/TaskLaunchActivity;->mbExitFlg:Z

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 144
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/task/TaskMainListView;->configurationChanged(Z)V

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    return-void

    .line 72
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 129
    const-string v0, "TaskMainActivity"

    const-string v1, "======== onContentChanged ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 131
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_11

    .line 157
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_2e

    move v2, v3

    .line 172
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_10
    return v2

    .line 153
    :catch_11
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "TaskMainActivity"

    const-string v4, "bad menuInfo"

    invoke-static {v2, v4, v0}, Lcom/android/task/Utils$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 155
    goto :goto_10

    .line 159
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :sswitch_1b
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/task/TaskMainActivity;->deleteTask(I)V

    goto :goto_10

    .line 162
    :sswitch_21
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/task/TaskMainActivity;->shareTask(I)V

    goto :goto_10

    .line 166
    :sswitch_27
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/task/TaskMainActivity;->printTask(I)V

    goto :goto_10

    .line 157
    nop

    :sswitch_data_2e
    .sparse-switch
        0x7f0c0055 -> :sswitch_1b
        0x7f0c005a -> :sswitch_21
        0x7f0c005b -> :sswitch_27
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    const-string v0, "TaskMainActivity"

    const-string v1, "======== onCreate ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Lcom/android/task/TaskMainListView;

    invoke-direct {v0, p0}, Lcom/android/task/TaskMainListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    .line 84
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainActivity;->setContentView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    .line 88
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/task/TaskMainListView;->configurationChanged(Z)V

    .line 91
    :cond_32
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_c

    .line 247
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 244
    :pswitch_5
    iget v0, p0, Lcom/android/task/TaskMainActivity;->mListByWhichEvents:I

    invoke-direct {p0, v0}, Lcom/android/task/TaskMainActivity;->listByAlertDialog(I)V

    goto :goto_3

    .line 242
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/task/TaskMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 203
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "TaskMainActivity"

    const-string v1, "======== onDestroy ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v0}, Lcom/android/task/TaskMainListView;->destroy()V

    .line 101
    iput-object v2, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    .line 105
    iput-object v2, p0, Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;

    .line 106
    sput-object v2, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    move v0, v1

    .line 238
    :goto_a
    return v0

    .line 212
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/task/TaskEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 216
    :pswitch_16
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/task/TaskViewByActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 220
    :pswitch_21
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/task/TaskDeleteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 224
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/task/TaskMainActivity;->onSearchRequested()Z

    goto :goto_a

    .line 227
    :pswitch_30
    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainActivity;->showDialog(I)V

    goto :goto_a

    .line 230
    :pswitch_34
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v3, "authorities"

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "tasks"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/task/TaskMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 210
    :pswitch_data_4a
    .packed-switch 0x7f0c0053
        :pswitch_b
        :pswitch_16
        :pswitch_21
        :pswitch_2c
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 123
    const-string v0, "TaskMainActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 178
    const v2, 0x7f0c0054

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 179
    .local v1, item:Landroid/view/MenuItem;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 181
    .local v0, exchangeAccounts:[Landroid/accounts/Account;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    array-length v2, v0

    if-lez v2, :cond_35

    .line 183
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    :goto_1f
    const v2, 0x7f0c0055

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v2}, Lcom/android/task/TaskMainListView;->getTaskCount()I

    move-result v2

    if-lez v2, :cond_39

    .line 190
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    :goto_34
    return v4

    .line 185
    :cond_35
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1f

    .line 193
    :cond_39
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 194
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_34
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 112
    const-string v0, "TaskMainActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/task/TaskMainActivity;->loadPreferences()V

    .line 117
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    sget-object v1, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/task/TaskMainListView;->setOrderBy(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;

    invoke-virtual {v0}, Lcom/android/task/TaskMainListView;->update()V

    .line 119
    return-void
.end method
