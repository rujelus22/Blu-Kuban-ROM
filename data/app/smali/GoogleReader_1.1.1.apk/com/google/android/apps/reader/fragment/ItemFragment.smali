.class public Lcom/google/android/apps/reader/fragment/ItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "ItemFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/ItemFragment$1;,
        Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;,
        Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_ITEMS:I = 0x1

.field private static final LOAD_MORE_AMOUNT:I = 0x14

.field private static final LOAD_MORE_DISTANCE:I = 0xa

.field private static final STATE_ITEM:Ljava/lang/String; = "reader:item"

.field private static final STATE_MARKED_READ:Ljava/lang/String; = "reader:marked_read"

.field private static final STATE_URI:Ljava/lang/String; = "reader:uri"

.field private static final TAG:Ljava/lang/String; = "ItemActivity"


# instance fields
.field private mHintSwipe:Landroid/view/View;

.field private mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

.field private mItemId:J

.field private mItemView:Landroid/support/v4/view/ViewPager;

.field private mItems:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mLocalPreferences:Landroid/content/SharedPreferences;

.field mMarkedRead:Z

.field private mObserver:Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;

.field private mStarToggle:Landroid/widget/CheckBox;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/ItemFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 601
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/fragment/ItemFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->loadMoreIfNearEnd()V

    return-void
.end method

.method private isDifferentUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/apps/reader/provider/ReaderContract;->equalsIgnoreMaxAgeAndItemCount(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isVolumeKeyNavigationEnabled()Z
    .registers 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mLocalPreferences:Landroid/content/SharedPreferences;

    const-string v1, "volume_key_navigation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadMoreIfNearEnd()V
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_26

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 391
    sub-int/2addr v0, v1

    .line 392
    const/16 v1, 0xa

    if-ge v0, v1, :cond_26

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->isReadyToLoadMore()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->loadMore(I)Z

    .line 398
    :cond_26
    return-void
.end method

.method private moveToNextItemOrPage()Z
    .registers 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToNext()Z

    move-result v0

    return v0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 323
    const-string v0, "reader:uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    .line 324
    const-string v0, "reader:item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    .line 325
    const-string v0, "reader:marked_read"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mMarkedRead:Z

    .line 326
    return-void
.end method

.method private onVolumeKeyNavigationPreferenceChanged()V
    .registers 3

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->isVolumeKeyNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 270
    :goto_e
    return-void

    .line 268
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    goto :goto_e
.end method

.method private static slideInOutBottom(Landroid/view/View;Z)V
    .registers 7
    .parameter "view"
    .parameter "visible"

    .prologue
    .line 304
    if-eqz p1, :cond_1e

    const/4 v4, 0x0

    move v3, v4

    .line 305
    .local v3, visibility:I
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v3, v4, :cond_1d

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 307
    .local v2, context:Landroid/content/Context;
    if-eqz p1, :cond_22

    const/high16 v4, 0x7f04

    move v1, v4

    .line 308
    .local v1, animationId:I
    :goto_13
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 309
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #animationId:I
    .end local v2           #context:Landroid/content/Context;
    :cond_1d
    return-void

    .line 304
    .end local v3           #visibility:I
    :cond_1e
    const/16 v4, 0x8

    move v3, v4

    goto :goto_4

    .line 307
    .restart local v2       #context:Landroid/content/Context;
    .restart local v3       #visibility:I
    :cond_22
    const v4, 0x7f040002

    move v1, v4

    goto :goto_13
.end method

.method private updateActionBar()V
    .registers 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V

    .line 551
    return-void
.end method

.method private updateStarCheckBox()V
    .registers 5

    .prologue
    .line 533
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 534
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->isStarred(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/ItemFragment;->setStarChecked(Z)V

    .line 535
    return-void

    .line 534
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private updateSwipeHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 289
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    .local v1, preferences:Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    .line 291
    .local v3, showByDefault:Z
    const-string v4, "show_swipe_hint"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 295
    .local v2, show:Z
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCount()I

    move-result v4

    if-le v4, v5, :cond_20

    move v4, v5

    :goto_19
    and-int/2addr v2, v4

    .line 297
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mHintSwipe:Landroid/view/View;

    invoke-static {v4, v2}, Lcom/google/android/apps/reader/fragment/ItemFragment;->slideInOutBottom(Landroid/view/View;Z)V

    .line 298
    return-void

    .line 295
    :cond_20
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private updateViewPager()V
    .registers 5

    .prologue
    .line 543
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItemPosition(J)I

    move-result v0

    .line 544
    .local v0, position:I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 545
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 547
    :cond_18
    return-void
.end method


# virtual methods
.method final changeQueryIfItemNotFound()V
    .registers 7

    .prologue
    .line 573
    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 587
    :cond_8
    :goto_8
    return-void

    .line 577
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 578
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 579
    .local v1, uri:Landroid/net/Uri;
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/fragment/ItemFragment;->isDifferentUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 583
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v3, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_8

    .line 585
    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeUri(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_8
.end method

.method public changeUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 8
    .parameter "itemUri"
    .parameter "streamUri"

    .prologue
    .line 205
    if-nez p1, :cond_8

    .line 206
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 209
    :cond_8
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    .line 216
    if-eqz p2, :cond_2a

    move-object v1, p2

    .line 219
    .local v1, uri:Landroid/net/Uri;
    :goto_11
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v3, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItemPosition(J)I

    move-result v0

    .line 222
    .local v0, position:I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_2c

    .line 224
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 240
    .end local v0           #position:I
    :goto_29
    return-void

    .end local v1           #uri:Landroid/net/Uri;
    :cond_2a
    move-object v1, p1

    .line 216
    goto :goto_11

    .line 228
    .restart local v0       #position:I
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeQueryIfItemNotFound()V

    goto :goto_29

    .line 234
    .end local v0           #position:I
    :cond_30
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->swapCursor(Landroid/database/Cursor;)V

    .line 236
    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    goto :goto_29
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItemId()J
    .registers 3

    .prologue
    .line 635
    iget-wide v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    return-wide v0
.end method

.method public getItemUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 640
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 641
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 643
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getItemsUri()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 648
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_32

    .line 649
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, type:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 651
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    .line 660
    .end local v0           #type:Ljava/lang/String;
    :goto_1d
    return-object v1

    .line 656
    .restart local v0       #type:Ljava/lang/String;
    :cond_1e
    sget-boolean v1, Lcom/google/android/apps/reader/fragment/ItemFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_30

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_30
    move-object v1, v3

    .line 657
    goto :goto_1d

    .end local v0           #type:Ljava/lang/String;
    :cond_32
    move-object v1, v3

    .line 660
    goto :goto_1d
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method markRead()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 504
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_26

    .line 508
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->isUnread(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/reader/widget/ItemAdapter;->setSilent(Z)V

    .line 510
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->markRead(Landroid/database/Cursor;)V

    .line 511
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/reader/widget/ItemAdapter;->setSilent(Z)V

    .line 515
    :cond_23
    iput-boolean v5, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mMarkedRead:Z

    .line 519
    :goto_25
    return-void

    .line 517
    :cond_26
    iput-boolean v4, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mMarkedRead:Z

    goto :goto_25
.end method

.method markReadIfNotMarkedRead()V
    .registers 2

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mMarkedRead:Z

    if-nez v0, :cond_7

    .line 523
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->markRead()V

    .line 525
    :cond_7
    return-void
.end method

.method public moveToNext()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 483
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 484
    .local v0, currentItem:I
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_19

    .line 485
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move v1, v3

    .line 488
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public moveToPrevious()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 473
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 474
    .local v0, currentItem:I
    if-lez v0, :cond_12

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move v1, v3

    .line 478
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_13

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 436
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->setStarred(Landroid/database/Cursor;Z)V

    .line 439
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    .line 420
    :goto_7
    return-void

    .line 410
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 413
    :sswitch_e
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    const-string v1, "show_swipe_hint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_7

    .line 408
    :sswitch_data_24
    .sparse-switch
        0x7f0b002f -> :sswitch_8
        0x7f0b0034 -> :sswitch_e
    .end sparse-switch
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
    .line 174
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/ItemFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 332
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 143
    const v2, 0x7f03001c

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 146
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mLocalPreferences:Landroid/content/SharedPreferences;

    .line 148
    new-instance v2, Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    .line 149
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    new-instance v3, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/ItemFragment;Lcom/google/android/apps/reader/fragment/ItemFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 151
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/reader/fragment/ItemStateObserver;

    invoke-direct {v4, p0, v1, p0}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;-><init>(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 153
    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    .line 154
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 157
    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mHintSwipe:Landroid/view/View;

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mHintSwipe:Landroid/view/View;

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/fragment/ItemFragment;->setHasOptionsMenu(Z)V

    .line 162
    if-eqz p3, :cond_77

    .line 163
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/fragment/ItemFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItems:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_78

    move v3, v5

    :goto_74
    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 167
    :cond_77
    return-object v1

    :cond_78
    move v3, v6

    .line 164
    goto :goto_74
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 442
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->isVolumeKeyNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 443
    packed-switch p1, :pswitch_data_3c

    .line 452
    :cond_a
    sparse-switch p1, :sswitch_data_44

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_3a

    .line 465
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v3

    .line 469
    :goto_20
    return v0

    .line 445
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToNext()Z

    move v0, v3

    .line 446
    goto :goto_20

    .line 448
    :pswitch_26
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToPrevious()Z

    move v0, v3

    .line 449
    goto :goto_20

    .line 454
    :sswitch_2b
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToNext()Z

    move v0, v3

    .line 455
    goto :goto_20

    .line 457
    :sswitch_30
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToPrevious()Z

    move v0, v3

    .line 458
    goto :goto_20

    .line 460
    :sswitch_35
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToNextItemOrPage()Z

    move v0, v3

    .line 461
    goto :goto_20

    .line 469
    :cond_3a
    const/4 v0, 0x0

    goto :goto_20

    .line 443
    :pswitch_data_3c
    .packed-switch 0x18
        :pswitch_26
        :pswitch_21
    .end packed-switch

    .line 452
    :sswitch_data_44
    .sparse-switch
        0x26 -> :sswitch_2b
        0x27 -> :sswitch_30
        0x3e -> :sswitch_35
    .end sparse-switch
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
    .line 182
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/ItemFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->swapCursor(Landroid/database/Cursor;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/ItemFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 190
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/ItemFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->swapCursor(Landroid/database/Cursor;)V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 346
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_23

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 353
    :goto_19
    const/4 v1, 0x1

    .line 356
    :goto_1a
    return v1

    .line 350
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_19

    .line 356
    :cond_23
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1a

    .line 348
    :pswitch_data_28
    .packed-switch 0x7f0b008e
        :pswitch_1b
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 369
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 363
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 376
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    .line 377
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->markRead()V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateViews()V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeQueryIfItemNotFound()V

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->loadMoreIfNearEnd()V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mObserver:Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;

    if-eqz v1, :cond_23

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mObserver:Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;

    invoke-interface {v1}, Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;->onItemChanged()V

    .line 384
    :cond_23
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->syncChanges()V

    .line 257
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 258
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_12

    .line 339
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)V

    .line 341
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateViews()V

    .line 249
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->onVolumeKeyNavigationPreferenceChanged()V

    .line 250
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    const-string v0, "reader:item"

    iget-wide v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 319
    const-string v0, "reader:marked_read"

    iget-boolean v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mMarkedRead:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mLocalPreferences:Landroid/content/SharedPreferences;

    if-eq p1, v0, :cond_5

    .line 285
    :cond_4
    :goto_4
    return-void

    .line 280
    :cond_5
    const-string v0, "volume_key_navigation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 281
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->onVolumeKeyNavigationPreferenceChanged()V

    goto :goto_4

    .line 282
    :cond_11
    const-string v0, "show_swipe_hint"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateSwipeHint()V

    goto :goto_4
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 632
    return-void
.end method

.method public send()V
    .registers 5

    .prologue
    .line 423
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 424
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    .line 425
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->sendItem(Landroid/database/Cursor;)V

    .line 427
    :cond_f
    return-void
.end method

.method public setObserver(Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mObserver:Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;

    .line 628
    return-void
.end method

.method setStarChecked(Z)V
    .registers 4
    .parameter "starred"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1c

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 564
    :cond_1c
    return-void
.end method

.method public setStarToggle(Landroid/widget/CheckBox;)V
    .registers 4
    .parameter "toggle"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    if-eqz v0, :cond_a

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    :cond_a
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    if-eqz v0, :cond_15

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mStarToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    :cond_15
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 666
    return-void
.end method

.method public updateProgress()V
    .registers 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment;->mItemAdapter:Lcom/google/android/apps/reader/widget/ItemAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    div-int/lit8 v0, v1, 0x64

    .line 529
    .local v0, value:I
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setProgress(Landroid/app/Activity;I)V

    .line 530
    return-void
.end method

.method updateViews()V
    .registers 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateViewPager()V

    .line 497
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateActionBar()V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateProgress()V

    .line 499
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateStarCheckBox()V

    .line 500
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateSwipeHint()V

    .line 501
    return-void
.end method
