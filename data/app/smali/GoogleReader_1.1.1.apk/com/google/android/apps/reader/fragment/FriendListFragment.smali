.class public Lcom/google/android/apps/reader/fragment/FriendListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FriendListFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/FriendListFragment$1;,
        Lcom/google/android/apps/reader/fragment/FriendListFragment$UnreadCountDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_FRIENDS:I = 0x1

.field private static final LOADER_UNREAD_COUNT:I = 0x2

.field private static final STATE_FRIENDS_URI:Ljava/lang/String; = "reader:friends_uri"

.field private static final STATE_STREAM_URI:Ljava/lang/String; = "reader:stream_uri"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

.field private mFollowingView:Landroid/view/View;

.field private mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mFriendsUri:Landroid/net/Uri;

.field private mListView:Landroid/widget/ListView;

.field private mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

.field private mStreamUri:Landroid/net/Uri;

.field private mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/google/android/apps/reader/fragment/FriendListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 368
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/fragment/FriendListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFollowingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/fragment/FriendListFragment;)Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/reader/fragment/FriendListFragment;)Lcom/google/android/apps/reader/widget/UnreadCountQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    return-object v0
.end method

.method private applyPreferences()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->notifyDataSetChanged()V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowFriendsUnreadCounts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->setShowUnreadCounts(Z)V

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasFriends()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 227
    return-void
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
    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 143
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private hasFriends()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private hasStream()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const-string v0, "reader:friends_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    .line 103
    const-string v0, "reader:stream_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    .line 104
    return-void
.end method


# virtual methods
.method public changeUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5
    .parameter "friendsUri"
    .parameter "streamUri"

    .prologue
    .line 147
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_1e
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_3c

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 151
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasFriends()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasStream()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 155
    return-void
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

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
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStreamUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    return-object v0
.end method

.method public highlight(Ljava/lang/String;)V
    .registers 8
    .parameter "streamId"

    .prologue
    const/4 v5, 0x1

    .line 337
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 338
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 339
    .local v0, choiceMode:I
    if-eq v0, v5, :cond_e

    .line 340
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 342
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->findStream(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 343
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1e

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 345
    .local v3, position:I
    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 349
    .end local v3           #position:I
    :goto_1d
    return-void

    .line 347
    :cond_1e
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_1d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    .line 272
    :cond_7
    :goto_7
    return-void

    .line 259
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getStreamUri()Landroid/net/Uri;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_7

    .line 261
    const v1, 0x7f0d001e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 268
    :sswitch_25
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 257
    :sswitch_data_30
    .sparse-switch
        0x7f0b002f -> :sswitch_25
        0x7f0b0061 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_8

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    :cond_8
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
    .line 169
    packed-switch p1, :pswitch_data_26

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 171
    :pswitch_9
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v2

    .line 175
    :goto_11
    return-object v2

    .line 173
    :pswitch_12
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 174
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, streamId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->createLoader(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v2

    goto :goto_11

    .line 169
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 286
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 288
    const v0, 0x7f0b0074

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 289
    const v1, 0x7f0b0075

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 290
    const v2, 0x7f0b0078

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 291
    const v3, 0x7f0b0079

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 292
    const v4, 0x7f0b0076

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 293
    const v5, 0x7f0b0077

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 295
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasFriends()Z

    move-result v6

    .line 296
    iget-object v7, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowAllFriends()Z

    move-result v7

    .line 298
    if-eqz v6, :cond_7c

    if-nez v7, :cond_7c

    move v8, v10

    :goto_44
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    if-eqz v6, :cond_7e

    if-eqz v7, :cond_7e

    move v0, v10

    :goto_4c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getShowFriendsUnreadCounts()Z

    move-result v0

    .line 302
    if-eqz v6, :cond_80

    if-nez v0, :cond_80

    move v1, v10

    :goto_5a
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    if-eqz v6, :cond_82

    if-eqz v0, :cond_82

    move v0, v10

    :goto_62
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSortFriendsAlpha()Z

    move-result v0

    .line 306
    if-eqz v6, :cond_84

    if-nez v0, :cond_84

    move v1, v10

    :goto_70
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    if-eqz v6, :cond_86

    if-eqz v0, :cond_86

    move v0, v10

    :goto_78
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    return-void

    :cond_7c
    move v8, v9

    .line 298
    goto :goto_44

    :cond_7e
    move v0, v9

    .line 299
    goto :goto_4c

    :cond_80
    move v1, v9

    .line 302
    goto :goto_5a

    :cond_82
    move v0, v9

    .line 303
    goto :goto_62

    :cond_84
    move v1, v9

    .line 306
    goto :goto_70

    :cond_86
    move v0, v9

    .line 307
    goto :goto_78
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 109
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0062

    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    .line 112
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFollowingView:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFollowingView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mListView:Landroid/widget/ListView;

    .line 118
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFollowingView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x7f0d001e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 121
    new-instance v3, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-static {p0, v2, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-direct {v3, v0, v4, v6, v5}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 124
    new-instance v3, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v0, v4, v5, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 127
    new-instance v3, Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-direct {v3, v0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    .line 128
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    new-instance v4, Lcom/google/android/apps/reader/fragment/FriendListFragment$UnreadCountDataSetObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/reader/fragment/FriendListFragment$UnreadCountDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/FriendListFragment;Lcom/google/android/apps/reader/fragment/FriendListFragment$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    new-instance v3, Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-direct {v3, v0}, Lcom/google/android/apps/reader/widget/FriendListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    .line 131
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/apps/reader/fragment/ListDecorator;

    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-direct {v4, v5, p0}, Lcom/google/android/apps/reader/fragment/ListDecorator;-><init>(Landroid/widget/ListAdapter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->setHasOptionsMenu(Z)V

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasFriends()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 135
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->hasStream()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 137
    return-object v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 92
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, item:Ljava/lang/Object;
    if-eqz v0, :cond_19

    if-ne v2, v0, :cond_19

    .line 234
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->newStreamIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 235
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->startActivity(Landroid/content/Intent;)V

    .line 237
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
    .line 185
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 193
    :goto_7
    return-void

    .line 187
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 190
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 185
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
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

    .line 199
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 207
    :goto_8
    return-void

    .line 201
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 204
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCountData:Lcom/google/android/apps/reader/widget/UnreadCountQuery;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 199
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

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 332
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 314
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllFriends(Z)Z

    move v0, v1

    .line 315
    goto :goto_d

    .line 317
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowAllFriends(Z)Z

    move v0, v1

    .line 318
    goto :goto_d

    .line 320
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowFriendsUnreadCounts(Z)Z

    move v0, v1

    .line 321
    goto :goto_d

    .line 323
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setShowFriendsUnreadCounts(Z)Z

    move v0, v1

    .line 324
    goto :goto_d

    .line 326
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortFriendsAlpha(Z)Z

    move v0, v1

    .line 327
    goto :goto_d

    .line 329
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSortFriendsAlpha(Z)Z

    move v0, v1

    .line 330
    goto :goto_d

    .line 312
    :pswitch_data_38
    .packed-switch 0x7f0b0074
        :pswitch_e
        :pswitch_15
        :pswitch_2a
        :pswitch_31
        :pswitch_1c
        :pswitch_23
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->applyPreferences()V

    .line 216
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "reader:friends_uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriendsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    const-string v0, "reader:stream_uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 278
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->LHN_PREFS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->applyPreferences()V

    .line 281
    :cond_b
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mFriends:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mUnreadCount:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 358
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/FriendListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/FriendListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 353
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/FriendListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 362
    return-void
.end method
