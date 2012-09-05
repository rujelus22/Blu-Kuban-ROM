.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;
.implements Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;,
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;,
        Lcom/android/browser/AddBookmarkPage$BookmarkAccount;,
        Lcom/android/browser/AddBookmarkPage$AccountsLoader;,
        Lcom/android/browser/AddBookmarkPage$CustomListView;,
        Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;,
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;,
        Lcom/android/browser/AddBookmarkPage$FolderAdapter;,
        Lcom/android/browser/AddBookmarkPage$Folder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final LOADER_ID_ACCOUNTS:I

.field private final LOADER_ID_EDIT_INFO:I

.field private final LOADER_ID_FOLDER_CONTENTS:I

.field private final LOGTAG:Ljava/lang/String;

.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/browser/AddBookmarkPage$BookmarkAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

.field private mAddNewFolder:Landroid/view/View;

.field private mAddSeparator:Landroid/view/View;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCrumbHolder:Landroid/view/View;

.field private mCrumbs:Lcom/android/browser/BreadCrumbView;

.field private mCurrentFolder:J

.field private mDefaultView:Landroid/view/View;

.field private mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEditingExisting:Z

.field private mEditingFolder:Z

.field private mFakeTitle:Landroid/widget/TextView;

.field private mFakeTitleHolder:Landroid/view/View;

.field private mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

.field private mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

.field private mFolderCancel:Landroid/view/View;

.field private mFolderNamer:Landroid/widget/EditText;

.field private mFolderNamerHolder:Landroid/view/View;

.field private mFolderSelector:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private mIsFolderNamerShowing:Z

.field private mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mRemoveLink:Landroid/view/View;

.field private mRootFolder:J

.field private mSaveToHomeScreen:Z

.field private mTitle:Landroid/widget/EditText;

.field private mTopLevelLabel:Landroid/widget/TextView;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_ACCOUNTS:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FOLDER_CONTENTS:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_EDIT_INFO:I

    .line 381
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1059
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/AddBookmarkPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/AddBookmarkPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/AddBookmarkPage;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/browser/AddBookmarkPage;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/browser/AddBookmarkPage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/AddBookmarkPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/AddBookmarkPage;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    return-wide v0
.end method

.method private addFolderToCurrent(Ljava/lang/String;)J
    .registers 9
    .parameter "name"

    .prologue
    .line 340
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "folder"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v2

    .line 346
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_3a

    .line 347
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v2           #data:Ljava/lang/Object;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 351
    .local v0, currentFolder:J
    :goto_20
    const-string v5, "parent"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 354
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3d

    .line 355
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 357
    :goto_39
    return-wide v5

    .line 349
    .end local v0           #currentFolder:J
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v2       #data:Ljava/lang/Object;
    :cond_3a
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v0       #currentFolder:J
    goto :goto_20

    .line 357
    .end local v2           #data:Ljava/lang/Object;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_3d
    const-wide/16 v5, -0x1

    goto :goto_39
.end method

.method private completeOrCancelFolderNaming(Z)V
    .registers 8
    .parameter "cancel"

    .prologue
    const/4 v5, 0x0

    .line 326
    if-nez p1, :cond_2a

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 327
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/AddBookmarkPage;->addFolderToCurrent(Ljava/lang/String;)J

    move-result-wide v0

    .line 329
    .local v0, id:J
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 331
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_2a
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 332
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v4}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    return-void
.end method

.method private createHandler()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 800
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 829
    :cond_b
    return-void
.end method

.method private descendInto(Ljava/lang/String;J)V
    .registers 6
    .parameter "foldername"
    .parameter "id"

    .prologue
    .line 375
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_15

    .line 376
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$Folder;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 377
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 379
    :cond_15
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .prologue
    .line 144
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getUriForFolder(J)Landroid/net/Uri;
    .registers 4
    .parameter "folder"

    .prologue
    .line 148
    invoke-static {p1, p2}, Landroid/provider/BrowserContract$Bookmarks;->buildFolderUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onCurrentFolderFound()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 720
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 721
    .local v0, manager:Landroid/app/LoaderManager;
    iget-wide v3, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    .line 725
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v1, :cond_1c

    move v1, v2

    :goto_14
    invoke-virtual {v3, v1}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 736
    :cond_17
    :goto_17
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 737
    return-void

    .line 725
    :cond_1c
    const/4 v1, 0x2

    goto :goto_14

    .line 727
    :cond_1e
    invoke-direct {p0, v2}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    .line 728
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_17

    .line 732
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_17
.end method

.method private onRootFolderFound(J)V
    .registers 5
    .parameter "root"

    .prologue
    .line 704
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .line 705
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 706
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 707
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    .line 708
    return-void
.end method

.method private setShowBookmarkIcon(Z)V
    .registers 5
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object v0, v1

    .line 172
    goto :goto_5
.end method

.method private setShowFolderNamer(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eq p1, v0, :cond_25

    .line 543
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    .line 544
    if-eqz p1, :cond_26

    .line 547
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addFooterView(Landroid/view/View;)V

    .line 552
    :goto_f
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    if-eqz p1, :cond_25

    .line 554
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 557
    :cond_25
    return-void

    .line 549
    :cond_26
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_f
.end method

.method private setupTopCrumb()V
    .registers 7

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->clear()V

    .line 712
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/android/browser/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    invoke-direct {v3, v0, v4, v5}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    .line 716
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 717
    return-void
.end method

.method private showRemoveButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 696
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    .line 698
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    return-void
.end method

.method private switchToDefaultView(Z)V
    .registers 11
    .parameter "changedFolder"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    if-eqz p1, :cond_45

    .line 199
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_3a

    move-object v1, v0

    .line 201
    check-cast v1, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 202
    .local v1, folder:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v5, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iput-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 203
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    .line 207
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_3b

    :goto_37
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 238
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_3a
    :goto_3a
    return-void

    .restart local v0       #data:Ljava/lang/Object;
    .restart local v1       #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_3b
    move v3, v4

    .line 207
    goto :goto_37

    .line 209
    :cond_3d
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-object v4, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_3a

    .line 215
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_45
    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v5, :cond_4f

    .line 216
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_3a

    .line 218
    :cond_4f
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_63

    .line 219
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_61

    :goto_5d
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_3a

    :cond_61
    move v3, v4

    goto :goto_5d

    .line 221
    :cond_63
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v3}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .restart local v0       #data:Ljava/lang/Object;
    if-eqz v0, :cond_80

    move-object v3, v0

    check-cast v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v5, v3, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_80

    .line 226
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v0           #data:Ljava/lang/Object;
    iget-object v4, v0, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_3a

    .line 230
    .restart local v0       #data:Ljava/lang/Object;
    :cond_80
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 232
    .local v2, manager:Landroid/app/LoaderManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_3a
.end method

.method private switchToFolderSelector()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 364
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 372
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 242
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_28

    .line 243
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1e

    .line 245
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_18

    .line 246
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 287
    :cond_17
    :goto_17
    return-void

    .line 249
    :cond_18
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 250
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_17

    .line 252
    :cond_1e
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->save()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 253
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_17

    .line 255
    :cond_28
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    if-ne p1, v4, :cond_44

    .line 256
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_34

    .line 257
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_17

    .line 258
    :cond_34
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_40

    .line 259
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_17

    .line 261
    :cond_40
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_17

    .line 263
    :cond_44
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    if-ne p1, v4, :cond_4c

    .line 264
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_17

    .line 265
    :cond_4c
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    if-ne p1, v4, :cond_79

    .line 266
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 267
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    const v5, 0x7f0c002f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(I)V

    .line 268
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 274
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 275
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_17

    .line 276
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_79
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    if-ne p1, v4, :cond_17

    .line 277
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v4, :cond_89

    .line 278
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Remove button should not be shown for new bookmarks"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 281
    :cond_89
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    .local v0, id:J
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 283
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 284
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, p0, v3}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 592
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 593
    invoke-virtual {p0, v8}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 595
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 597
    const v7, 0x7f04001a

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 601
    .local v6, window:Landroid/view/Window;
    const/4 v4, 0x0

    .line 602
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 604
    .local v5, url:Ljava/lang/String;
    const v7, 0x7f0d0034

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    .line 606
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v7, :cond_87

    .line 607
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "bookmark"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1f0

    .line 609
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "is_folder"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    .line 610
    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 611
    iput-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 612
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    const v10, 0x7f0c003b

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v7, :cond_1eb

    .line 614
    const v7, 0x7f0d004f

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_5f
    :goto_5f
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "title"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 627
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #url:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 628
    .restart local v5       #url:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "touch_icon_url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 629
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "parent"

    const-wide/16 v11, -0x1

    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 632
    .end local v0           #b:Landroid/os/Bundle;
    :cond_87
    const v7, 0x7f0d0005

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 633
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const v7, 0x7f0d0050

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 636
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const v7, 0x7f0d0053

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 639
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v7, 0x7f0d0052

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 642
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v7, 0x7f0d003c

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/addbookmark/FolderSpinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    .line 645
    new-instance v10, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v7, :cond_205

    move v7, v8

    :goto_d7
    invoke-direct {v10, p0, v7}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    .line 646
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v7, v10}, Lcom/android/browser/addbookmark/FolderSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 647
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v7, p0}, Lcom/android/browser/addbookmark/FolderSpinner;->setOnSetSelectionListener(Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;)V

    .line 649
    const v7, 0x7f0d0035

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    .line 650
    const v7, 0x7f0d003d

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    .line 652
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f04002f

    invoke-virtual {v7, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    .line 653
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d0084

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    .line 654
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 655
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d0085

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    .line 656
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const v7, 0x7f0d004b

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    .line 659
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    const v7, 0x7f0d004a

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    .line 662
    const v7, 0x7f0d0046

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/BreadCrumbView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 663
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 664
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 666
    const v7, 0x7f0d001d

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    .line 667
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 669
    new-instance v7, Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-direct {v7, p0, p0}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    .line 670
    const v7, 0x7f0d003e

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/AddBookmarkPage$CustomListView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    .line 671
    const v7, 0x7f0d003f

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, empty:Landroid/view/View;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setEmptyView(Landroid/view/View;)V

    .line 673
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, p0}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 675
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addEditText(Landroid/widget/EditText;)V

    .line 677
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 679
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 681
    const v7, 0x7f0d0051

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    .line 682
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 683
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 686
    const v7, 0x7f0d004c

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    .line 688
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_1e3

    .line 689
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 692
    :cond_1e3
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9, v13, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 693
    return-void

    .line 616
    .end local v1           #empty:Landroid/view/View;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_1eb
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    goto/16 :goto_5f

    .line 619
    :cond_1f0
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "gravity"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 620
    .local v2, gravity:I
    if-eq v2, v11, :cond_5f

    .line 621
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 622
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 623
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_5f

    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #gravity:I
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_205
    move v7, v9

    .line 645
    goto/16 :goto_d7
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 13
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 450
    packed-switch p1, :pswitch_data_6a

    .line 480
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Asking for nonexistant loader!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 452
    :pswitch_d
    new-instance v0, Lcom/android/browser/AddBookmarkPage$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 473
    :goto_12
    return-object v0

    .line 454
    :pswitch_13
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "title"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string v1, "folder"

    aput-object v1, v3, v0

    .line 459
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "folder != 0"

    .line 460
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 461
    .local v5, whereArgs:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_4d

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    new-array v5, v6, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 467
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_4d
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v9

    .line 468
    .local v9, data:Ljava/lang/Object;
    if-eqz v9, :cond_66

    .line 469
    check-cast v9, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v9           #data:Ljava/lang/Object;
    iget-wide v7, v9, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 473
    .local v7, currentFolder:J
    :goto_59
    new-instance v0, Landroid/content/CursorLoader;

    invoke-direct {p0, v7, v8}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "_id ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 471
    .end local v7           #currentFolder:J
    .restart local v9       #data:Ljava/lang/Object;
    :cond_66
    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v7       #currentFolder:J
    goto :goto_59

    .line 450
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1c

    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 180
    if-nez p2, :cond_1b

    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1b

    .line 183
    invoke-direct {p0, v1}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 190
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
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
    .line 536
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 538
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 539
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 960
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    if-ne v2, p1, :cond_1c

    .line 961
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    .line 962
    .local v0, root:J
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    .line 963
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 964
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->clearRecentFolder()V

    .line 967
    .end local v0           #root:J
    :cond_1c
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 500
    :goto_7
    return-void

    .line 488
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 489
    :goto_d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 490
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_d

    .line 492
    :cond_1e
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_7

    .line 497
    :pswitch_32
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_7

    .line 486
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_8
        :pswitch_32
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 508
    :goto_7
    return-void

    .line 505
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_7

    .line 503
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSetSelection(J)V
    .registers 9
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    long-to-int v0, p1

    .line 294
    .local v0, intId:I
    packed-switch v0, :pswitch_data_28

    .line 318
    :goto_6
    return-void

    .line 296
    :pswitch_7
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 297
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_6

    .line 301
    :pswitch_e
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_6

    .line 304
    :pswitch_11
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->switchToFolderSelector()V

    goto :goto_6

    .line 307
    :pswitch_15
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->recentFolderId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 308
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 313
    .local v1, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_6

    .line 294
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_e
        :pswitch_7
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .registers 11
    .parameter "view"
    .parameter "level"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 153
    if-nez p3, :cond_4

    .line 165
    :goto_3
    return-void

    :cond_4
    move-object v2, p3

    .line 154
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 155
    .local v2, folderData:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 156
    .local v0, folder:J
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 157
    .local v4, manager:Landroid/app/LoaderManager;
    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    .line 159
    .local v3, loader:Landroid/content/CursorLoader;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 160
    invoke-virtual {v3}, Landroid/content/CursorLoader;->forceLoad()V

    .line 161
    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v6, :cond_24

    .line 162
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 164
    :cond_24
    if-ne p2, v5, :cond_2a

    :goto_26
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    goto :goto_3

    :cond_2a
    const/4 v5, 0x0

    goto :goto_26
.end method

.method save()Z
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 835
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 837
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 839
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5e

    move v0, v2

    .line 842
    :goto_2a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_60

    move v1, v2

    .line 843
    :goto_35
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 844
    if-nez v0, :cond_41

    if-eqz v1, :cond_62

    iget-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v8, :cond_62

    .line 845
    :cond_41
    if-eqz v0, :cond_4f

    .line 846
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v2, 0x7f0c0045

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 848
    :cond_4f
    if-eqz v1, :cond_5d

    .line 849
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0047

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 954
    :cond_5d
    :goto_5d
    return v3

    :cond_5e
    move v0, v3

    .line 841
    goto :goto_2a

    :cond_60
    move v1, v3

    .line 842
    goto :goto_35

    .line 854
    :cond_62
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 855
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_1c6

    .line 860
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "javascript:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 861
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v0}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ca

    .line 867
    if-eqz v1, :cond_a2

    .line 868
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0049

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_93
    .catch Ljava/net/URISyntaxException; {:try_start_6a .. :try_end_93} :catch_94

    goto :goto_5d

    .line 883
    :catch_94
    move-exception v0

    .line 884
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0048

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 873
    :cond_a2
    :try_start_a2
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_a7
    .catch Landroid/net/ParseException; {:try_start_a2 .. :try_end_a7} :catch_bb
    .catch Ljava/net/URISyntaxException; {:try_start_a2 .. :try_end_a7} :catch_94

    .line 877
    :try_start_a7
    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c6

    .line 878
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 874
    :catch_bb
    move-exception v0

    .line 875
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_c6
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_c9
    .catch Ljava/net/URISyntaxException; {:try_start_a7 .. :try_end_c9} :catch_94

    move-result-object v0

    :cond_ca
    move-object v4, v0

    .line 889
    :goto_cb
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v0, :cond_d1

    .line 890
    iput-boolean v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 893
    :cond_d1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 895
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_12c

    .line 896
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 897
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 898
    const-string v5, "title"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v5, "parent"

    iget-wide v8, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v5, :cond_10c

    .line 901
    const-string v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-nez v7, :cond_10c

    .line 903
    const-string v4, "thumbnail"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 906
    :cond_10c
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_126

    .line 907
    new-instance v4, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    new-array v0, v2, [Landroid/content/ContentValues;

    aput-object v1, v0, v3

    invoke-virtual {v4, v0}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 909
    :cond_126
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    :goto_129
    move v3, v2

    .line 954
    goto/16 :goto_5d

    .line 913
    :cond_12c
    if-eqz v7, :cond_18a

    .line 914
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 916
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v8, "favicon"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 923
    :goto_142
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 924
    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v9, "url"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v9, "favicon"

    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 928
    iget-boolean v9, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v9, :cond_195

    .line 929
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_18d

    if-eqz v7, :cond_18d

    .line 930
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 932
    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 933
    new-instance v1, Lcom/android/browser/DownloadTouchIcon;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v6, "user_agent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v0, v5}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 935
    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-virtual {v1, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 951
    :goto_181
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 952
    const-string v0, "bookmarkview"

    invoke-static {v4, v0}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    :cond_18a
    move-object v1, v5

    move-object v0, v5

    .line 920
    goto :goto_142

    .line 937
    :cond_18d
    invoke-static {p0, v4, v6, v5, v1}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_181

    .line 941
    :cond_195
    const-string v1, "thumbnail"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 942
    const-string v0, "remove_thumbnail"

    if-nez v7, :cond_19f

    move v3, v2

    :cond_19f
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    const-string v0, "touch_icon_url"

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 946
    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 948
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, v0}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 949
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_181

    :cond_1c6
    move-object v4, v0

    goto/16 :goto_cb
.end method

.method setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 436
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 437
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    .line 438
    .local v0, account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountType:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 440
    iget-wide v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    invoke-direct {p0, v2, v3}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 441
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 445
    .end local v0           #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_2b
    return-void

    .line 436
    .restart local v0       #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
