.class public Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "EsWidgetConfigurationActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;,
        Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$WidgetCircleQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

.field private final mAdapterLock:Ljava/lang/Object;

.field private mAppWidgetId:I

.field private mDisplayingEmptyView:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapterLock:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 246
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstance"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 111
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 112
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_22

    .line 113
    const-string v5, "appWidgetId"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    .line 119
    :goto_1a
    iget v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    if-nez v5, :cond_25

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->finish()V

    .line 154
    :goto_21
    return-void

    .line 116
    :cond_22
    iput v8, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    goto :goto_1a

    .line 124
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 125
    iget v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-static {p0, v5, v7, v7}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->saveCircleInfo(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-static {p0, v5, v6}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 128
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v4, resultValue:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->finish()V

    .line 134
    .end local v4           #resultValue:Landroid/content/Intent;
    :cond_4c
    const v5, 0x7f0300ae

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->setContentView(I)V

    .line 136
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mDisplayingEmptyView:Z

    .line 138
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    .line 139
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300af

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, header:Landroid/view/View;
    const v5, 0x7f0d00a4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v5, 0x7f0d0195

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, circleName:Landroid/widget/TextView;
    const v5, 0x7f0701c8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 145
    const v5, 0x7f0d0196

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2, v7, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 148
    new-instance v5, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    invoke-direct {v5, p0, p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;-><init>(Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    .line 149
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->updateDisplay()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v8, v7, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_21
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    packed-switch p1, :pswitch_data_18

    .line 172
    :cond_4
    :goto_4
    return-object v0

    .line 163
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 167
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$WidgetCircleQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_4

    .line 161
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 205
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    .line 209
    if-gez p3, :cond_34

    .line 210
    const-string v0, "v.all.circles"

    .line 211
    .local v0, circleId:Ljava/lang/String;
    const v4, 0x7f0700d1

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, circleName:Ljava/lang/String;
    :goto_12
    iget v4, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-static {p0, v4, v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->saveCircleInfo(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-static {p0, v4, v5}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 234
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v3, resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->finish()V

    .line 238
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #circleName:Ljava/lang/String;
    .end local v3           #resultValue:Landroid/content/Intent;
    :goto_33
    return-void

    .line 213
    :cond_34
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapterLock:Ljava/lang/Object;

    monitor-enter v5

    .line 214
    :try_start_37
    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 215
    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 216
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gt v4, p3, :cond_5a

    .line 217
    :cond_55
    monitor-exit v5

    goto :goto_33

    .line 226
    .end local v2           #cursor:Landroid/database/Cursor;
    :catchall_57
    move-exception v4

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_57

    throw v4

    .line 220
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_5a
    :try_start_5a
    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0       #circleId:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1       #circleName:Ljava/lang/String;
    monitor-exit v5

    goto :goto_12

    .line 224
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #circleName:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_57

    goto :goto_33
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 190
    :goto_7
    return-void

    .line 183
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mAdapter:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mDisplayingEmptyView:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->updateDisplay()V

    .line 187
    monitor-exit v1

    goto :goto_7

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v0

    .line 181
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected updateDisplay()V
    .registers 8

    .prologue
    const v6, 0x7f0d007b

    const v5, 0x7f0d0071

    const v4, 0x1020004

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 253
    iget-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mDisplayingEmptyView:Z

    if-eqz v0, :cond_2c

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :goto_2b
    return-void

    .line 259
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 260
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b
.end method
