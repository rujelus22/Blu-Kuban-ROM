.class public final Lcom/google/android/apps/reader/fragment/StreamFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StreamFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/StreamFragment$1;,
        Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;,
        Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;,
        Lcom/google/android/apps/reader/fragment/StreamFragment$StreamObserver;,
        Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIALOG_DELETE_CONFIRM:Ljava/lang/String; = "reader:delete_confirm"

.field private static final DIALOG_MARK_ALL_AS_READ_CONFIRM:Ljava/lang/String; = "reader:dialog_mark_read_confirm"

.field private static final DIALOG_RANKING:Ljava/lang/String; = "reader:dialog_ranking"

.field private static final DIALOG_RENAME_CONFIRM:Ljava/lang/String; = "reader:rename_confirm"

.field private static final DIALOG_UNSUBSCRIBE_CONFIRM:Ljava/lang/String; = "reader:unsubscribe_confirm"

.field private static final LOADER_ITEMS:I = 0x1

.field private static final REQUEST_DELETE_TAG:I = 0x2

.field private static final REQUEST_MARK_ALL_AS_READ:I = 0x4

.field private static final REQUEST_RENAME_TAG:I = 0x3

.field private static final REQUEST_VIEW_ITEM:I = 0x1

.field private static final STATE_TITLE:Ljava/lang/String; = "reader:title"

.field private static final STATE_URI:Ljava/lang/String; = "reader:uri"

.field public static final SUPPORTED_CONTENT_TYPES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StreamFragment"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mEmpty:Landroid/widget/TextView;

.field private mFolder:Z

.field private mItemSelector:Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;

.field private mItems:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mListView:Landroid/widget/ListView;

.field private mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

.field private mObserver:Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;

.field private mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

.field private mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    const-class v0, Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v3

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/StreamFragment;->$assertionsDisabled:Z

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/fragment/StreamFragment;->SUPPORTED_CONTENT_TYPES:Ljava/util/List;

    return-void

    :cond_24
    move v0, v2

    .line 80
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 879
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/fragment/StreamFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->updateEmptyText()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/reader/fragment/StreamFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->updateActionBar()V

    return-void
.end method

.method private callbacks(Landroid/view/View;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 4
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->from(Landroid/content/Context;)Lcom/google/android/apps/reader/widget/ReaderWindow;

    move-result-object v0

    invoke-static {p0, p1, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->observe(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v0

    return-object v0
.end method

.method private changeFolders()V
    .registers 4

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getSubscriptionUri()Landroid/net/Uri;

    move-result-object v1

    .line 548
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_10

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.openintents.action.TAG"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 552
    .end local v0           #intent:Landroid/content/Intent;
    :cond_10
    return-void
.end method

.method private changeUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 331
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    .line 332
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->handleUriChanged()V

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 334
    return-void

    .line 333
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private confirmMarkAllAsRead()V
    .registers 5

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v1

    .line 574
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1c

    .line 575
    new-instance v0, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/reader/dialog/MarkAllReadConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 576
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 577
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "reader:dialog_mark_read_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 579
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_1c
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
    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 188
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private getEmptyText()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v0

    .line 803
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 804
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 806
    if-eqz v2, :cond_27

    .line 807
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_1c

    .line 809
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->unsetUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    :cond_1c
    const-string v1, "user/-/state/com.google/read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 812
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyTextForStream(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 816
    :goto_26
    return-object v0

    .line 813
    :cond_27
    if-eqz v3, :cond_37

    .line 814
    const v0, 0x7f0d00b0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 816
    :cond_37
    const v0, 0x7f0d00a7

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_26
.end method

.method private getEmptyTextForFollowing(Z)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 740
    if-eqz p1, :cond_e

    .line 741
    const v1, 0x7f0d00ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 743
    :goto_d
    return-object v0

    :cond_e
    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d
.end method

.method private getEmptyTextForShared(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 772
    if-nez v1, :cond_14

    .line 773
    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 779
    :goto_13
    return-object v0

    .line 775
    :cond_14
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->createBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 777
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyTextForSharedByMe(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 779
    :cond_23
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyTextForSharedByFriend(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13
.end method

.method private getEmptyTextForSharedByFriend(Z)Ljava/lang/CharSequence;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    .line 759
    if-eqz p1, :cond_1a

    .line 760
    const v1, 0x7f0d00af

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mDisplayName:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 765
    :goto_19
    return-object v0

    .line 762
    :cond_1a
    const v1, 0x7f0d00ae

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mDisplayName:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 765
    :cond_28
    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_19
.end method

.method private getEmptyTextForSharedByMe(Z)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 749
    if-eqz p1, :cond_e

    .line 750
    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 752
    :goto_d
    return-object v0

    :cond_e
    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d
.end method

.method private getEmptyTextForStream(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 786
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isMyStuff(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez p2, :cond_14

    .line 787
    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 797
    :goto_13
    return-object v0

    .line 788
    :cond_14
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isBroadcast(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 789
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyTextForShared(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 790
    :cond_1f
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isNotes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    if-nez p2, :cond_2f

    .line 791
    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 792
    :cond_2f
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    if-nez p2, :cond_3f

    .line 793
    const v1, 0x7f0d00a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 794
    :cond_3f
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isFollowing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 795
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyTextForFollowing(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 797
    :cond_4a
    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13
.end method

.method private getSubscriptionUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 692
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, streamId:Ljava/lang/String;
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 695
    :cond_18
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 697
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private getTagUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 703
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, streamId:Ljava/lang/String;
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 705
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 707
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private handleUriChanged()V
    .registers 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->updatePreferences()V

    .line 338
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->updateNotSubscribedFragment()V

    .line 339
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->updateActionBar()V

    .line 340
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->notifyObserver()V

    .line 341
    return-void
.end method

.method private hasItemFragment()Z
    .registers 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 387
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isSearch()Z
    .registers 3

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v0

    .line 618
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private notifyObserver()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mObserver:Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;

    if-eqz v0, :cond_9

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mObserver:Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;

    invoke-interface {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;->onStreamChanged()V

    .line 656
    :cond_9
    return-void
.end method

.method private renameSubscription()V
    .registers 5

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getSubscriptionUri()Landroid/net/Uri;

    move-result-object v1

    .line 532
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_16

    .line 533
    new-instance v0, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 534
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "reader:rename_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 536
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_16
    return-void
.end method

.method private renameTag()V
    .registers 5

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getTagUri()Landroid/net/Uri;

    move-result-object v1

    .line 565
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1c

    .line 566
    new-instance v0, Lcom/google/android/apps/reader/dialog/RenameLabelDialog;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mFolder:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/reader/dialog/RenameLabelDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    .line 567
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 568
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "reader:rename_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 570
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_1c
    return-void
.end method

.method private showDeleteConfirmation()V
    .registers 5

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getTagUri()Landroid/net/Uri;

    move-result-object v1

    .line 556
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1a

    .line 557
    new-instance v0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 558
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "reader:delete_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 561
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_1a
    return-void
.end method

.method private showRankingChooser()V
    .registers 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    .line 594
    new-instance v0, Lcom/google/android/apps/reader/dialog/RankingDialog;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/RankingDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader:dialog_ranking"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/RankingDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 597
    :cond_16
    return-void
.end method

.method private simulateKeyDown(I)Z
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 436
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 437
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method private unsubscribe()V
    .registers 5

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getSubscriptionUri()Landroid/net/Uri;

    move-result-object v1

    .line 540
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_16

    .line 541
    new-instance v0, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 542
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "reader:unsubscribe_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 544
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_16
    return-void
.end method

.method private updateActionBar()V
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 638
    return-void
.end method

.method private updateEmptyText()V
    .registers 3

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method

.method private updateNotSubscribedFragment()V
    .registers 5

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 627
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, streamId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 629
    .local v2, title:Ljava/lang/String;
    :goto_13
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 630
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->changeStreamId(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_1c
    return-void

    .line 628
    .end local v2           #title:Ljava/lang/String;
    :cond_1d
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_13

    .line 632
    .restart local v2       #title:Ljava/lang/String;
    :cond_20
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->clear()V

    goto :goto_1c
.end method

.method private updatePreferences()V
    .registers 4

    .prologue
    .line 641
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1b

    .line 642
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 643
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, streamId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setAccount(Lcom/google/android/accounts/Account;)V

    .line 645
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->setStream(Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 650
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #streamId:Ljava/lang/String;
    :goto_1a
    return-void

    .line 647
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->clear()V

    .line 648
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->clear()V

    goto :goto_1a
.end method


# virtual methods
.method public changeIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 233
    if-nez p1, :cond_b

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 237
    :cond_b
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    .line 238
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mDisplayName:Ljava/lang/CharSequence;

    .line 239
    const-string v0, "folder"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mFolder:Z

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->reset()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->resetList()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 247
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 248
    :goto_41
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 249
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 251
    if-nez v1, :cond_61

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "query was not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    move-object v4, v6

    .line 247
    goto :goto_41

    .line 254
    :cond_61
    if-nez v2, :cond_199

    .line 256
    const-string v2, "StreamFragment"

    const-string v3, "app_data was not specified"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 260
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_7c

    .line 262
    const-string v3, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    move-object v0, v2

    .line 265
    :goto_7d
    const v2, 0x7f0d008c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 266
    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    .line 268
    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v3, "stream_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v2, :cond_ab

    .line 271
    new-instance v3, Lcom/google/android/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v2, v4}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v3, v1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->searchUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    .line 321
    :goto_aa
    return-void

    .line 274
    :cond_ab
    const-string v0, "StreamFragment"

    const-string v1, "Cannot search without account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto :goto_aa

    .line 277
    :cond_b8
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 282
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_aa

    .line 285
    :cond_d6
    const-string v1, "content"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 286
    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 287
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto :goto_aa

    .line 288
    :cond_ea
    sget-object v1, Lcom/google/android/apps/reader/fragment/StreamFragment;->SUPPORTED_CONTENT_TYPES:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 290
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_119

    .line 292
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 293
    sget-object v3, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v3

    if-nez v3, :cond_117

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->getReadItemsVisible(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_117

    move v3, v8

    .line 295
    :goto_10b
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto :goto_aa

    :cond_117
    move v3, v7

    .line 293
    goto :goto_10b

    .line 298
    :cond_119
    const-string v0, "StreamFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account was not specified: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v6}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto/16 :goto_aa

    .line 302
    :cond_136
    const-string v0, "StreamFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0, v6}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto/16 :goto_aa

    .line 305
    :cond_153
    const-string v1, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 306
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_170

    .line 308
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->createSubscriptionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v2, "newest"

    .line 311
    invoke-static {v0, v1, v7, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto/16 :goto_aa

    .line 314
    :cond_170
    const-string v0, "StreamFragment"

    const-string v1, "Account not selected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, v6}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto/16 :goto_aa

    .line 318
    :cond_17c
    const-string v0, "StreamFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported intent data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, v6}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto/16 :goto_aa

    :cond_199
    move-object v0, v2

    goto/16 :goto_7d
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItemsUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v0

    .line 687
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getStreamTitle()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const/high16 v2, 0x7f0d

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    .line 673
    :cond_e
    :goto_e
    return-object v0

    .line 662
    :cond_f
    if-eqz v0, :cond_22

    .line 665
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 666
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 667
    if-nez v0, :cond_e

    .line 670
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    .line 673
    :cond_22
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e
.end method

.method public highlight(J)V
    .registers 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 712
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 713
    .local v0, choiceMode:I
    if-eq v0, v5, :cond_e

    .line 714
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 716
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 717
    .local v3, start:I
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v4, p1, p2, v3}, Lcom/google/android/apps/reader/widget/StreamAdapter;->findItem(JI)Landroid/database/Cursor;

    move-result-object v1

    .line 718
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2e

    .line 719
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 720
    .local v2, position:I
    if-ne v2, v3, :cond_23

    .line 732
    .end local v2           #position:I
    :goto_22
    return-void

    .line 727
    .restart local v2       #position:I
    :cond_23
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 731
    .end local v2           #position:I
    :goto_28
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItemSelector:Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->setSelectedItemId(J)V

    goto :goto_22

    .line 729
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_28
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 392
    packed-switch p1, :pswitch_data_60

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 429
    :cond_7
    :goto_7
    return-void

    .line 394
    :pswitch_8
    if-ne p2, v0, :cond_7

    .line 398
    if-nez p3, :cond_14

    .line 399
    const-string v0, "StreamFragment"

    const-string v1, "Result data was null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 402
    :cond_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 403
    if-nez v0, :cond_22

    .line 404
    const-string v0, "StreamFragment"

    const-string v1, "Result had no content URI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 407
    :cond_22
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 408
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_45

    .line 409
    const-string v1, "StreamFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected content URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 413
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItemSelector:Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->setSelectedItemId(J)V

    goto :goto_7

    .line 417
    :pswitch_4b
    if-ne p2, v0, :cond_7

    .line 420
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    goto :goto_7

    .line 424
    :pswitch_59
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->showAllAsRead()V

    goto :goto_7

    .line 392
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4b
        :pswitch_4b
        :pswitch_59
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 858
    :goto_7
    return-void

    .line 855
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 853
    :pswitch_data_e
    .packed-switch 0x7f0b002f
        :pswitch_8
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 583
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamAdapter;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 585
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
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
    .line 829
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/StreamFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 830
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b0094

    const v3, 0x7f0b0093

    const v2, 0x7f0b0092

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 461
    const v0, 0x7f10000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 462
    const v0, 0x7f100010

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mFolder:Z

    if-eqz v0, :cond_b3

    const v0, 0x7f100004

    :goto_21
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 464
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b2

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_ba

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isSearch()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 467
    sget-object v1, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 468
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 469
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_b8

    move v0, v5

    :goto_4a
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 471
    const v0, 0x7f0b0095

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    :goto_5e
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    :cond_70
    move v1, v5

    .line 481
    :goto_71
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v0

    .line 482
    const v2, 0x7f0b009c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v1, :cond_dc

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->isPanelVisible()Z

    move-result v3

    if-nez v3, :cond_dc

    move v3, v5

    :goto_87
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 484
    const v2, 0x7f0b009d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 485
    const v2, 0x7f0b009e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    const v1, 0x7f0b0071

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    const v1, 0x7f0b0072

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 489
    :cond_b2
    return-void

    .line 463
    :cond_b3
    const v0, 0x7f100012

    goto/16 :goto_21

    :cond_b8
    move v0, v4

    .line 469
    goto :goto_4a

    .line 473
    :cond_ba
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 474
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 475
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    const v0, 0x7f0b0095

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5e

    :cond_da
    move v1, v4

    .line 479
    goto :goto_71

    :cond_dc
    move v3, v4

    .line 482
    goto :goto_87
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 136
    const v2, 0x7f03001d

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mEmpty:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f0b003c

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    new-instance v3, Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/fragment/StreamFragment$SubscribedDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/StreamFragment;Lcom/google/android/apps/reader/fragment/StreamFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 141
    const v2, 0x7f0b003e

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    .line 142
    const v2, 0x7f0b003f

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, context:Landroid/content/Context;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    .line 148
    new-instance v2, Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-direct {v2, v0}, Lcom/google/android/apps/reader/widget/StreamAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    .line 149
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    new-instance v3, Lcom/google/android/apps/reader/fragment/StreamFragment$StreamObserver;

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/fragment/StreamFragment$StreamObserver;-><init>(Lcom/google/android/apps/reader/fragment/StreamFragment;Lcom/google/android/apps/reader/fragment/StreamFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/StreamAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 150
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/google/android/apps/reader/fragment/ListDecorator;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-direct {v3, v4, p0}, Lcom/google/android/apps/reader/fragment/ListDecorator;-><init>(Landroid/widget/ListAdapter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->callbacks(Landroid/view/View;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshBeforeLoading()V

    .line 155
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/google/android/apps/reader/fragment/ListScrollObserver;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {v3, v4}, Lcom/google/android/apps/reader/fragment/ListScrollObserver;-><init>(Lcom/google/android/apps/reader/fragment/Loadable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 158
    new-instance v2, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;-><init>(Landroid/widget/ListView;Lcom/google/android/apps/reader/widget/StreamAdapter;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItemSelector:Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;

    .line 160
    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/fragment/StreamFragment;->setHasOptionsMenu(Z)V

    .line 162
    if-eqz p3, :cond_c0

    .line 163
    const-string v2, "reader:uri"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    .line 164
    const-string v2, "reader:title"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->handleUriChanged()V

    .line 167
    :cond_c0
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_cb

    move v3, v5

    :goto_c7
    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 169
    return-object v1

    :cond_cb
    move v3, v6

    .line 167
    goto :goto_c7
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 177
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 441
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 442
    .local v1, item:Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 443
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1a

    if-ne v1, v0, :cond_1a

    .line 444
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v2, v0, p1, p2}, Lcom/google/android/apps/reader/widget/StreamAdapter;->onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 445
    const/4 v2, 0x1

    .line 454
    :goto_19
    return v2

    .line 448
    :cond_1a
    packed-switch p1, :pswitch_data_2e

    .line 454
    const/4 v2, 0x0

    goto :goto_19

    .line 450
    :pswitch_1f
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->simulateKeyDown(I)Z

    move-result v2

    goto :goto_19

    .line 452
    :pswitch_26
    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->simulateKeyDown(I)Z

    move-result v2

    goto :goto_19

    .line 448
    nop

    :pswitch_data_2e
    .packed-switch 0x26
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 359
    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_37

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/widget/StreamAdapter;->newViewItemInStreamIntent(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_37

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_23

    .line 363
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 365
    :cond_23
    const-string v1, "com.google.reader.intent.extra.SUBSCRIBE_DECLINED"

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mNotSubscribed:Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getDeclined()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->hasItemFragment()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 373
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 383
    :cond_37
    :goto_37
    return-void

    .line 379
    :cond_38
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_37
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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
    .line 837
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/StreamFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 838
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/StreamAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 839
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 845
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/StreamFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 846
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 847
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 493
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_4e

    .line 526
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 495
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getConfirmMarkAsRead()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 496
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->confirmMarkAllAsRead()V

    :goto_18
    move v0, v2

    .line 500
    goto :goto_c

    .line 498
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->markAllAsRead()V

    goto :goto_18

    .line 502
    :sswitch_20
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setReadItemsVisiblePreference(Z)Z

    move v0, v2

    .line 503
    goto :goto_c

    .line 505
    :sswitch_28
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setReadItemsVisiblePreference(Z)Z

    move v0, v2

    .line 506
    goto :goto_c

    .line 508
    :sswitch_2f
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->showRankingChooser()V

    move v0, v2

    .line 509
    goto :goto_c

    .line 511
    :sswitch_34
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->showDeleteConfirmation()V

    move v0, v2

    .line 512
    goto :goto_c

    .line 514
    :sswitch_39
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->renameTag()V

    move v0, v2

    .line 515
    goto :goto_c

    .line 517
    :sswitch_3e
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeFolders()V

    move v0, v2

    .line 518
    goto :goto_c

    .line 520
    :sswitch_43
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->unsubscribe()V

    move v0, v2

    .line 521
    goto :goto_c

    .line 523
    :sswitch_48
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->renameSubscription()V

    move v0, v2

    .line 524
    goto :goto_c

    .line 493
    nop

    :sswitch_data_4e
    .sparse-switch
        0x7f0b0071 -> :sswitch_39
        0x7f0b0072 -> :sswitch_34
        0x7f0b0092 -> :sswitch_d
        0x7f0b0093 -> :sswitch_28
        0x7f0b0094 -> :sswitch_20
        0x7f0b0095 -> :sswitch_2f
        0x7f0b009c -> :sswitch_43
        0x7f0b009d -> :sswitch_48
        0x7f0b009e -> :sswitch_3e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->syncChanges()Z

    .line 200
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 201
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 194
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    const-string v0, "reader:title"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 214
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mReaderPreferences:Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    if-ne p1, v3, :cond_33

    .line 215
    sget-object v3, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 216
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 217
    sget-object v3, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    move v0, v3

    .line 218
    .local v0, excludeRead:Z
    :goto_26
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->setExcludeRead(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    .line 230
    .end local v0           #excludeRead:Z
    :cond_2f
    :goto_2f
    return-void

    .line 217
    :cond_30
    const/4 v3, 0x0

    move v0, v3

    goto :goto_26

    .line 221
    :cond_33
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mStreamPreferences:Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    if-ne p1, v3, :cond_2f

    .line 222
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2f

    .line 223
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, streamId:Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 225
    invoke-static {p1, v2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, ranking:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->setRanking(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeUri(Landroid/net/Uri;)V

    goto :goto_2f
.end method

.method public refresh()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_16

    .line 601
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    move v0, v1

    .line 602
    .local v0, showAll:Z
    :goto_f
    if-eqz v0, :cond_19

    .line 604
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 611
    .end local v0           #showAll:Z
    :cond_16
    :goto_16
    return-void

    :cond_17
    move v0, v2

    .line 601
    goto :goto_f

    .line 608
    .restart local v0       #showAll:Z
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh(I)V

    goto :goto_16
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 349
    return-void
.end method

.method public resetList()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 327
    return-void
.end method

.method public setObserver(Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mObserver:Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;

    .line 345
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 736
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 353
    return-void
.end method
