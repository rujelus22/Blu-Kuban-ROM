.class public Lcom/google/android/apps/reader/fragment/StreamListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StreamListFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/StreamListFragment$1;,
        Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE_CONFIRM:Ljava/lang/String; = "reader:delete_confirm"

.field private static final DIALOG_RENAME_CONFIRM:Ljava/lang/String; = "reader:rename_confirm"

.field private static final DIALOG_UNSUBSCRIBE:Ljava/lang/String; = "reader:unsubscribe"

.field private static final LOADER_PREFERENCES:I = 0x3

.field private static final LOADER_STREAMS:I = 0x1

.field private static final LOADER_UNREAD_COUNTS:I = 0x2

.field private static final REQUEST_VIEW_TAG:I = 0x1

.field private static final STATE_ACCOUNT:Ljava/lang/String; = "reader:account"

.field private static final STATE_PREFS_SYNCHRONIZED:Ljava/lang/String; = "reader:preferences_synchronized"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mListView:Landroid/widget/ListView;

.field private mPrefCallbacks:Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;

.field private mPreferencesSynchronized:Z

.field private mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

.field private mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

.field private mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 430
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/fragment/StreamListFragment;)Lcom/google/android/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/reader/fragment/StreamListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z

    return p1
.end method

.method private applyPreferences()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowSubscriptionsUnreadCounts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->setShowUnreadCounts(Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSubscriptionFaviconsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->setCustomFaviconsEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllSubscriptions()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->setShowAllSubscriptions(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    :goto_28
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 201
    return-void

    .line 197
    :cond_33
    const/4 v1, 0x0

    goto :goto_28
.end method

.method private callbacks()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->from(Landroid/content/Context;)Lcom/google/android/apps/reader/widget/ReaderWindow;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->observe(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v0

    return-object v0
.end method

.method private findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 139
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private initPreferencesLoaderIf(Z)V
    .registers 6
    .parameter

    .prologue
    .line 204
    if-eqz p1, :cond_e

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPrefCallbacks:Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 207
    :cond_e
    return-void
.end method

.method private restartPreferencesLoaderIf(Z)V
    .registers 6
    .parameter

    .prologue
    .line 210
    if-eqz p1, :cond_e

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPrefCallbacks:Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 213
    :cond_e
    return-void
.end method


# virtual methods
.method public addSubscription()V
    .registers 5

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 380
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_14

    .line 381
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 382
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 383
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 385
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_14
    return-void
.end method

.method public changeAccount(Lcom/google/android/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 153
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    .line 154
    iput-boolean v2, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    move v0, v1

    .line 157
    .local v0, hasAccount:Z
    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 159
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->restartPreferencesLoaderIf(Z)V

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearTextFilter()V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setAccount(Lcom/google/android/accounts/Account;)V

    .line 163
    return-void

    .end local v0           #hasAccount:Z
    :cond_34
    move v0, v2

    .line 156
    goto :goto_15
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 236
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 237
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 243
    :cond_6
    :goto_6
    return-void

    .line 241
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 232
    :goto_7
    return-void

    .line 229
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->retry()V

    goto :goto_7

    .line 227
    :pswitch_data_c
    .packed-switch 0x7f0b002f
        :pswitch_8
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 338
    instance-of v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_2b

    .line 339
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 340
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 341
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_2b

    if-ne v0, v1, :cond_2b

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    .line 370
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 347
    :sswitch_30
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->createRenameLabelDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:rename_confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2b

    .line 352
    :sswitch_3e
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->createDeleteConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:delete_confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2b

    .line 358
    :sswitch_4c
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->createRenameSubscriptionDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:rename_confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2b

    .line 363
    :sswitch_5a
    const-string v2, "org.openintents.action.TAG"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->newSubscriptionIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 364
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 368
    :sswitch_64
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->createUnsubscribeConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:unsubscribe"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2b

    .line 345
    :sswitch_data_72
    .sparse-switch
        0x7f0b0071 -> :sswitch_30
        0x7f0b0072 -> :sswitch_3e
        0x7f0b009c -> :sswitch_64
        0x7f0b009d -> :sswitch_4c
        0x7f0b009e -> :sswitch_5a
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 331
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/HomeAdapter;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 333
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
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
    .line 393
    packed-switch p1, :pswitch_data_2e

    .line 402
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 395
    :pswitch_9
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSortSubscriptionsAlpha()Z

    move-result v2

    .line 396
    .local v2, sortAlpha:Z
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllSubscriptions()Z

    move-result v1

    .line 397
    .local v1, showAll:Z
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    .local v0, constraint:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createLoader(Lcom/google/android/accounts/Account;ZZLjava/lang/CharSequence;)Landroid/support/v4/content/Loader;

    move-result-object v3

    .line 400
    .end local v0           #constraint:Ljava/lang/CharSequence;
    .end local v1           #showAll:Z
    .end local v2           #sortAlpha:Z
    :goto_23
    return-object v3

    :pswitch_24
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->createLoader(Lcom/google/android/accounts/Account;)Landroid/support/v4/content/Loader;

    move-result-object v3

    goto :goto_23

    .line 393
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_24
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 264
    const v0, 0x7f10000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    const v0, 0x7f0b0074

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    const v1, 0x7f0b0075

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 268
    const v2, 0x7f0b0078

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 269
    const v3, 0x7f0b0079

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 270
    const v4, 0x7f0b0076

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 271
    const v5, 0x7f0b0099

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 272
    const v6, 0x7f0b009a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 273
    const v7, 0x7f0b009b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 275
    iget-object v8, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v8, :cond_9e

    move v8, v12

    .line 277
    :goto_45
    iget-object v9, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v9}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllSubscriptions()Z

    move-result v9

    .line 278
    if-eqz v8, :cond_a0

    if-nez v9, :cond_a0

    move v10, v12

    :goto_50
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    if-eqz v8, :cond_a2

    if-eqz v9, :cond_a2

    move v0, v12

    :goto_58
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowSubscriptionsUnreadCounts()Z

    move-result v0

    .line 282
    if-eqz v8, :cond_a4

    if-nez v0, :cond_a4

    move v1, v12

    :goto_66
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    if-eqz v8, :cond_a6

    if-eqz v0, :cond_a6

    move v0, v12

    :goto_6e
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSortSubscriptionsAlpha()Z

    move-result v0

    .line 286
    if-eqz v8, :cond_a8

    if-nez v0, :cond_a8

    move v1, v12

    :goto_7c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    if-eqz v8, :cond_aa

    if-eqz v0, :cond_aa

    move v0, v12

    :goto_84
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSubscriptionFaviconsEnabled()Z

    move-result v0

    .line 290
    if-eqz v8, :cond_ac

    if-nez v0, :cond_ac

    move v1, v12

    :goto_92
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    if-eqz v8, :cond_ae

    if-eqz v0, :cond_ae

    move v0, v12

    :goto_9a
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    return-void

    :cond_9e
    move v8, v11

    .line 275
    goto :goto_45

    :cond_a0
    move v10, v11

    .line 278
    goto :goto_50

    :cond_a2
    move v0, v11

    .line 279
    goto :goto_58

    :cond_a4
    move v1, v11

    .line 282
    goto :goto_66

    :cond_a6
    move v0, v11

    .line 283
    goto :goto_6e

    :cond_a8
    move v1, v11

    .line 286
    goto :goto_7c

    :cond_aa
    move v0, v11

    .line 287
    goto :goto_84

    :cond_ac
    move v1, v11

    .line 290
    goto :goto_92

    :cond_ae
    move v0, v11

    .line 291
    goto :goto_9a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 91
    const v5, 0x7f030031

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, context:Landroid/content/Context;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mListView:Landroid/widget/ListView;

    .line 95
    const v5, 0x7f0b005e

    invoke-direct {p0, v5}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    .line 96
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    .line 99
    .local v2, loaderManager:Landroid/support/v4/app/LoaderManager;
    new-instance v5, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->callbacks()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v6

    invoke-static {p0, v4, v6, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v6

    invoke-direct {v5, v0, v2, v8, v6}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 101
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 102
    new-instance v5, Lcom/google/android/apps/reader/fragment/Loadable;

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->callbacks()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v7

    invoke-direct {v5, v0, v2, v6, v7}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 103
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 105
    new-instance v5, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    invoke-direct {v5, v0}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    .line 106
    new-instance v5, Lcom/google/android/apps/reader/widget/HomeAdapter;

    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    invoke-direct {v5, v0, v6, p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/reader/widget/UnreadCountsQuery;Landroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    .line 107
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v7, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/reader/fragment/Loadable;->filterable(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "home_expanded"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    .local v1, expanded:Z
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->setExpanded(Z)V

    .line 113
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 115
    if-eqz p3, :cond_96

    .line 116
    const-string v5, "reader:account"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/accounts/Account;

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    .line 117
    const-string v5, "reader:preferences_synchronized"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z

    .line 120
    :cond_96
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v6, :cond_c9

    move v6, v8

    :goto_9d
    invoke-virtual {v5, v6}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 121
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v6, :cond_cb

    move v6, v8

    :goto_a7
    invoke-virtual {v5, v6}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 122
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setAccount(Lcom/google/android/accounts/Account;)V

    .line 124
    new-instance v5, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;-><init>(Lcom/google/android/apps/reader/fragment/StreamListFragment;Lcom/google/android/apps/reader/fragment/StreamListFragment$1;)V

    iput-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPrefCallbacks:Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;

    .line 125
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v5, :cond_cd

    iget-boolean v5, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z

    if-nez v5, :cond_cd

    move v5, v8

    :goto_c2
    invoke-direct {p0, v5}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->initPreferencesLoaderIf(Z)V

    .line 127
    invoke-virtual {p0, v8}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->setHasOptionsMenu(Z)V

    .line 129
    return-object v4

    :cond_c9
    move v6, v9

    .line 120
    goto :goto_9d

    :cond_cb
    move v6, v9

    .line 121
    goto :goto_a7

    :cond_cd
    move v5, v9

    .line 125
    goto :goto_c2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 175
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 176
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 251
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, item:Ljava/lang/Object;
    sget-object v2, Lcom/google/android/apps/reader/widget/HomeAdapter;->ITEM_HOME:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 253
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/widget/HomeAdapter;->toggleExpanded()V

    .line 260
    :cond_11
    :goto_11
    return-void

    .line 255
    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->newViewIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_11

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter
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
    .line 408
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 416
    :goto_7
    return-void

    .line 410
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/HomeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 413
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 408
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
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
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 428
    :goto_8
    return-void

    .line 422
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreamListAdapter:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 425
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCountsAdapter:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 420
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    move v0, v2

    .line 325
    :goto_a
    return v0

    .line 298
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->addSubscription()V

    move v0, v1

    .line 299
    goto :goto_a

    .line 301
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllSubscriptions(Z)Z

    move v0, v1

    .line 302
    goto :goto_a

    .line 304
    :sswitch_17
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllSubscriptions(Z)Z

    move v0, v1

    .line 305
    goto :goto_a

    .line 307
    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowSubscriptionsUnreadCounts(Z)Z

    move v0, v1

    .line 308
    goto :goto_a

    .line 310
    :sswitch_25
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowSubscriptionsUnreadCounts(Z)Z

    move v0, v1

    .line 311
    goto :goto_a

    .line 313
    :sswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortSubscriptionsAlpha(Z)Z

    move v0, v1

    .line 314
    goto :goto_a

    .line 316
    :sswitch_33
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortSubscriptionsAlpha(Z)Z

    move v0, v1

    .line 317
    goto :goto_a

    .line 319
    :sswitch_3a
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSubscriptionFaviconsEnabled(Z)Z

    move v0, v1

    .line 320
    goto :goto_a

    .line 322
    :sswitch_41
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSubscriptionFaviconsEnabled(Z)Z

    move v0, v1

    .line 323
    goto :goto_a

    .line 296
    :sswitch_data_48
    .sparse-switch
        0x7f0b0070 -> :sswitch_b
        0x7f0b0074 -> :sswitch_10
        0x7f0b0075 -> :sswitch_17
        0x7f0b0076 -> :sswitch_2c
        0x7f0b0078 -> :sswitch_1e
        0x7f0b0079 -> :sswitch_25
        0x7f0b0099 -> :sswitch_33
        0x7f0b009a -> :sswitch_3a
        0x7f0b009b -> :sswitch_41
    .end sparse-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->applyPreferences()V

    .line 169
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "reader:account"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v0, "reader:preferences_synchronized"

    iget-boolean v1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 182
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->LHN_PREFS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SUBSCRIPTION_FAVICONS_ENABLED:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->applyPreferences()V

    .line 186
    :cond_13
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 218
    return-void
.end method

.method public retry()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment;->mUnreadCounts:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    .line 223
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 389
    return-void
.end method
