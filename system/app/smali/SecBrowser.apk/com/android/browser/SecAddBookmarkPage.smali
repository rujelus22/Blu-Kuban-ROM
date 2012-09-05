.class public Lcom/android/browser/SecAddBookmarkPage;
.super Landroid/app/Activity;
.source "SecAddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;
.implements Lcom/android/browser/BreadCrumbView$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SecAddBookmarkPage$CustomListView;,
        Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;,
        Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;,
        Lcom/android/browser/SecAddBookmarkPage$FolderAdapter;,
        Lcom/android/browser/SecAddBookmarkPage$Folder;
    }
.end annotation


# instance fields
.field private final LOADER_ID_ACCOUNTS:I

.field private final LOADER_ID_EDIT_INFO:I

.field private final LOADER_ID_FOLDER_CONTENTS:I

.field private final LOGTAG:Ljava/lang/String;

.field private final MOST_VISITED_URL:Ljava/lang/String;

.field private mAdapter:Lcom/android/browser/SecAddBookmarkPage$FolderAdapter;

.field private mAddNewFolder:Landroid/view/View;

.field private mAddSeparator:Landroid/view/View;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCrumbHolder:Landroid/view/View;

.field private mCrumbs:Lcom/android/browser/BreadCrumbView;

.field private mCurrentFolder:J

.field private mDuplicated:Z

.field private mEditingExisting:Z

.field private mEditingFolder:Z

.field private mFolderCancel:Landroid/view/View;

.field private mFolderDifferent:Z

.field private mFolderNamer:Landroid/widget/EditText;

.field private mFolderNamerHolder:Landroid/view/View;

.field private mFolderText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private mIsFolderNamerShowing:Z

.field private mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

.field private mMap:Landroid/os/Bundle;

.field private mMoreButton:Landroid/widget/LinearLayout;

.field private mMoreFolderClick:Landroid/view/View$OnClickListener;

.field private mOriginalUrl:Ljava/lang/String;

.field private mRemoveLink:Landroid/view/View;

.field private mRootFolder:J

.field private mSaveToHomeScreen:Z

.field private mTitle:Landroid/widget/EditText;

.field private mTitleDifferent:Z

.field private mTopLevelLabel:Landroid/widget/TextView;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 101
    const-string v0, "content://com.android.browser.home/"

    iput-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->MOST_VISITED_URL:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/SecAddBookmarkPage;->LOADER_ID_ACCOUNTS:I

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/SecAddBookmarkPage;->LOADER_ID_FOLDER_CONTENTS:I

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/SecAddBookmarkPage;->LOADER_ID_EDIT_INFO:I

    .line 365
    new-instance v0, Lcom/android/browser/SecAddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SecAddBookmarkPage$1;-><init>(Lcom/android/browser/SecAddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMoreFolderClick:Landroid/view/View$OnClickListener;

    .line 1283
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SecAddBookmarkPage;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/browser/SecAddBookmarkPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/SecAddBookmarkPage;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/SecAddBookmarkPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderDifferent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/SecAddBookmarkPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitleDifferent:Z

    return v0
.end method

.method private addFolderToCurrent(Ljava/lang/String;)J
    .registers 9
    .parameter "name"

    .prologue
    .line 275
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v5, "folder"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget-object v5, p0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_3a

    .line 282
    check-cast v2, Lcom/android/browser/SecAddBookmarkPage$Folder;

    .end local v2           #data:Ljava/lang/Object;
    iget-wide v0, v2, Lcom/android/browser/SecAddBookmarkPage$Folder;->Id:J

    .line 286
    .local v0, currentFolder:J
    :goto_20
    const-string v5, "parent"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 289
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3d

    .line 290
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 292
    :goto_39
    return-wide v5

    .line 284
    .end local v0           #currentFolder:J
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v2       #data:Ljava/lang/Object;
    :cond_3a
    iget-wide v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mRootFolder:J

    .restart local v0       #currentFolder:J
    goto :goto_20

    .line 292
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

    .line 261
    if-nez p1, :cond_2a

    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 262
    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/SecAddBookmarkPage;->addFolderToCurrent(Ljava/lang/String;)J

    move-result-wide v0

    .line 264
    .local v0, id:J
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/SecAddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 266
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_2a
    invoke-direct {p0, v5}, Lcom/android/browser/SecAddBookmarkPage;->setShowFolderNamer(Z)V

    .line 267
    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/android/browser/SecAddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    invoke-virtual {v4}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 271
    return-void
.end method

.method private createHandler()V
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 737
    new-instance v0, Lcom/android/browser/SecAddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/SecAddBookmarkPage$2;-><init>(Lcom/android/browser/SecAddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 766
    :cond_b
    return-void
.end method

.method private descendInto(Ljava/lang/String;J)V
    .registers 6
    .parameter "foldername"
    .parameter "id"

    .prologue
    .line 310
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_15

    .line 311
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    new-instance v1, Lcom/android/browser/SecAddBookmarkPage$Folder;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/browser/SecAddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 312
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 314
    :cond_15
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .prologue
    .line 163
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getUriForFolder(J)Landroid/net/Uri;
    .registers 4
    .parameter "folder"

    .prologue
    .line 167
    invoke-static {p1, p2}, Landroid/provider/BrowserContract$Bookmarks;->buildFolderUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setShowBookmarkIcon(Z)V
    .registers 5
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object v0, v1

    .line 191
    goto :goto_5
.end method

.method private setShowFolderNamer(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eq p1, v0, :cond_25

    .line 349
    iput-boolean p1, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    .line 350
    if-eqz p1, :cond_26

    .line 353
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->addFooterView(Landroid/view/View;)V

    .line 358
    :goto_f
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mAdapter:Lcom/android/browser/SecAddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    if-eqz p1, :cond_25

    .line 360
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->setSelection(I)V

    .line 363
    :cond_25
    return-void

    .line 355
    :cond_26
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/SecAddBookmarkPage$CustomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_f
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 407
    const/16 v3, 0x65

    if-ne p1, v3, :cond_23

    const/4 v3, -0x1

    if-ne p2, v3, :cond_23

    .line 410
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_23

    .line 413
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, title:Ljava/lang/String;
    const-string v3, "parent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 415
    .local v1, parent:I
    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    .line 416
    iget-object v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #parent:I
    .end local v2           #title:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 4
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 615
    if-eqz p2, :cond_4

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 214
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1f

    .line 215
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->save()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 216
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    .line 218
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 219
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->promptToOverwrite()Z

    .line 251
    :cond_1e
    :goto_1e
    return-void

    .line 221
    :cond_1f
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mCancelButton:Landroid/view/View;

    if-ne p1, v4, :cond_2f

    .line 222
    iget-boolean v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_2b

    .line 223
    invoke-direct {p0, v6}, Lcom/android/browser/SecAddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_1e

    .line 225
    :cond_2b
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    goto :goto_1e

    .line 227
    :cond_2f
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderCancel:Landroid/view/View;

    if-ne p1, v4, :cond_37

    .line 228
    invoke-direct {p0, v6}, Lcom/android/browser/SecAddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_1e

    .line 229
    :cond_37
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    if-ne p1, v4, :cond_64

    .line 230
    invoke-direct {p0, v6}, Lcom/android/browser/SecAddBookmarkPage;->setShowFolderNamer(Z)V

    .line 231
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    const v5, 0x7f0c002f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(I)V

    .line 232
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 233
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/android/browser/SecAddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 238
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mListView:Lcom/android/browser/SecAddBookmarkPage$CustomListView;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 239
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1e

    .line 240
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_64
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mRemoveLink:Landroid/view/View;

    if-ne p1, v4, :cond_1e

    .line 241
    iget-boolean v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-nez v4, :cond_74

    .line 242
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Remove button should not be shown for new bookmarks"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 245
    :cond_74
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 246
    .local v0, id:J
    invoke-direct {p0}, Lcom/android/browser/SecAddBookmarkPage;->createHandler()V

    .line 247
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 248
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, p0, v3}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto :goto_1e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 24
    .parameter "icicle"

    .prologue
    .line 455
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 457
    const v2, 0x7f0c0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->setTitle(I)V

    .line 458
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->requestWindowFeature(I)Z

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecAddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 462
    const v2, 0x7f040056

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->setContentView(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecAddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v21

    .line 466
    .local v21, window:Landroid/view/Window;
    const/16 v19, 0x0

    .line 467
    .local v19, title:Ljava/lang/String;
    const/16 v20, 0x0

    .line 471
    .local v20, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v2, :cond_10e

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "bookmark"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 473
    .local v9, b:Landroid/os/Bundle;
    if-eqz v9, :cond_26c

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "is_folder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    .line 475
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 476
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    .line 478
    const v2, 0x7f0c003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->setTitle(I)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v2, :cond_d6

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_262

    .line 483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    .line 484
    const v2, 0x7f0c01aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->setTitle(I)V

    .line 488
    :goto_83
    const/4 v2, 0x1

    new-array v13, v2, [Landroid/text/InputFilter;

    .line 489
    .local v13, filter:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v13, v2

    .line 490
    const v2, 0x7f0d0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 491
    .local v12, edittext:Landroid/widget/EditText;
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 492
    const v2, 0x7f0d0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    const v2, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const v2, 0x7f0d003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    const v2, 0x7f0d003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .end local v12           #edittext:Landroid/widget/EditText;
    .end local v13           #filter:[Landroid/text/InputFilter;
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .end local v20           #url:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/SecAddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 509
    .restart local v20       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "touch_icon_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "parent"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    .line 513
    .end local v9           #b:Landroid/os/Bundle;
    :cond_10e
    const v2, 0x7f0d0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 515
    const/16 v17, 0x1

    .line 516
    .local v17, isMostVisited:Z
    if-eqz v20, :cond_12d

    .line 517
    const-string v2, "content://com.android.browser.home/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_28f

    const/16 v17, 0x1

    .line 518
    :cond_12d
    :goto_12d
    if-eqz v17, :cond_135

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v2, :cond_13e

    .line 519
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :cond_13e
    const v2, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 523
    if-nez v17, :cond_158

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_158
    const v2, 0x7f0d003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mFolderText:Landroid/widget/TextView;

    .line 528
    const/4 v15, 0x0

    .line 529
    .local v15, foldername:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e8

    .line 530
    const/4 v10, 0x0

    .line 531
    .local v10, bookmarkCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 534
    .local v8, accountCursor:Landroid/database/Cursor;
    :try_start_174
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_name"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1de

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 546
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1de

    .line 547
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 548
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1dd
    .catchall {:try_start_174 .. :try_end_1dd} :catchall_2bd
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_1dd} :catch_293

    move-result-object v15

    .line 555
    :cond_1de
    if-eqz v10, :cond_1e3

    .line 556
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_1e3
    if-eqz v8, :cond_1e8

    .line 558
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 562
    .end local v8           #accountCursor:Landroid/database/Cursor;
    .end local v10           #bookmarkCursor:Landroid/database/Cursor;
    :cond_1e8
    :goto_1e8
    if-eqz v15, :cond_2c9

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_1f1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/SecAddBookmarkPage;->mMoreFolderClick:Landroid/view/View$OnClickListener;

    .line 570
    .local v14, folderTextClick:Landroid/view/View$OnClickListener;
    const v2, 0x7f0d003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMoreButton:Landroid/widget/LinearLayout;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMoreButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    const v2, 0x7f0d0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BreadCrumbView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecAddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 585
    const v2, 0x7f0d001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 590
    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_261

    .line 593
    :cond_261
    return-void

    .line 486
    .end local v14           #folderTextClick:Landroid/view/View$OnClickListener;
    .end local v15           #foldername:Ljava/lang/String;
    .end local v17           #isMostVisited:Z
    .restart local v9       #b:Landroid/os/Bundle;
    :cond_262
    const v2, 0x7f0c0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/SecAddBookmarkPage;->setTitle(I)V

    goto/16 :goto_83

    .line 500
    :cond_26c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "gravity"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 501
    .local v16, gravity:I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d6

    .line 502
    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 503
    .local v18, l:Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 504
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_d6

    .line 517
    .end local v9           #b:Landroid/os/Bundle;
    .end local v16           #gravity:I
    .end local v18           #l:Landroid/view/WindowManager$LayoutParams;
    .restart local v17       #isMostVisited:Z
    :cond_28f
    const/16 v17, 0x0

    goto/16 :goto_12d

    .line 551
    .restart local v8       #accountCursor:Landroid/database/Cursor;
    .restart local v10       #bookmarkCursor:Landroid/database/Cursor;
    .restart local v15       #foldername:Ljava/lang/String;
    :catch_293
    move-exception v11

    .line 552
    .local v11, e:Ljava/lang/Throwable;
    :try_start_294
    const-string v2, "Bookmarks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catchall {:try_start_294 .. :try_end_2b0} :catchall_2bd

    .line 553
    const/4 v15, 0x0

    .line 555
    if-eqz v10, :cond_2b6

    .line 556
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_2b6
    if-eqz v8, :cond_1e8

    .line 558
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1e8

    .line 555
    .end local v11           #e:Ljava/lang/Throwable;
    :catchall_2bd
    move-exception v2

    if-eqz v10, :cond_2c3

    .line 556
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_2c3
    if-eqz v8, :cond_2c8

    .line 558
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2c8
    throw v2

    .line 565
    .end local v8           #accountCursor:Landroid/database/Cursor;
    .end local v10           #bookmarkCursor:Landroid/database/Cursor;
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/SecAddBookmarkPage;->mFolderText:Landroid/widget/TextView;

    const v3, 0x7f0c01ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1f1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1c

    .line 198
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 199
    if-nez p2, :cond_1b

    .line 201
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1b

    .line 202
    invoke-direct {p0, v1}, Lcom/android/browser/SecAddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 209
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
    .line 342
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 344
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5}, Lcom/android/browser/SecAddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 345
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 629
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    .line 651
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 653
    :cond_c
    :goto_c
    return v0

    .line 631
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->save()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 632
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    .line 634
    :cond_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 635
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->promptToOverwrite()Z

    goto :goto_c

    .line 639
    :sswitch_25
    iget-boolean v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v1, :cond_2d

    .line 640
    invoke-direct {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_c

    .line 642
    :cond_2d
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    goto :goto_c

    .line 647
    :sswitch_31
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    goto :goto_c

    .line 629
    nop

    :sswitch_data_36
    .sparse-switch
        0x102002c -> :sswitch_31
        0x7f0d00fb -> :sswitch_d
        0x7f0d00fc -> :sswitch_25
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 601
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 602
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 607
    :cond_d
    return-void
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .registers 11
    .parameter "view"
    .parameter "level"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 172
    if-nez p3, :cond_4

    .line 184
    :goto_3
    return-void

    :cond_4
    move-object v2, p3

    .line 173
    check-cast v2, Lcom/android/browser/SecAddBookmarkPage$Folder;

    .line 174
    .local v2, folderData:Lcom/android/browser/SecAddBookmarkPage$Folder;
    iget-wide v0, v2, Lcom/android/browser/SecAddBookmarkPage$Folder;->Id:J

    .line 175
    .local v0, folder:J
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 176
    .local v4, manager:Landroid/app/LoaderManager;
    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    .line 178
    .local v3, loader:Landroid/content/CursorLoader;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/SecAddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 179
    invoke-virtual {v3}, Landroid/content/CursorLoader;->forceLoad()V

    .line 180
    iget-boolean v6, p0, Lcom/android/browser/SecAddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v6, :cond_24

    .line 181
    invoke-direct {p0, v5}, Lcom/android/browser/SecAddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 183
    :cond_24
    if-ne p2, v5, :cond_2a

    :goto_26
    invoke-direct {p0, v5}, Lcom/android/browser/SecAddBookmarkPage;->setShowBookmarkIcon(Z)V

    goto :goto_3

    :cond_2a
    const/4 v5, 0x0

    goto :goto_26
.end method

.method overwrite()Z
    .registers 13

    .prologue
    const v8, 0x7f0c0045

    const/4 v11, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1046
    invoke-direct {p0}, Lcom/android/browser/SecAddBookmarkPage;->createHandler()V

    .line 1048
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1050
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_62

    move v0, v6

    .line 1053
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_64

    move v1, v6

    .line 1054
    :goto_38
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1055
    if-nez v0, :cond_44

    if-eqz v1, :cond_70

    iget-boolean v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v4, :cond_70

    .line 1056
    :cond_44
    if-eqz v0, :cond_53

    .line 1058
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_66

    .line 1060
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_53
    :goto_53
    if-eqz v1, :cond_61

    .line 1066
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0047

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1195
    :cond_61
    :goto_61
    return v7

    :cond_62
    move v0, v7

    .line 1052
    goto :goto_2d

    :cond_64
    move v1, v7

    .line 1053
    goto :goto_38

    .line 1062
    :cond_66
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 1070
    :cond_70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1071
    iget-boolean v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_22a

    .line 1076
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "javascript:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 1077
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-static {v0}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d8

    .line 1083
    if-eqz v1, :cond_b0

    .line 1084
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0049

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_a1
    .catch Ljava/net/URISyntaxException; {:try_start_78 .. :try_end_a1} :catch_a2

    goto :goto_61

    .line 1099
    :catch_a2
    move-exception v0

    .line 1100
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0048

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 1089
    :cond_b0
    :try_start_b0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_b5
    .catch Landroid/net/ParseException; {:try_start_b0 .. :try_end_b5} :catch_c9
    .catch Ljava/net/URISyntaxException; {:try_start_b0 .. :try_end_b5} :catch_a2

    .line 1093
    :try_start_b5
    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d4

    .line 1094
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1090
    :catch_c9
    move-exception v0

    .line 1091
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_d4
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_d7
    .catch Ljava/net/URISyntaxException; {:try_start_b5 .. :try_end_d7} :catch_a2

    move-result-object v0

    :cond_d8
    move-object v8, v0

    .line 1105
    :goto_d9
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v0, :cond_df

    .line 1106
    iput-boolean v7, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    .line 1109
    :cond_df
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1112
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "url = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1119
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1122
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v8, v0}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_10c
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_161

    .line 1126
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1128
    const-string v2, "title"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v2, "parent"

    iget-wide v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1130
    iget-boolean v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v2, :cond_141

    .line 1131
    const-string v2, "url"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    if-nez v10, :cond_141

    .line 1133
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1136
    :cond_141
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_15b

    .line 1137
    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    new-array v0, v6, [Landroid/content/ContentValues;

    aput-object v1, v0, v7

    invoke-virtual {v2, v0}, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1139
    :cond_15b
    invoke-virtual {p0, v11}, Lcom/android/browser/SecAddBookmarkPage;->setResult(I)V

    :goto_15e
    move v7, v6

    .line 1195
    goto/16 :goto_61

    .line 1142
    :cond_161
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_18f

    .line 1143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    const-string v1, "title"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v1, "folder"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1146
    const-string v1, "parent"

    iget-wide v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v7, v6

    .line 1148
    goto/16 :goto_61

    .line 1154
    :cond_18f
    if-eqz v10, :cond_1ee

    .line 1155
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1157
    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v2, "favicon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1164
    :goto_1a5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1165
    const-string v3, "title"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v3, "url"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v3, "favicon"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1169
    iget-boolean v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v3, :cond_1f9

    .line 1170
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1f1

    if-eqz v10, :cond_1f1

    .line 1171
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1173
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1174
    new-instance v1, Lcom/android/browser/DownloadTouchIcon;

    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "user_agent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 1176
    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1192
    :goto_1e4
    invoke-virtual {p0, v11}, Lcom/android/browser/SecAddBookmarkPage;->setResult(I)V

    .line 1193
    const-string v0, "bookmarkview"

    invoke-static {v8, v0}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15e

    :cond_1ee
    move-object v1, v5

    move-object v0, v5

    .line 1161
    goto :goto_1a5

    .line 1178
    :cond_1f1
    invoke-static {p0, v8, v9, v5, v1}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e4

    .line 1182
    :cond_1f9
    const-string v1, "thumbnail"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1183
    const-string v0, "remove_thumbnail"

    if-nez v10, :cond_203

    move v7, v6

    :cond_203
    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1184
    const-string v0, "touch_icon_url"

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1187
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1189
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/SecAddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1190
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1e4

    :cond_22a
    move-object v8, v0

    goto/16 :goto_d9
.end method

.method promptToOverwrite()Z
    .registers 4

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mDuplicated:Z

    if-eqz v0, :cond_57

    .line 1006
    const v0, 0x7f0c01c7

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    const v0, 0x7f0c01c8

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    iget-boolean v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderDifferent:Z

    if-eqz v2, :cond_24

    .line 1010
    const v0, 0x7f0c01c9

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1011
    const v0, 0x7f0c01ca

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1014
    :cond_24
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0013

    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$4;

    invoke-direct {v2, p0}, Lcom/android/browser/SecAddBookmarkPage$4;-><init>(Lcom/android/browser/SecAddBookmarkPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0012

    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$3;

    invoke-direct {v2, p0}, Lcom/android/browser/SecAddBookmarkPage$3;-><init>(Lcom/android/browser/SecAddBookmarkPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1039
    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method save()Z
    .registers 16

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 772
    invoke-direct {p0}, Lcom/android/browser/SecAddBookmarkPage;->createHandler()V

    .line 774
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 776
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    iput-boolean v7, p0, Lcom/android/browser/SecAddBookmarkPage;->mDuplicated:Z

    .line 779
    iput-boolean v7, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitleDifferent:Z

    .line 780
    iput-boolean v7, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderDifferent:Z

    .line 782
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_67

    move v0, v6

    .line 783
    :goto_2f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_69

    move v1, v6

    .line 784
    :goto_3a
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 785
    if-nez v0, :cond_46

    if-eqz v1, :cond_78

    iget-boolean v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v3, :cond_78

    .line 786
    :cond_46
    if-eqz v0, :cond_58

    .line 788
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_6b

    .line 790
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v2, 0x7f0c0046

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 795
    :cond_58
    :goto_58
    if-eqz v1, :cond_66

    .line 796
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0047

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 998
    :cond_66
    :goto_66
    return v7

    :cond_67
    move v0, v7

    .line 782
    goto :goto_2f

    :cond_69
    move v1, v7

    .line 783
    goto :goto_3a

    .line 792
    :cond_6b
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v2, 0x7f0c0045

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 800
    :cond_78
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 801
    iget-boolean v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_3d0

    .line 806
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "javascript:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 807
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-static {v0}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e0

    .line 813
    if-eqz v1, :cond_b8

    .line 814
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0049

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_a9
    .catch Ljava/net/URISyntaxException; {:try_start_80 .. :try_end_a9} :catch_aa

    goto :goto_66

    .line 829
    :catch_aa
    move-exception v0

    .line 830
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0048

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_66

    .line 819
    :cond_b8
    :try_start_b8
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_bd
    .catch Landroid/net/ParseException; {:try_start_b8 .. :try_end_bd} :catch_d1
    .catch Ljava/net/URISyntaxException; {:try_start_b8 .. :try_end_bd} :catch_aa

    .line 823
    :try_start_bd
    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_dc

    .line 824
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 820
    :catch_d1
    move-exception v0

    .line 821
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_dc
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_df
    .catch Ljava/net/URISyntaxException; {:try_start_bd .. :try_end_df} :catch_aa

    move-result-object v0

    :cond_e0
    move-object v8, v0

    .line 835
    :goto_e1
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v0, :cond_e7

    .line 836
    iput-boolean v7, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    .line 839
    :cond_e7
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 842
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v0, :cond_262

    .line 845
    :try_start_f1
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e

    move v11, v6

    .line 846
    :goto_104
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND bookmark = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_118
    .catchall {:try_start_f1 .. :try_end_118} :catchall_1e8

    move-result-object v10

    .line 851
    :try_start_119
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_207

    .line 852
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-nez v0, :cond_129

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_141

    :cond_129
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_135

    if-nez v11, :cond_135

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v6, :cond_141

    :cond_135
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_207

    if-eqz v11, :cond_207

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_207

    .line 858
    :cond_141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 859
    const-wide/16 v0, 0x1

    .line 860
    iget-wide v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_3cd

    .line 861
    iget-wide v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    move-wide v11, v0

    .line 862
    :goto_159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mDuplicated:Z

    .line 863
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 864
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "parent"

    aput-object v4, v2, v3

    const-string v3, "url = ? AND title = ? AND parent = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    const/4 v5, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18d
    .catchall {:try_start_119 .. :try_end_18d} :catchall_3c9

    move-result-object v9

    .line 870
    :try_start_18e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 871
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_1e8

    .line 900
    if-eqz v9, :cond_66

    .line 901
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :cond_19e
    move v11, v7

    .line 845
    goto/16 :goto_104

    .line 874
    :cond_1a1
    :try_start_1a1
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "parent"

    aput-object v4, v2, v3

    const-string v3, "url = ? AND parent = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 880
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 881
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-nez v0, :cond_1dd

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitleDifferent:Z

    .line 883
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1dd
    .catchall {:try_start_1a1 .. :try_end_1dd} :catchall_1e8

    .line 900
    :cond_1dd
    :goto_1dd
    if-eqz v9, :cond_66

    .line 901
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    .line 886
    :cond_1e4
    const/4 v0, 0x1

    :try_start_1e5
    iput-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mFolderDifferent:Z
    :try_end_1e7
    .catchall {:try_start_1e5 .. :try_end_1e7} :catchall_1e8

    goto :goto_1dd

    .line 900
    :catchall_1e8
    move-exception v0

    :goto_1e9
    if-eqz v9, :cond_1ee

    .line 901
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1ee
    throw v0

    .line 890
    :cond_1ef
    :try_start_1ef
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 891
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c019d

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_200
    .catchall {:try_start_1ef .. :try_end_200} :catchall_3c9

    .line 900
    if-eqz v10, :cond_66

    .line 901
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    .line 900
    :cond_207
    if-eqz v10, :cond_20c

    .line 901
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 928
    :cond_20c
    :goto_20c
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_2f8

    .line 929
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 930
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 931
    const-string v2, "title"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v2, "parent"

    iget-wide v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 933
    iget-boolean v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-nez v2, :cond_241

    .line 934
    const-string v2, "url"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    if-nez v14, :cond_241

    .line 936
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 939
    :cond_241
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_25b

    .line 940
    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    new-array v0, v6, [Landroid/content/ContentValues;

    aput-object v1, v0, v7

    invoke-virtual {v2, v0}, Lcom/android/browser/SecAddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 942
    :cond_25b
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->setResult(I)V

    :goto_25f
    move v7, v6

    .line 998
    goto/16 :goto_66

    .line 907
    :cond_262
    :try_start_262
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c4

    .line 908
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = ? AND parent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND folder = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a3
    .catchall {:try_start_262 .. :try_end_2a3} :catchall_2f1
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_2a3} :catch_2cc

    move-result-object v1

    .line 913
    if-eqz v1, :cond_2c5

    :try_start_2a6
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2c5

    .line 914
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 915
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v2, 0x7f0c019d

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2bd
    .catchall {:try_start_2a6 .. :try_end_2bd} :catchall_3c2
    .catch Ljava/lang/Throwable; {:try_start_2a6 .. :try_end_2bd} :catch_3c6

    .line 922
    if-eqz v1, :cond_66

    .line 923
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :cond_2c4
    move-object v1, v9

    .line 922
    :cond_2c5
    if-eqz v1, :cond_20c

    .line 923
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20c

    .line 919
    :catch_2cc
    move-exception v0

    move-object v1, v9

    .line 920
    :goto_2ce
    :try_start_2ce
    const-string v2, "Bookmarks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save() exception while checking duplicate foldername - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ea
    .catchall {:try_start_2ce .. :try_end_2ea} :catchall_3c2

    .line 922
    if-eqz v1, :cond_20c

    .line 923
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20c

    .line 922
    :catchall_2f1
    move-exception v0

    :goto_2f2
    if-eqz v9, :cond_2f7

    .line 923
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2f7
    throw v0

    .line 945
    :cond_2f8
    iget-boolean v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_326

    .line 946
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 947
    const-string v1, "title"

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v1, "folder"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 949
    const-string v1, "parent"

    iget-wide v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 950
    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v7, v6

    .line 951
    goto/16 :goto_66

    .line 957
    :cond_326
    if-eqz v14, :cond_386

    .line 958
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 960
    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v2, "favicon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 967
    :goto_33c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 968
    const-string v3, "title"

    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v3, "url"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v3, "favicon"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 972
    iget-boolean v3, p0, Lcom/android/browser/SecAddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v3, :cond_391

    .line 973
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_389

    if-eqz v14, :cond_389

    .line 974
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 976
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 977
    new-instance v1, Lcom/android/browser/DownloadTouchIcon;

    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v3, "user_agent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 979
    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 995
    :goto_37b
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->setResult(I)V

    .line 996
    const-string v0, "bookmarkview"

    invoke-static {v8, v0}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25f

    :cond_386
    move-object v1, v9

    move-object v0, v9

    .line 964
    goto :goto_33c

    .line 981
    :cond_389
    invoke-static {p0, v8, v13, v9, v1}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/SecAddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_37b

    .line 985
    :cond_391
    const-string v1, "thumbnail"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 986
    const-string v0, "remove_thumbnail"

    if-nez v14, :cond_39b

    move v7, v6

    :cond_39b
    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 987
    const-string v0, "touch_icon_url"

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 990
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 992
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual {p0}, Lcom/android/browser/SecAddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/SecAddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 993
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_37b

    .line 922
    :catchall_3c2
    move-exception v0

    move-object v9, v1

    goto/16 :goto_2f2

    .line 919
    :catch_3c6
    move-exception v0

    goto/16 :goto_2ce

    .line 900
    :catchall_3c9
    move-exception v0

    move-object v9, v10

    goto/16 :goto_1e9

    :cond_3cd
    move-wide v11, v0

    goto/16 :goto_159

    :cond_3d0
    move-object v8, v0

    goto/16 :goto_e1
.end method
