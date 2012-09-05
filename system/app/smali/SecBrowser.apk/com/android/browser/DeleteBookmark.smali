.class public Lcom/android/browser/DeleteBookmark;
.super Landroid/app/Activity;
.source "DeleteBookmark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# static fields
.field static selectAll:Landroid/widget/CheckBox;


# instance fields
.field private mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

.field mSavedListArray:[J

.field private mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    new-instance v0, Lcom/android/browser/DeleteBookmark$1;

    invoke-direct {v0, p0}, Lcom/android/browser/DeleteBookmark$1;-><init>(Lcom/android/browser/DeleteBookmark;)V

    iput-object v0, p0, Lcom/android/browser/DeleteBookmark;->mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/DeleteBookmark;)Lcom/android/browser/BrowserBookmarksPage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    return-object v0
.end method


# virtual methods
.method DeleteBookmarkDB([J)V
    .registers 12
    .parameter "mSavedListArray"

    .prologue
    const/4 v9, 0x0

    .line 163
    array-length v0, p1

    .line 164
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_41

    .line 166
    aget-wide v2, p1, v1

    .line 167
    .local v2, id:J
    sget-object v5, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 170
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    const-string v5, "DeleteBookmark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteBookmarkDB :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, p1, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " => deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 173
    .end local v2           #id:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_41
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 4
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 87
    if-eqz p2, :cond_4

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 107
    :goto_7
    return-void

    .line 104
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->finish()V

    goto :goto_7

    .line 102
    :pswitch_data_c
    .packed-switch 0x7f0d0052
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f0c01a9

    invoke-virtual {p0, v2}, Lcom/android/browser/DeleteBookmark;->setTitle(I)V

    .line 55
    const v2, 0x7f04004c

    invoke-virtual {p0, v2}, Lcom/android/browser/DeleteBookmark;->setContentView(I)V

    .line 56
    const v2, 0x7f0d00ed

    invoke-virtual {p0, v2}, Lcom/android/browser/DeleteBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sput-object v2, Lcom/android/browser/DeleteBookmark;->selectAll:Landroid/widget/CheckBox;

    .line 57
    sget-object v2, Lcom/android/browser/DeleteBookmark;->selectAll:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/browser/DeleteBookmark;->mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksPage;

    iput-object v2, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 62
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewMode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    .local v1, viewMode:I
    const-string v2, "DeleteBookmark"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserBookmarksPage;->setCurrentViewMode(I)V

    .line 66
    iget-object v2, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const v3, 0x7f0d0105

    iput v3, v2, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    .line 67
    iget-object v2, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 68
    iget-object v2, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2, p0}, Lcom/android/browser/BrowserBookmarksPage;->setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/DeleteBookmark;->mSavedListArray:[J

    .line 72
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/android/browser/DeleteBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_80

    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_80
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 135
    :goto_b
    return v0

    .line 114
    :sswitch_c
    iget-object v0, p0, Lcom/android/browser/DeleteBookmark;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->CheckedItemsList()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DeleteBookmark;->mSavedListArray:[J

    .line 115
    iget-object v0, p0, Lcom/android/browser/DeleteBookmark;->mSavedListArray:[J

    if-nez v0, :cond_1d

    .line 117
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->finish()V

    .line 135
    :goto_1b
    const/4 v0, 0x1

    goto :goto_b

    .line 120
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/DeleteBookmark;->mSavedListArray:[J

    invoke-virtual {p0, v0}, Lcom/android/browser/DeleteBookmark;->DeleteBookmarkDB([J)V

    .line 121
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->finish()V

    goto :goto_1b

    .line 125
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->finish()V

    goto :goto_1b

    .line 129
    :sswitch_2a
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->finish()V

    goto :goto_1b

    .line 112
    :sswitch_data_2e
    .sparse-switch
        0x102002c -> :sswitch_26
        0x7f0d0052 -> :sswitch_2a
        0x7f0d0106 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/DeleteBookmark;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    return-void
.end method
