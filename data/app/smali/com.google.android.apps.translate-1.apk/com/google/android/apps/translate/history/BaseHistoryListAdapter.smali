.class public abstract Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;
    }
.end annotation


# static fields
.field protected static final EMPTY_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BaseHistoryListAdapter"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mDb:Lcom/google/android/apps/translate/history/BaseDb;

.field private mDbLastModifiedTime:J

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mFavoriteDbLastModifiedTime:J

.field private final mFilter:Landroid/widget/Filter;

.field private mFlushOnPause:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideProgressRunnable:Ljava/lang/Runnable;

.field protected mIsLoadingList:Z

.field protected mLanguages:Lcom/google/android/apps/translate/Languages;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;

.field private final mMayShowProgressRunnable:Ljava/lang/Runnable;

.field protected mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

.field protected mOrder:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V
    .registers 6
    .parameter "activity"
    .parameter "mode"

    .prologue
    const-wide/16 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    sget-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    .line 64
    iput-wide v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFavoriteDbLastModifiedTime:J

    .line 65
    iput-wide v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDbLastModifiedTime:J

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mHandler:Landroid/os/Handler;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFlushOnPause:Z

    .line 133
    new-instance v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mHideProgressRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMayShowProgressRunnable:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFilter:Landroid/widget/Filter;

    .line 77
    const-string v0, "BaseHistoryListAdapter"

    const-string v1, "loadDatabaseFile"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    if-ne v0, v1, :cond_8f

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/HistoryDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getHistoryOrder(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    .line 88
    :goto_4d
    const-string v0, "BaseHistoryListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDatabaseFile mDb.getRawCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/BaseDb;->getRawCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$id;->msg_empty:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->openDb()V

    .line 93
    return-void

    .line 85
    :cond_8f
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getFavoriteOrder(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    goto :goto_4d
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method protected static getHistoryList(Ljava/util/List;Lcom/google/android/apps/translate/history/BaseDb;)Ljava/util/ArrayList;
    .registers 7
    .parameter
    .parameter "favoriteDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;",
            "Lcom/google/android/apps/translate/history/BaseDb;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    if-eqz p0, :cond_28

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    .line 279
    .local v0, each:Lcom/google/android/apps/translate/history/Entry;
    new-instance v4, Lcom/google/android/apps/translate/history/HistoryEntry;

    if-eqz p1, :cond_26

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/history/BaseDb;->exists(Lcom/google/android/apps/translate/history/Entry;)Z

    move-result v3

    :goto_1f
    invoke-direct {v4, v0, v3}, Lcom/google/android/apps/translate/history/HistoryEntry;-><init>(Lcom/google/android/apps/translate/history/Entry;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    const/4 v3, 0x1

    goto :goto_1f

    .line 284
    .end local v0           #each:Lcom/google/android/apps/translate/history/Entry;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_28
    return-object v1
.end method

.method private hasStarred()Z
    .registers 4

    .prologue
    .line 457
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 458
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-boolean v2, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-eqz v2, :cond_6

    .line 459
    const/4 v2, 0x1

    .line 462
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private hasUnstarred()Z
    .registers 4

    .prologue
    .line 448
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 449
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-boolean v2, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-nez v2, :cond_6

    .line 450
    const/4 v2, 0x1

    .line 453
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private hideSoftwareKeyboard()V
    .registers 4

    .prologue
    .line 119
    const-string v1, "BaseHistoryListAdapter"

    const-string v2, "hideSoftInputFromWindow"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_23

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    return-void
.end method

.method private startFilter()V
    .registers 5

    .prologue
    .line 491
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 493
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 495
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/google/android/apps/translate/R$string;->msg_filter:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 496
    return-void
.end method


# virtual methods
.method public changeOrder(I)V
    .registers 5
    .parameter "order"

    .prologue
    .line 499
    const-string v0, "BaseHistoryListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOrder order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iput p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    .line 501
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->loadListInBackground(ZZ)V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 503
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/apps/translate/Profile;->setHistoryOrder(Landroid/content/Context;I)V

    .line 507
    :goto_2a
    return-void

    .line 505
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/apps/translate/Profile;->setFavoriteOrder(Landroid/content/Context;I)V

    goto :goto_2a
.end method

.method protected clear()V
    .registers 2

    .prologue
    .line 396
    sget-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    .line 397
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetInvalidated()V

    .line 398
    return-void
.end method

.method confirmRemoval()V
    .registers 4

    .prologue
    .line 533
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/translate/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_34

    sget v0, Lcom/google/android/apps/translate/R$string;->msg_confirm_remove_displayed_entry:I

    :goto_15
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$8;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$7;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 554
    return-void

    .line 533
    :cond_34
    sget v0, Lcom/google/android/apps/translate/R$string;->msg_confirm_remove_all_entry:I

    goto :goto_15
.end method

.method fetchEntriesFromDb(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7fffffff

    .line 223
    const-string v4, "BaseHistoryListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchEntriesFromDb mOrder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-nez v4, :cond_26

    .line 226
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    :goto_25
    return-object v0

    .line 229
    :cond_26
    const/4 v1, 0x0

    .line 230
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    iget v4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    packed-switch v4, :pswitch_data_56

    .line 236
    iget-object v4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v4, v7, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 240
    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 241
    iget-object v4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v2

    .line 242
    .local v2, favoriteDb:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getHistoryList(Ljava/util/List;Lcom/google/android/apps/translate/history/BaseDb;)Ljava/util/ArrayList;

    move-result-object v3

    .line 243
    .local v3, historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .end local v2           #favoriteDb:Lcom/google/android/apps/translate/history/BaseDb;
    :goto_46
    move-object v0, v3

    .line 247
    goto :goto_25

    .line 232
    .end local v3           #historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    :pswitch_48
    iget-object v4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v4, v7, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 233
    goto :goto_32

    .line 245
    :cond_4f
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getHistoryList(Ljava/util/List;Lcom/google/android/apps/translate/history/BaseDb;)Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3       #historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    goto :goto_46

    .line 230
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_48
    .end packed-switch
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntry(I)Lcom/google/android/apps/translate/history/Entry;
    .registers 3
    .parameter "position"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHistoryEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHistoryEntryItem(I)Lcom/google/android/apps/translate/history/HistoryEntry;
    .registers 3
    .parameter "position"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 607
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_c

    .line 608
    :cond_a
    const/4 v0, 0x0

    .line 610
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 619
    int-to-long v0, p1

    return-wide v0
.end method

.method isAlphabeticalOrder()Z
    .registers 2

    .prologue
    .line 444
    iget v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isDbChanged()Z
    .registers 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->getLastModifiedTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDbLastModifiedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isFavoriteDbChanged()Z
    .registers 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->getLastModifiedTime(Landroid/content/Context;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFavoriteDbLastModifiedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isFiltered()Z
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isHistoryMode()Z
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method loadListInBackground(Z)V
    .registers 7
    .parameter "force"

    .prologue
    .line 192
    const-string v3, "BaseHistoryListAdapter"

    const-string v4, "loadListInBackground"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isDbChanged()Z

    move-result v0

    .line 195
    .local v0, dbChanged:Z
    if-nez p1, :cond_2b

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isFavoriteDbChanged()Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_1b
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 197
    const-string v3, "BaseHistoryListAdapter"

    const-string v4, "loadListInBackground BYE!"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_2a
    return-void

    .line 202
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setLoadingMessage()V

    .line 205
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mIsLoadingList:Z

    .line 207
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v2

    .line 208
    .local v2, textFilter:Ljava/lang/CharSequence;
    if-nez v2, :cond_43

    const/4 v1, 0x0

    .line 211
    .local v1, filter:Ljava/lang/String;
    :goto_3a
    new-instance v3, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Ljava/lang/String;ZZ)V

    invoke-virtual {v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->start()V

    goto :goto_2a

    .line 208
    .end local v1           #filter:Ljava/lang/String;
    :cond_43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method

.method loadListInBackground(ZZ)V
    .registers 3
    .parameter "force"
    .parameter "selectTop"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->loadListInBackground(Z)V

    .line 189
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/google/android/apps/translate/R$menu;->history_activity_context_menu:I

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 402
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 404
    .local v1, position:I
    sget v2, Lcom/google/android/apps/translate/R$id;->context_menu_share:I

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-object v0, v2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 411
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 412
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 416
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 417
    sget v0, Lcom/google/android/apps/translate/R$menu;->history_activity_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_d

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 292
    :cond_d
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-object v0, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 317
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->openTranslateActivity(Lcom/google/android/apps/translate/history/Entry;)V

    .line 318
    return-void
.end method

.method onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    const-string v3, "BaseHistoryListAdapter"

    const-string v4, "onOptionsItemSelected"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 468
    .local v0, id:I
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_order_alphabetical:I

    if-ne v0, v3, :cond_15

    .line 469
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->changeOrder(I)V

    .line 487
    :goto_14
    return v1

    .line 471
    :cond_15
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_order_by_time:I

    if-ne v0, v3, :cond_1d

    .line 472
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->changeOrder(I)V

    goto :goto_14

    .line 474
    :cond_1d
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_filter:I

    if-ne v0, v3, :cond_25

    .line 475
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->startFilter()V

    goto :goto_14

    .line 477
    :cond_25
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_star_all:I

    if-ne v0, v3, :cond_2d

    .line 478
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->starAll()V

    goto :goto_14

    .line 480
    :cond_2d
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_unstar_all:I

    if-ne v0, v3, :cond_35

    .line 481
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->unstarAll()V

    goto :goto_14

    .line 483
    :cond_35
    sget v3, Lcom/google/android/apps/translate/R$id;->menu_remove_all:I

    if-ne v0, v3, :cond_3d

    .line 484
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->confirmRemoval()V

    goto :goto_14

    :cond_3d
    move v1, v2

    .line 487
    goto :goto_14
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFlushOnPause:Z

    if-eqz v0, :cond_19

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/history/FavoriteDb;->flush(Landroid/content/Context;Z)V

    .line 115
    :cond_19
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->hideSoftwareKeyboard()V

    .line 116
    return-void
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    const-string v2, "BaseHistoryListAdapter"

    const-string v5, "onPrepareOptionsMenu"

    invoke-static {v2, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 424
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_star_all:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->hasUnstarred()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_unstar_all:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->hasStarred()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isEmpty()Z

    move-result v1

    .line 431
    .local v1, isEmpty:Z
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_filter:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_6d

    move v2, v3

    :goto_36
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_remove_all:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_6f

    move v2, v3

    :goto_42
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    if-eqz v1, :cond_71

    .line 434
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_order_alphabetical:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_order_by_time:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 441
    :goto_59
    return-void

    .line 427
    .end local v1           #isEmpty:Z
    :cond_5a
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_star_all:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_unstar_all:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_29

    .restart local v1       #isEmpty:Z
    :cond_6d
    move v2, v4

    .line 431
    goto :goto_36

    :cond_6f
    move v2, v4

    .line 432
    goto :goto_42

    .line 437
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isAlphabeticalOrder()Z

    move-result v0

    .line 438
    .local v0, alphabetical:Z
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_order_alphabetical:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_8a

    :goto_7d
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_order_by_time:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_59

    :cond_8a
    move v3, v4

    .line 438
    goto :goto_7d
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 128
    const-string v0, "BaseHistoryListAdapter"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->loadListInBackground(Z)V

    .line 131
    return-void
.end method

.method public openDb()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_5

    .line 106
    :goto_4
    return-void

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    if-ne v0, v1, :cond_1c

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/HistoryDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getHistoryOrder(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    goto :goto_4

    .line 103
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getFavoriteOrder(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mOrder:I

    goto :goto_4
.end method

.method openTranslateActivity(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 7
    .parameter "entry"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/apps/translate/HomeActivity;

    if-eqz v0, :cond_25

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/translation/TranslateFragment;->startTranslateFragment(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 332
    :goto_24
    return-void

    .line 329
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/Util;->openTranslateActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected refreshHistoryList(Ljava/util/List;Z)V
    .registers 5
    .parameter
    .parameter "scrollToTop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, historyEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    const-string v0, "BaseHistoryListAdapter"

    const-string v1, "refreshHistoryList"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method protected refreshHistoryList(Ljava/util/List;ZZ)V
    .registers 4
    .parameter
    .parameter "scrollToTop"
    .parameter "selectTop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, historyEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;Z)V

    .line 364
    return-void
.end method

.method removeAllEntries()V
    .registers 4

    .prologue
    .line 557
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 559
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_deleting:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 562
    new-instance v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->start()V

    .line 576
    return-void
.end method

.method removeHistoryEntry(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 335
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_deleting:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 339
    new-instance v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;ILandroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->start()V

    .line 351
    return-void
.end method

.method public setEmptyMessage()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public setFlushOnPause(Z)V
    .registers 2
    .parameter "flushOnPause"

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFlushOnPause:Z

    .line 598
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 4
    .parameter "listView"

    .prologue
    .line 579
    const-string v0, "BaseHistoryListAdapter"

    const-string v1, "setListView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$10;-><init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 594
    return-void
.end method

.method protected setLoadingMessage()V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mHideProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMayShowProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method setStar(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "isStarred"

    .prologue
    .line 310
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_star:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 311
    .local v0, star:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    return-void
.end method

.method starAll()V
    .registers 4

    .prologue
    .line 510
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 511
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-boolean v2, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-nez v2, :cond_6

    .line 512
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->starTranslateEntry(ZLcom/google/android/apps/translate/history/HistoryEntry;)V

    goto :goto_6

    .line 515
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    .line 516
    return-void
.end method

.method public starTranslateEntry(ZI)V
    .registers 4
    .parameter "isStarred"
    .parameter "position"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->starTranslateEntry(ZLcom/google/android/apps/translate/history/HistoryEntry;)V

    .line 307
    return-void
.end method

.method protected starTranslateEntry(ZLcom/google/android/apps/translate/history/HistoryEntry;)V
    .registers 5
    .parameter "isStarred"
    .parameter "entry"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/translate/Util;->toggleStarredTranslation(Landroid/app/Activity;ZLcom/google/android/apps/translate/history/Entry;)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 300
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->updateFavoriteDbModifiedTime()V

    .line 302
    :cond_10
    iput-boolean p1, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    .line 303
    return-void
.end method

.method unstarAll()V
    .registers 4

    .prologue
    .line 519
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 520
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-boolean v2, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-eqz v2, :cond_6

    .line 521
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->starTranslateEntry(ZLcom/google/android/apps/translate/history/HistoryEntry;)V

    goto :goto_6

    .line 524
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    .line 525
    return-void
.end method

.method protected updateDbModifiedTime()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_d

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDbLastModifiedTime:J

    .line 268
    :goto_c
    return-void

    .line 262
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mMode:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    if-ne v0, v1, :cond_1c

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/HistoryDb;->getLastModifiedTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDbLastModifiedTime:J

    goto :goto_c

    .line 265
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->getLastModifiedTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDbLastModifiedTime:J

    goto :goto_c
.end method

.method protected updateFavoriteDbModifiedTime()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->getLastModifiedTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mFavoriteDbLastModifiedTime:J

    .line 272
    return-void
.end method
