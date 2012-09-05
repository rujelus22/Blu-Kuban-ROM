.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Fragment;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;,
        Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;,
        Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;,
        Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;,
        Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# instance fields
.field SelectAll_Visible:I

.field isShortcutWidget:Z

.field mBookmarkAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

.field private mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mDisableNewWindow:Z

.field private mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

.field mDragHandler:Lcom/android/browser/BookmarkDragHandler;

.field mEnableContextMenu:Z

.field mGrid:Lcom/android/browser/view/BookmarkExpandableView;

.field mMenuState:I

.field mNowGroupPosition:I

.field mPresentFolderId:J

.field mRoot:Landroid/view/View;

.field mSelectAllHeader:Landroid/view/View;

.field mState:Lorg/json/JSONObject;

.field mViewmode:I

.field private mWidget:Z

.field mWidgetTabmode:Z

.field mWidgetViewInvalidate:Z

.field selectAll:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 118
    const v0, 0x7f0d00fd

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    .line 121
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    .line 123
    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetTabmode:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetViewInvalidate:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidget:Z

    .line 134
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->SelectAll_Visible:I

    .line 141
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    .line 150
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mNowGroupPosition:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mPresentFolderId:J

    .line 153
    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->isShortcutWidget:Z

    .line 299
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 916
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$3;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    .line 1105
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;I)Lcom/android/browser/BrowserBookmarksAdapter;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 843
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 844
    return-void
.end method

.method private createFolder(I)V
    .registers 7
    .parameter

    .prologue
    .line 989
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 990
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 991
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v2, "parent"

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 994
    const-string v2, "bookmark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 995
    const-string v1, "is_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 997
    return-void
.end method

.method private createReorder(I)V
    .registers 5
    .parameter

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 970
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 971
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/browser/BookmarkReorder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    :goto_20
    const-string v1, "folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 978
    return-void

    .line 974
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/browser/BookmarkGridReorder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_20
.end method

.method static createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 674
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, title:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 677
    .local v2, touchIcon:Landroid/graphics/Bitmap;
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, favicon:Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v4

    return-object v4
.end method

.method private displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 771
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 773
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 774
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 777
    invoke-direct {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->isOperatorBookmark(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 779
    const v0, 0x7f0c01b2

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 786
    :goto_26
    return-void

    .line 782
    :cond_27
    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto :goto_26
.end method

.method private displayRemoveFolderDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .registers 9
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 822
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 824
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 825
    .local v2, id:J
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 827
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/browser/BookmarkUtils;->displayRemoveFolderDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    .line 828
    return-void
.end method

.method private editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 736
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 739
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 740
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 741
    invoke-direct {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->isOperatorBookmark(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_23

    .line 742
    const v0, 0x7f0c01b3

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 765
    :goto_22
    return-void

    .line 746
    :cond_23
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 748
    const-string v5, "title"

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v5, "url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 753
    if-eqz v5, :cond_57

    .line 754
    const-string v6, "favicon"

    array-length v7, v5

    invoke-static {v5, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 757
    :cond_57
    const-string v5, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 759
    const-string v5, "parent"

    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 761
    const-string v5, "bookmark"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 762
    const-string v4, "is_folder"

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_80

    :goto_79
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    :cond_80
    move v0, v1

    .line 762
    goto :goto_79
.end method

.method static getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 292
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 293
    .local v0, data:[B
    if-nez v0, :cond_8

    .line 294
    const/4 v1, 0x0

    .line 296
    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7
.end method

.method private getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v0

    return-object v0
.end method

.method private getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1127
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1128
    .local v0, prefs:Landroid/content/SharedPreferences;
    return-object v0
.end method

.method static getUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter "c"

    .prologue
    .line 835
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;
    .registers 4
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 831
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getViewmode()I
    .registers 2

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    return v0
.end method

.method private isOperatorBookmark(J)J
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 790
    .line 795
    const/4 v0, 0x1

    :try_start_3
    new-array v4, v0, [Ljava/lang/String;

    .line 796
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 797
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/provider/BrowserProvider2$OpBookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "COUNT(*)"

    aput-object v5, v2, v3

    const-string v3, "bookmark_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_24} :catch_50

    move-result-object v1

    .line 801
    if-eqz v1, :cond_6b

    .line 802
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 803
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_64
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_27 .. :try_end_31} :catch_66

    move-result v6

    move v0, v6

    .line 806
    :goto_33
    :try_start_33
    const-string v2, "kumar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IsOperatorBookmark !!count ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_64
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_33 .. :try_end_4b} :catch_69

    .line 811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 813
    :goto_4e
    int-to-long v0, v0

    return-wide v0

    .line 807
    :catch_50
    move-exception v0

    move v0, v6

    move-object v1, v7

    .line 808
    :goto_53
    :try_start_53
    const-string v2, "kumar"

    const-string v3, " ** IsOperatorBookmark:  handled unsupported exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_64

    .line 811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    :catchall_5e
    move-exception v0

    move-object v1, v7

    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_64
    move-exception v0

    goto :goto_60

    .line 807
    :catch_66
    move-exception v0

    move v0, v6

    goto :goto_53

    :catch_69
    move-exception v2

    goto :goto_53

    :cond_6b
    move v0, v6

    goto :goto_33
.end method

.method private loadFolder(ILandroid/net/Uri;)V
    .registers 6
    .parameter "groupPosition"
    .parameter "uri"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->closeContextMenu()V

    .line 884
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 886
    .local v1, manager:Landroid/app/LoaderManager;
    add-int/lit8 v2, p1, 0x64

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarksLoader;

    .line 888
    .local v0, loader:Lcom/android/browser/BookmarksLoader;
    invoke-virtual {v0, p2}, Lcom/android/browser/BookmarksLoader;->setUri(Landroid/net/Uri;)V

    .line 889
    invoke-virtual {v0}, Lcom/android/browser/BookmarksLoader;->forceLoad()V

    .line 891
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mNowGroupPosition:I

    .line 894
    return-void
.end method

.method private loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .registers 6
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 683
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    .line 685
    :cond_10
    return-void
.end method

.method private openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .registers 11
    .parameter "adapter"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 688
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v6, :cond_19

    .line 689
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 691
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1a

    .line 692
    :cond_12
    const-string v4, "BrowserBookmarksPage"

    const-string v5, "openInNewWindow cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v0           #c:Landroid/database/Cursor;
    :cond_19
    :goto_19
    return-void

    .line 695
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1a
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_33

    move v3, v4

    .line 696
    .local v3, isFolder:Z
    :goto_22
    if-eqz v3, :cond_35

    .line 697
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 698
    .local v1, id:J
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;-><init>(Lcom/android/browser/BrowserBookmarksPage;J)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_19

    .end local v1           #id:J
    .end local v3           #isFolder:Z
    :cond_33
    move v3, v5

    .line 695
    goto :goto_22

    .line 700
    .restart local v3       #isFolder:Z
    :cond_35
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-interface {v6, v4}, Lcom/android/browser/BookmarksPageCallbacks;->onOpenInNewWindow([Ljava/lang/String;)Z

    goto :goto_19
.end method

.method private populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V
    .registers 11
    .parameter "cursor"
    .parameter "item"
    .parameter "isFolder"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 509
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 510
    if-eqz p3, :cond_3a

    .line 511
    invoke-virtual {p2, v5}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020051

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 514
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 515
    invoke-virtual {p2, v5}, Lcom/android/browser/BookmarkItem;->setFaviconBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;-><init>(Landroid/content/Context;Lcom/android/browser/BookmarkItem;)V

    new-array v3, v4, [Ljava/lang/Long;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 524
    :goto_39
    return-void

    .line 519
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3a
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_39
.end method

.method private saveCurrentPage()V
    .registers 5

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 957
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    const-string v2, "url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v2, "touch_icon_url"

    const-string v3, "touch_icon_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v2, "user_agent"

    const-string v3, "user_agent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v2, "thumbnail"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    const-string v2, "favicon"

    const-string v3, "favicon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 965
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 966
    return-void
.end method

.method private switchViewMode(I)V
    .registers 6
    .parameter "viewmode"

    .prologue
    .line 1001
    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    if-ne v1, p1, :cond_5

    .line 1012
    :goto_4
    return-void

    .line 1004
    :cond_5
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    .line 1006
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1007
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bookmark_view_mode"

    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1011
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->selectView(I)V

    goto :goto_4
.end method


# virtual methods
.method CheckedItemsList()[J
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1228
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 1229
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1232
    new-array v3, v2, [J

    .line 1234
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1235
    const-string v4, "bbp_group_state"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1236
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1240
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v6

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1254
    const-string v7, "bookmark_checked_#"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1256
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "true"

    if-ne v5, v7, :cond_b3

    .line 1258
    const-string v5, "bookmark_checked_#"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1260
    aput-wide v7, v3, v1

    .line 1261
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_87
    move v1, v0

    .line 1263
    goto :goto_43

    .line 1265
    :cond_89
    :goto_89
    if-ge v6, v2, :cond_b2

    .line 1267
    const-string v0, "BrowserBookmarksPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v4, v3, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 1269
    :cond_b2
    return-object v3

    :cond_b3
    move v0, v1

    goto :goto_87
.end method

.method canEdit(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 504
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, unique:Ljava/lang/String;
    const-string v1, "other_bookmarks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public checkIfInvalidate()Z
    .registers 4

    .prologue
    .line 1037
    const-string v0, "BrowserBookmarksPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkIfInvalidate : !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetViewInvalidate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetViewInvalidate:Z

    return v0
.end method

.method protected clearCheckInfo()V
    .registers 6

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1171
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1178
    const-string v3, "bookmark_checked_#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1180
    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    .line 1183
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1186
    :cond_39
    const-string v3, "AllCheck"

    if-ne v0, v3, :cond_18

    .line 1187
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_18

    .line 1189
    :cond_41
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1190
    return-void
.end method

.method public handleContextItem(III)Z
    .registers 15
    .parameter "itemId"
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 237
    .local v1, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    sparse-switch p1, :sswitch_data_8a

    .line 286
    const/4 v6, 0x0

    .line 288
    :goto_e
    return v6

    .line 239
    :sswitch_f
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_e

    .line 242
    :sswitch_13
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_e

    .line 245
    :sswitch_17
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 246
    .local v2, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e

    .line 249
    .end local v2           #c:Landroid/database/Cursor;
    :sswitch_27
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_e

    .line 252
    :sswitch_2b
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveFolderDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_e

    .line 255
    :sswitch_2f
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_e

    .line 258
    :sswitch_33
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 259
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v3, v9}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v3, v10}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_e

    .line 267
    .end local v3           #cursor:Landroid/database/Cursor;
    :sswitch_4d
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    .line 268
    const v7, 0x10405c2

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 271
    :sswitch_5f
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 272
    const v7, 0x7f0c0044

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 277
    :sswitch_75
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 278
    .restart local v3       #cursor:Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, name:Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0, v7, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 237
    nop

    :sswitch_data_8a
    .sparse-switch
        0x7f0d0043 -> :sswitch_f
        0x7f0d0044 -> :sswitch_2f
        0x7f0d0108 -> :sswitch_13
        0x7f0d0109 -> :sswitch_17
        0x7f0d010a -> :sswitch_33
        0x7f0d010b -> :sswitch_4d
        0x7f0d010c -> :sswitch_27
        0x7f0d010d -> :sswitch_5f
        0x7f0d010f -> :sswitch_2b
        0x7f0d0154 -> :sswitch_75
    .end sparse-switch
.end method

.method isCheckedBox(J)Z
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1139
    const-string v0, "bookmark_checked_#%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCheckedItemExist()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1193
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1194
    const-string v2, "bbp_group_state"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1197
    const/4 v2, 0x0

    .line 1199
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1211
    const-string v5, "bookmark_checked_#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1213
    if-ne v0, v1, :cond_22

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    if-ne v0, v4, :cond_22

    move v0, v1

    .line 1223
    :goto_49
    return v0

    :cond_4a
    move v0, v2

    goto :goto_49
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x67

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1044
    if-eqz p3, :cond_41

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1045
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1046
    const-string v2, "unable_to_reorder_folder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1048
    const/16 v2, 0x65

    if-ne p1, v2, :cond_22

    if-ne p2, v3, :cond_22

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->createReorder(I)V

    .line 1066
    :cond_21
    :goto_21
    return-void

    .line 1050
    :cond_22
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2c

    if-ne p2, v3, :cond_2c

    .line 1051
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->createFolder(I)V

    goto :goto_21

    .line 1052
    :cond_2c
    if-ne p1, v5, :cond_21

    if-nez p2, :cond_21

    .line 1054
    if-ne v0, v4, :cond_21

    .line 1056
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01b0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 1062
    :cond_41
    if-ne p1, v5, :cond_21

    if-nez p2, :cond_21

    .line 1064
    const-string v0, "BrowserBookmarksPage"

    const-string v1, " no toast !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 643
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 644
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0, p4}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 645
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v3, 0x1

    .line 646
    .local v3, isFolder:Z
    :goto_10
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v6, v2, v3}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 647
    const/4 v6, 0x1

    .line 670
    :goto_1d
    return v6

    .line 645
    .end local v3           #isFolder:Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_10

    .line 650
    .restart local v3       #isFolder:Z
    :cond_20
    iget-wide v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mPresentFolderId:J

    cmp-long v6, p5, v6

    if-nez v6, :cond_28

    .line 652
    const/4 v6, 0x1

    goto :goto_1d

    .line 655
    :cond_28
    if-eqz v3, :cond_47

    .line 656
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, title:Ljava/lang/String;
    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v6, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 659
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 660
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    if-eqz v1, :cond_42

    .line 662
    invoke-virtual {v1, v4, v5}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 663
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 666
    :cond_42
    iput-wide p5, p0, Lcom/android/browser/BrowserBookmarksPage;->mPresentFolderId:J

    .line 668
    invoke-direct {p0, p3, v5}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    .line 670
    .end local v1           #crumbs:Lcom/android/browser/BreadCrumbView;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_47
    const/4 v6, 0x1

    goto :goto_1d
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 849
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v2, 0x7f04004f

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 851
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 852
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 853
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 854
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    if-nez v2, :cond_a

    .line 229
    :cond_9
    :goto_9
    return v1

    .line 220
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 222
    .local v0, i:Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    if-eqz v0, :cond_9

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    iget v3, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/BrowserBookmarksPage;->handleContextItem(III)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 227
    const/4 v1, 0x1

    goto :goto_9

    .line 229
    :cond_22
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 531
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 532
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 534
    .local v2, prefs:Landroid/content/SharedPreferences;
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "bbp_group_state"

    const-string v6, "{}"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1c} :catch_5b

    .line 541
    :goto_1c
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 542
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_71

    move v3, v4

    :goto_23
    iput-boolean v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 543
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->setHasOptionsMenu(Z)V

    .line 544
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-nez v3, :cond_42

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    if-eqz v3, :cond_42

    .line 545
    new-instance v5, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;-><init>(Lcom/android/browser/CombinedBookmarksCallbacks;Lcom/android/browser/BrowserBookmarksPage$1;)V

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 549
    :cond_42
    const-string v3, "bookmark_view_mode"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    .line 550
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "widget"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidget:Z

    .line 552
    return-void

    .line 535
    .end local v0           #args:Landroid/os/Bundle;
    :catch_5b
    move-exception v1

    .line 537
    .local v1, e:Lorg/json/JSONException;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "bbp_group_state"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 538
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    goto :goto_1c

    .line 542
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_71
    const-string v3, "disable_new_window"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_23
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 469
    move-object v7, p3

    check-cast v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 470
    .local v7, info:Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 471
    .local v1, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {v1, v11}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 472
    .local v3, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->canEdit(Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 501
    :cond_17
    return-void

    .line 475
    :cond_18
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_5b

    move v8, v9

    .line 476
    .local v8, isFolder:Z
    :goto_20
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidget:Z

    if-nez v11, :cond_17

    .line 480
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 481
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 482
    .local v6, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f100003

    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 483
    if-eqz v8, :cond_5d

    .line 484
    const v10, 0x7f0d010e

    invoke-interface {p1, v10, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 491
    :cond_3a
    :goto_3a
    new-instance v4, Lcom/android/browser/BookmarkItem;

    invoke-direct {v4, v0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 492
    .local v4, header:Lcom/android/browser/BookmarkItem;
    invoke-virtual {v4, v9}, Lcom/android/browser/BookmarkItem;->setEnableScrolling(Z)V

    .line 493
    invoke-direct {p0, v3, v4, v8}, Lcom/android/browser/BrowserBookmarksPage;->populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V

    .line 494
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 496
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    .line 497
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4d
    if-ge v5, v2, :cond_17

    .line 498
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 497
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #count:I
    .end local v4           #header:Lcom/android/browser/BookmarkItem;
    .end local v5           #i:I
    .end local v6           #inflater:Landroid/view/MenuInflater;
    .end local v8           #isFolder:Z
    :cond_5b
    move v8, v10

    .line 475
    goto :goto_20

    .line 486
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v6       #inflater:Landroid/view/MenuInflater;
    .restart local v8       #isFolder:Z
    :cond_5d
    const v11, 0x7f0d0107

    invoke-interface {p1, v11, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 487
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v11, :cond_3a

    .line 488
    const v11, 0x7f0d0044

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3a
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 9
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
    .line 158
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d

    .line 159
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 165
    :goto_c
    return-object v2

    .line 160
    :cond_d
    const/16 v3, 0x64

    if-lt p1, v3, :cond_27

    .line 161
    const-string v3, "account_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/BookmarksLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/android/browser/BookmarksLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v2, bl:Lcom/android/browser/BookmarksLoader;
    goto :goto_c

    .line 167
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #bl:Lcom/android/browser/BookmarksLoader;
    :cond_27
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown loader id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidget:Z

    if-eqz v0, :cond_b

    .line 312
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    :goto_a
    return-void

    .line 314
    :cond_b
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 597
    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    .line 601
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/BookmarkExpandableView;

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    .line 602
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 603
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v2, 0x7f04004f

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 604
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 605
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 606
    new-instance v1, Lcom/android/browser/BookmarkDragHandler;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v4}, Lcom/android/browser/view/BookmarkExpandableView;->getDragAdapter()Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/BookmarkDragHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;)V

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;

    .line 610
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 611
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 613
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->selectAll:Landroid/widget/CheckBox;

    .line 614
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d00ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mSelectAllHeader:Landroid/view/View;

    .line 617
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .registers 6

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 623
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 624
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v3}, Lcom/android/browser/view/BookmarkExpandableView;->clearAccounts()V

    .line 625
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 626
    .local v2, lm:Landroid/app/LoaderManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 627
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 628
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_20

    .line 630
    .end local v1           #id:I
    :cond_34
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 631
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 14
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v10, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    if-ne v8, v10, :cond_61

    .line 174
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    .line 175
    .local v7, lm:Landroid/app/LoaderManager;
    const/16 v6, 0x64

    .line 176
    .local v6, id:I
    :goto_d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 177
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, accountType:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v3, args:Landroid/os/Bundle;
    const-string v8, "account_name"

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "account_type"

    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v2, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getViewmode()I

    move-result v9

    invoke-direct {v2, p0, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Lcom/android/browser/BrowserBookmarksPage;Landroid/content/Context;I)V

    .line 184
    .local v2, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v5, 0x1

    .line 187
    .local v5, expand:Z
    :try_start_42
    iget-object v9, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    if-eqz v0, :cond_56

    move-object v8, v0

    :goto_47
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_4a} :catch_88

    move-result v5

    .line 190
    :goto_4b
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v8, v0, v2, v5}, Lcom/android/browser/view/BookmarkExpandableView;->addAccount(Ljava/lang/String;Lcom/android/browser/BrowserBookmarksAdapter;Z)V

    .line 191
    invoke-virtual {v7, v6, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    goto :goto_d

    .line 187
    :cond_56
    :try_start_56
    const-string v8, "local"
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_58} :catch_88

    goto :goto_47

    .line 201
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v5           #expand:Z
    :cond_59
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 208
    .end local v6           #id:I
    .end local v7           #lm:Landroid/app/LoaderManager;
    :cond_60
    :goto_60
    return-void

    .line 202
    :cond_61
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_60

    .line 203
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 204
    .restart local v2       #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v2, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 205
    invoke-virtual {v2}, Lcom/android/browser/BrowserBookmarksAdapter;->isEmpty()Z

    move-result v4

    .line 206
    .local v4, empty:Z
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_60

    .line 189
    .end local v4           #empty:Z
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v3       #args:Landroid/os/Bundle;
    .restart local v5       #expand:Z
    .restart local v6       #id:I
    .restart local v7       #lm:Landroid/app/LoaderManager;
    :catch_88
    move-exception v8

    goto :goto_4b
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
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
    .line 212
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_82

    .line 458
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mSelectAllHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 461
    :goto_13
    return v0

    .line 413
    :sswitch_14
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/FolderListPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 421
    :sswitch_25
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(I)V

    goto :goto_13

    .line 425
    :sswitch_29
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(I)V

    goto :goto_13

    .line 429
    :sswitch_2e
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    goto :goto_13

    .line 433
    :sswitch_32
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/FolderListPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 439
    :sswitch_43
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->clearCheckInfo()V

    .line 440
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/BookmarkMoveToFolder;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    const-string v2, "viewMode"

    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getViewmode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 446
    :sswitch_5e
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->clearCheckInfo()V

    .line 447
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/DeleteBookmark;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    const-string v2, "viewMode"

    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getViewmode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 454
    :sswitch_79
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_13

    .line 411
    nop

    :sswitch_data_82
    .sparse-switch
        0x7f0d0052 -> :sswitch_79
        0x7f0d00fe -> :sswitch_2e
        0x7f0d00ff -> :sswitch_29
        0x7f0d0100 -> :sswitch_25
        0x7f0d0101 -> :sswitch_14
        0x7f0d0102 -> :sswitch_32
        0x7f0d0103 -> :sswitch_43
        0x7f0d0104 -> :sswitch_5e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 558
    :try_start_3
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1}, Lcom/android/browser/view/BookmarkExpandableView;->saveGroupState()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    .line 560
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bbp_group_state"

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_26} :catch_27

    .line 567
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_26
    return-void

    .line 564
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15
    .parameter "menu"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 322
    const-string v10, "BrowserBookmarksPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPrepareOptionsMenu mMenuState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v9, 0x1

    .line 324
    .local v9, showMain:Z
    const/4 v8, 0x0

    .line 325
    .local v8, showBookmark:Z
    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    packed-switch v10, :pswitch_data_1a2

    .line 332
    :goto_24
    iget-boolean v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidget:Z

    if-eqz v10, :cond_81

    .line 334
    iget-boolean v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetTabmode:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_34

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedItemExist()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4e

    .line 336
    :cond_34
    const v10, 0x7f0d00ff

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    const v10, 0x7f0d0100

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    :cond_4a
    :goto_4a
    return-void

    .line 327
    :pswitch_4b
    const/4 v9, 0x0

    .line 328
    const/4 v8, 0x1

    goto :goto_24

    .line 341
    :cond_4e
    const v10, 0x7f0d00ff

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_7d

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    const v12, 0x7f0d00fd

    if-ne v10, v12, :cond_7d

    const/4 v10, 0x1

    :goto_62
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    const v10, 0x7f0d0100

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    const/4 v12, 0x1

    if-eq v10, v12, :cond_7f

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    const v12, 0x7f0d00fd

    if-ne v10, v12, :cond_7f

    const/4 v10, 0x1

    :goto_79
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4a

    .line 341
    :cond_7d
    const/4 v10, 0x0

    goto :goto_62

    .line 342
    :cond_7f
    const/4 v10, 0x0

    goto :goto_79

    .line 346
    :cond_81
    const v10, 0x7f0d00fd

    invoke-interface {p1, v10, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 347
    const v10, 0x7f0d00fd

    invoke-interface {p1, v10, v9}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 349
    const v10, 0x7f0d0105

    invoke-interface {p1, v10, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 350
    const v10, 0x7f0d0105

    invoke-interface {p1, v10, v8}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 352
    const v10, 0x7f0d00ff

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_10a

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    const v12, 0x7f0d00fd

    if-ne v10, v12, :cond_10a

    const/4 v10, 0x1

    :goto_ad
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    const v10, 0x7f0d0100

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    const/4 v12, 0x1

    if-eq v10, v12, :cond_10c

    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    const v12, 0x7f0d00fd

    if-ne v10, v12, :cond_10c

    const/4 v10, 0x1

    :goto_c4
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 357
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_d8

    .line 358
    const v10, 0x7f0d00fe

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    :cond_d8
    iget-boolean v10, p0, Lcom/android/browser/BrowserBookmarksPage;->isShortcutWidget:Z

    if-eqz v10, :cond_10e

    .line 362
    const v10, 0x7f0d0102

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    const v10, 0x7f0d0103

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    const v10, 0x7f0d0104

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 365
    const v10, 0x7f0d0101

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4a

    .line 352
    .end local v0           #args:Landroid/os/Bundle;
    :cond_10a
    const/4 v10, 0x0

    goto :goto_ad

    .line 353
    :cond_10c
    const/4 v10, 0x0

    goto :goto_c4

    .line 369
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_10e
    const/4 v1, 0x1

    .line 370
    .local v1, bVisibleMenu:Z
    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    if-eqz v10, :cond_155

    .line 371
    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v10}, Lcom/android/browser/view/BookmarkExpandableView;->getGroupCount()I

    move-result v7

    .line 372
    .local v7, nGroupCount:I
    iget v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mNowGroupPosition:I

    if-le v7, v10, :cond_128

    .line 373
    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    iget v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mNowGroupPosition:I

    invoke-virtual {v10, v11}, Lcom/android/browser/view/BookmarkExpandableView;->getChildrenCount(I)I

    move-result v6

    .line 374
    .local v6, nCount:I
    if-gtz v6, :cond_128

    .line 375
    const/4 v1, 0x0

    .line 377
    .end local v6           #nCount:I
    :cond_128
    const v10, 0x7f0d0102

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v1, :cond_184

    if-eqz v9, :cond_184

    const/4 v10, 0x1

    :goto_134
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    const v10, 0x7f0d0103

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v1, :cond_186

    if-eqz v9, :cond_186

    const/4 v10, 0x1

    :goto_143
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    const v10, 0x7f0d0104

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v1, :cond_188

    if-eqz v9, :cond_188

    const/4 v10, 0x1

    :goto_152
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    .end local v7           #nGroupCount:I
    :cond_155
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 384
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4a

    .line 385
    const/4 v4, 0x0

    .line 386
    .local v4, item:Landroid/view/MenuItem;
    const/4 v5, 0x0

    .local v5, itemIndex:I
    :goto_165
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v5, v10, :cond_18a

    .line 387
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 388
    .local v2, cItem:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const v11, 0x7f0c01d3

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserBookmarksPage;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_181

    .line 389
    move-object v4, v2

    .line 386
    :cond_181
    add-int/lit8 v5, v5, 0x1

    goto :goto_165

    .line 377
    .end local v2           #cItem:Landroid/view/MenuItem;
    .end local v4           #item:Landroid/view/MenuItem;
    .end local v5           #itemIndex:I
    .restart local v7       #nGroupCount:I
    :cond_184
    const/4 v10, 0x0

    goto :goto_134

    .line 378
    :cond_186
    const/4 v10, 0x0

    goto :goto_143

    .line 379
    :cond_188
    const/4 v10, 0x0

    goto :goto_152

    .line 392
    .end local v7           #nGroupCount:I
    .restart local v4       #item:Landroid/view/MenuItem;
    .restart local v5       #itemIndex:I
    :cond_18a
    if-nez v4, :cond_4a

    .line 393
    const v10, 0x7f0c01d3

    invoke-interface {p1, v10}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 394
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 395
    .local v3, deleteAllActivity:Landroid/app/Activity;
    new-instance v10, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v10, p0, v3}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;Landroid/app/Activity;)V

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4a

    .line 325
    nop

    :pswitch_data_1a2
    .packed-switch 0x7f0d0105
        :pswitch_4b
    .end packed-switch
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    const/high16 v0, 0x7f0d

    invoke-virtual {p1, v0}, Lcom/android/browser/BreadCrumbView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 862
    check-cast p3, Landroid/net/Uri;

    .line 864
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mPresentFolderId:J

    .line 866
    if-nez p3, :cond_16

    .line 868
    sget-object p3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 870
    :cond_16
    invoke-direct {p0, v0, p3}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    .line 871
    const/4 v0, 0x1

    if-gt p2, v0, :cond_22

    .line 872
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 876
    :goto_21
    return-void

    .line 874
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    goto :goto_21
.end method

.method protected refreshPage(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 1153
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getViewmode()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Lcom/android/browser/BrowserBookmarksPage;Landroid/content/Context;I)V

    .line 1155
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshAdapter(Z)V

    .line 1156
    return-void
.end method

.method public setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V
    .registers 2
    .parameter "callbackListener"

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 898
    return-void
.end method

.method protected setCheckedAllBox(Ljava/lang/String;ZZ)V
    .registers 6
    .parameter "AllCheck"
    .parameter "checked"
    .parameter "status"

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1145
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1148
    if-eqz p3, :cond_13

    .line 1149
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserBookmarksPage;->refreshPage(Z)V

    .line 1150
    :cond_13
    return-void
.end method

.method protected setCheckedBox(JZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1159
    const-string v0, "BrowserBookmarksPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckedBox -> id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " //checked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v0, "bookmark_checked_#%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1163
    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1165
    return-void
.end method

.method public setCurrentViewMode(I)V
    .registers 2
    .parameter "viewMode"

    .prologue
    .line 1020
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewmode:I

    .line 1021
    return-void
.end method

.method public setCurrentWidgetTabMode(Z)V
    .registers 2
    .parameter "tabMode"

    .prologue
    .line 1026
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetTabmode:Z

    .line 1027
    return-void
.end method

.method public setEnableContextMenu(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 902
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    if-eqz v0, :cond_f

    .line 903
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    if-eqz v0, :cond_10

    .line 904
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->registerForContextMenu(Landroid/view/View;)V

    .line 910
    :cond_f
    :goto_f
    return-void

    .line 906
    :cond_10
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->unregisterForContextMenu(Landroid/view/View;)V

    .line 907
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/view/BookmarkExpandableView;->setLongClickable(Z)V

    goto :goto_f
.end method

.method public setPreCheckedItems(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1031
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetViewInvalidate:Z

    .line 1032
    const-string v0, "BrowserBookmarksPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setDoInvalidate : !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mWidgetViewInvalidate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void
.end method

.method public setShortcutWidget(Z)V
    .registers 2
    .parameter "shortcutWidget"

    .prologue
    .line 913
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->isShortcutWidget:Z

    .line 914
    return-void
.end method
