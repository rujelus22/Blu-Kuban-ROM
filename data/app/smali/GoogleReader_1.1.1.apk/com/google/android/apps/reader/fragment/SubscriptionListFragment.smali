.class public Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SubscriptionListFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$1;,
        Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;
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
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIALOG_RENAME_SUBSCRIPTION:Ljava/lang/String; = "reader:rename_subscription"

.field private static final DIALOG_UNSUBSCRIBE:Ljava/lang/String; = "reader:unsubscribe"

.field private static final LOADER_SUBSCRIPTIONS:I = 0x1

.field private static final LOADER_UNREAD_COUNT:I = 0x2

.field private static final STATE_TITLE:Ljava/lang/String; = "reader:title"

.field private static final STATE_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

.field private mEmpty:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

.field private mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mTagText:Landroid/widget/TextView;

.field private mTagView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 439
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;)Lcom/google/android/apps/reader/widget/UnreadCountQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    return-object v0
.end method

.method private applyPreferences()V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSubscriptionFaviconsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->setCustomFaviconsEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowSubscriptionsUnreadCounts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->setShowUnreadCounts(Z)V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 280
    return-void

    .line 276
    :cond_28
    const/4 v1, 0x0

    goto :goto_1d
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
    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 156
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 148
    const-string v0, "reader:uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    .line 149
    const-string v0, "reader:title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method private updateViews()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setAccount(Lcom/google/android/accounts/Account;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 224
    return-void

    .line 221
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_20
.end method


# virtual methods
.method public changeUri(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 204
    sget-boolean v1, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_1e

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 205
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 207
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, tagId:Ljava/lang/String;
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    .line 209
    if-eqz p2, :cond_41

    move-object v1, p2

    :goto_31
    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    .line 210
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->updateViews()V

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 213
    return-void

    :cond_41
    move-object v1, v0

    .line 209
    goto :goto_31
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStreamUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 242
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, streamId:Ljava/lang/String;
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 244
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 246
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public getTagId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->getStreamId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public highlight(Ljava/lang/String;)V
    .registers 7
    .parameter "streamId"

    .prologue
    const/4 v4, 0x1

    .line 426
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 427
    .local v0, choiceMode:I
    if-eq v0, v4, :cond_e

    .line 428
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 430
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->findStream(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 431
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_20

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 433
    .local v2, position:I
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 437
    .end local v2           #position:I
    :goto_1f
    return-void

    .line 435
    :cond_20
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_1f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    .line 301
    :cond_7
    :goto_7
    return-void

    .line 288
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getStreamUri()Landroid/net/Uri;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_7

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    const-string v0, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 292
    const-string v0, "folder"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 297
    :sswitch_26
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 286
    nop

    :sswitch_data_32
    .sparse-switch
        0x7f0b002f -> :sswitch_26
        0x7f0b0061 -> :sswitch_8
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 320
    instance-of v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_29

    .line 321
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 322
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 323
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 325
    if-eqz v0, :cond_29

    if-ne v0, v1, :cond_29

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 340
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 328
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->createRenameDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:rename_subscription"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_29

    .line 333
    :pswitch_3e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->createUnsubscribeConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:unsubscribe"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_29

    .line 338
    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    const-string v2, "org.openintents.action.TAG"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 326
    :pswitch_data_5a
    .packed-switch 0x7f0b009c
        :pswitch_3e
        :pswitch_2e
        :pswitch_4e
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 307
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 308
    .local v2, inflater:Landroid/view/MenuInflater;
    instance-of v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v5, :cond_2c

    .line 309
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 310
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 311
    .local v4, item:Ljava/lang/Object;
    if-eqz v4, :cond_2c

    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-ne v4, v5, :cond_2c

    .line 312
    const v5, 0x7f100010

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #item:Ljava/lang/Object;
    :cond_2c
    return-void
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
    .line 163
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 164
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, tagId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_28

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 167
    :pswitch_15
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->taggedUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v2

    .line 169
    :goto_1f
    return-object v2

    :pswitch_20
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->createLoader(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v2

    goto :goto_1f

    .line 165
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_20
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 358
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 359
    const v0, 0x7f100011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    const v0, 0x7f0b0074

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    const v1, 0x7f0b0075

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 363
    const v2, 0x7f0b0078

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 364
    const v3, 0x7f0b0079

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 365
    const v4, 0x7f0b0076

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 366
    const v5, 0x7f0b0099

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 367
    const v6, 0x7f0b009a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 368
    const v7, 0x7f0b009b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 370
    iget-object v8, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_a1

    move v8, v12

    .line 371
    :goto_48
    iget-object v9, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v9}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllSubscriptions()Z

    move-result v9

    .line 372
    if-eqz v8, :cond_a3

    if-nez v9, :cond_a3

    move v10, v12

    :goto_53
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    if-eqz v8, :cond_a5

    if-eqz v9, :cond_a5

    move v0, v12

    :goto_5b
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowSubscriptionsUnreadCounts()Z

    move-result v0

    .line 376
    if-eqz v8, :cond_a7

    if-nez v0, :cond_a7

    move v1, v12

    :goto_69
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    if-eqz v8, :cond_a9

    if-eqz v0, :cond_a9

    move v0, v12

    :goto_71
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSortSubscriptionsAlpha()Z

    move-result v0

    .line 380
    if-eqz v8, :cond_ab

    if-nez v0, :cond_ab

    move v1, v12

    :goto_7f
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    if-eqz v8, :cond_ad

    if-eqz v0, :cond_ad

    move v0, v12

    :goto_87
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSubscriptionFaviconsEnabled()Z

    move-result v0

    .line 384
    if-eqz v8, :cond_af

    if-nez v0, :cond_af

    move v1, v12

    :goto_95
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 385
    if-eqz v8, :cond_b1

    if-eqz v0, :cond_b1

    move v0, v12

    :goto_9d
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    return-void

    :cond_a1
    move v8, v11

    .line 370
    goto :goto_48

    :cond_a3
    move v10, v11

    .line 372
    goto :goto_53

    :cond_a5
    move v0, v11

    .line 373
    goto :goto_5b

    :cond_a7
    move v1, v11

    .line 376
    goto :goto_69

    :cond_a9
    move v0, v11

    .line 377
    goto :goto_71

    :cond_ab
    move v1, v11

    .line 380
    goto :goto_7f

    :cond_ad
    move v0, v11

    .line 381
    goto :goto_87

    :cond_af
    move v1, v11

    .line 384
    goto :goto_95

    :cond_b1
    move v0, v11

    .line 385
    goto :goto_9d
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 95
    const v2, 0x7f030039

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0062

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 100
    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagView:Landroid/view/View;

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTagText:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mEmpty:Landroid/widget/TextView;

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 110
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-static {p0, v1, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 114
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 115
    new-instance v2, Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-direct {v2, v0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    new-instance v3, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$UnreadCountDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;Lcom/google/android/apps/reader/fragment/SubscriptionListFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    new-instance v2, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-direct {v2, v0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    .line 119
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/google/android/apps/reader/fragment/ListDecorator;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-direct {v3, v4, p0}, Lcom/google/android/apps/reader/fragment/ListDecorator;-><init>(Landroid/widget/ListAdapter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->setHasOptionsMenu(Z)V

    .line 123
    if-eqz p3, :cond_b7

    .line 124
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_b8

    move v3, v5

    :goto_a7
    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_ba

    move v3, v5

    :goto_b1
    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->updateViews()V

    .line 130
    :cond_b7
    return-object v1

    :cond_b8
    move v3, v6

    .line 125
    goto :goto_a7

    :cond_ba
    move v3, v6

    .line 126
    goto :goto_b1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 137
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 138
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 228
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 229
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, item:Ljava/lang/Object;
    if-eqz v0, :cond_19

    if-ne v2, v0, :cond_19

    .line 231
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 232
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v1           #intent:Landroid/content/Intent;
    :cond_19
    return-void
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
    .line 179
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 187
    :goto_7
    return-void

    .line 181
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 184
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 179
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
    .line 59
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

    .line 193
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 201
    :goto_8
    return-void

    .line 195
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 198
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 193
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

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    .line 416
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 392
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllSubscriptions(Z)Z

    move v0, v1

    .line 393
    goto :goto_d

    .line 395
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllSubscriptions(Z)Z

    move v0, v1

    .line 396
    goto :goto_d

    .line 398
    :sswitch_1c
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowSubscriptionsUnreadCounts(Z)Z

    move v0, v1

    .line 399
    goto :goto_d

    .line 401
    :sswitch_23
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowSubscriptionsUnreadCounts(Z)Z

    move v0, v1

    .line 402
    goto :goto_d

    .line 404
    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortSubscriptionsAlpha(Z)Z

    move v0, v1

    .line 405
    goto :goto_d

    .line 407
    :sswitch_31
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortSubscriptionsAlpha(Z)Z

    move v0, v1

    .line 408
    goto :goto_d

    .line 410
    :sswitch_38
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSubscriptionFaviconsEnabled(Z)Z

    move v0, v1

    .line 411
    goto :goto_d

    .line 413
    :sswitch_3f
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSubscriptionFaviconsEnabled(Z)Z

    move v0, v1

    .line 414
    goto :goto_d

    .line 390
    :sswitch_data_46
    .sparse-switch
        0x7f0b0074 -> :sswitch_e
        0x7f0b0075 -> :sswitch_15
        0x7f0b0076 -> :sswitch_2a
        0x7f0b0078 -> :sswitch_1c
        0x7f0b0079 -> :sswitch_23
        0x7f0b0099 -> :sswitch_31
        0x7f0b009a -> :sswitch_38
        0x7f0b009b -> :sswitch_3f
    .end sparse-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 257
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->applyPreferences()V

    .line 258
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    const-string v0, "reader:title"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 264
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->LHN_PREFS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SUBSCRIPTION_FAVICONS_ENABLED:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 266
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->applyPreferences()V

    .line 268
    :cond_13
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 423
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 453
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 449
    return-void
.end method
