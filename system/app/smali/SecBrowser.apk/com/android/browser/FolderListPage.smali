.class public Lcom/android/browser/FolderListPage;
.super Landroid/app/ListActivity;
.source "FolderListPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/FolderListPage$BookmarkAccount;,
        Lcom/android/browser/FolderListPage$AccountsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final LOADER_ID_ACCOUNTS:I

.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/browser/FolderListPage$BookmarkAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mCurrentAccount:Ljava/lang/String;

.field private mFolderAdapter:Lcom/android/browser/FolderViewAdapter;

.field private mFolderTree:Lcom/android/browser/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/Tree",
            "<",
            "Lcom/android/browser/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mfolderView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/FolderListPage;->LOADER_ID_ACCOUNTS:I

    .line 319
    return-void
.end method


# virtual methods
.method public buildTree(Lcom/android/browser/Tree;Lcom/android/browser/FolderItem;)V
    .registers 19
    .parameter
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tree",
            "<",
            "Lcom/android/browser/FolderItem;",
            ">;",
            "Lcom/android/browser/FolderItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, folderTree:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<Lcom/android/browser/FolderItem;>;"
    const-string v14, "title ASC"

    .line 253
    .local v14, orderBy:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/FolderItem;->getFolder()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, whereClause:Ljava/lang/String;
    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "folder"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "parent"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "title ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/browser/FolderListPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 261
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 262
    .local v8, childCount:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    const/4 v13, 0x0

    .local v13, i:I
    :goto_55
    if-ge v13, v8, :cond_8a

    .line 266
    new-instance v11, Lcom/android/browser/FolderItem;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .line 267
    .local v11, folderItem:Lcom/android/browser/FolderItem;
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 268
    .local v10, folderId:I
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, folderName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 271
    .local v15, parentId:I
    invoke-virtual {v11, v12}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v11, v10}, Lcom/android/browser/FolderItem;->setFolder(I)V

    .line 273
    invoke-virtual {v11, v15}, Lcom/android/browser/FolderItem;->setFolderParent(I)V

    .line 275
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/android/browser/Tree;->addLeaf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/browser/FolderListPage;->buildTree(Lcom/android/browser/Tree;Lcom/android/browser/FolderItem;)V

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 264
    add-int/lit8 v13, v13, 0x1

    goto :goto_55

    .line 282
    .end local v10           #folderId:I
    .end local v11           #folderItem:Lcom/android/browser/FolderItem;
    .end local v12           #folderName:Ljava/lang/String;
    .end local v15           #parentId:I
    :cond_8a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lcom/android/browser/FolderListPage;->setContentView(I)V

    .line 86
    const v3, 0x7f0c01b1

    invoke-virtual {p0, v3}, Lcom/android/browser/FolderListPage;->setTitle(I)V

    .line 89
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 91
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    const v3, 0x7f0d0051

    invoke-virtual {p0, v3}, Lcom/android/browser/FolderListPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    .line 94
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/browser/FolderListPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mfolderView:Landroid/widget/ListView;

    .line 104
    const/4 v0, 0x1

    .line 106
    .local v0, currentFolder:I
    new-instance v1, Lcom/android/browser/FolderItem;

    invoke-direct {v1, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, home:Lcom/android/browser/FolderItem;
    const v3, 0x7f0c01ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v0}, Lcom/android/browser/FolderItem;->setFolder(I)V

    .line 111
    new-instance v3, Lcom/android/browser/Tree;

    invoke-direct {v3, v1}, Lcom/android/browser/Tree;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mFolderTree:Lcom/android/browser/Tree;

    .line 112
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mFolderTree:Lcom/android/browser/Tree;

    invoke-virtual {p0, v3, v1}, Lcom/android/browser/FolderListPage;->buildTree(Lcom/android/browser/Tree;Lcom/android/browser/FolderItem;)V

    .line 114
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mfolderView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/browser/FolderListPage$1;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderListPage$1;-><init>(Lcom/android/browser/FolderListPage;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mfolderView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/browser/FolderListPage$2;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderListPage$2;-><init>(Lcom/android/browser/FolderListPage;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 146
    new-instance v3, Lcom/android/browser/FolderViewAdapter;

    iget-object v4, p0, Lcom/android/browser/FolderListPage;->mFolderTree:Lcom/android/browser/Tree;

    iget-object v5, p0, Lcom/android/browser/FolderListPage;->mfolderView:Landroid/widget/ListView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/browser/FolderViewAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/Tree;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mFolderAdapter:Lcom/android/browser/FolderViewAdapter;

    .line 148
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mfolderView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/browser/FolderListPage;->mFolderAdapter:Lcom/android/browser/FolderViewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/FolderListPage;->mCurrentAccount:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 155
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 5
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
    .line 205
    packed-switch p1, :pswitch_data_12

    .line 210
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Asking for nonexistant loader!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 208
    :pswitch_b
    new-instance v0, Lcom/android/browser/FolderListPage$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/FolderListPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 205
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
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
    .line 178
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v5, "browser"

    const-string v6, "onItemSelected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    if-ne v5, p1, :cond_51

    .line 181
    iget-object v5, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/FolderListPage$BookmarkAccount;

    iget-wide v3, v5, Lcom/android/browser/FolderListPage$BookmarkAccount;->rootFolderId:J

    .line 182
    .local v3, root:J
    new-instance v1, Lcom/android/browser/FolderItem;

    invoke-direct {v1, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, home:Lcom/android/browser/FolderItem;
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    .local v2, r:Landroid/content/res/Resources;
    const v5, 0x7f0c01ad

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 185
    const-string v5, "browser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "root ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    long-to-int v5, v3

    invoke-virtual {v1, v5}, Lcom/android/browser/FolderItem;->setFolder(I)V

    .line 189
    new-instance v0, Lcom/android/browser/Tree;

    invoke-direct {v0, v1}, Lcom/android/browser/Tree;-><init>(Ljava/lang/Object;)V

    .line 191
    .local v0, folderTree:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<Lcom/android/browser/FolderItem;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/FolderListPage;->buildTree(Lcom/android/browser/Tree;Lcom/android/browser/FolderItem;)V

    .line 192
    iget-object v5, p0, Lcom/android/browser/FolderListPage;->mFolderAdapter:Lcom/android/browser/FolderViewAdapter;

    invoke-virtual {v5, v0}, Lcom/android/browser/FolderViewAdapter;->refreshList(Lcom/android/browser/Tree;)V

    .line 194
    .end local v0           #folderTree:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<Lcom/android/browser/FolderItem;>;"
    .end local v1           #home:Lcom/android/browser/FolderItem;
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #root:J
    :cond_51
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 8
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
    .line 217
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_4e

    .line 239
    :goto_7
    return-void

    .line 220
    :pswitch_8
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, index:I
    const/4 v0, -0x1

    .line 224
    .local v0, currentAccountPosition:I
    :goto_f
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 226
    new-instance v2, Lcom/android/browser/FolderListPage$BookmarkAccount;

    invoke-direct {v2, p0, p2}, Lcom/android/browser/FolderListPage$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 227
    .local v2, item:Lcom/android/browser/FolderListPage$BookmarkAccount;
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 228
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mCurrentAccount:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/browser/FolderListPage$BookmarkAccount;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 229
    move v0, v1

    .line 230
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 231
    goto :goto_f

    .line 232
    .end local v2           #item:Lcom/android/browser/FolderListPage$BookmarkAccount;
    :cond_33
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 233
    const/4 v3, -0x1

    if-le v0, v3, :cond_44

    .line 234
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 236
    :cond_44
    iget-object v3, p0, Lcom/android/browser/FolderListPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 217
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/FolderListPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 244
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
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
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 172
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 170
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->finish()V

    goto :goto_7

    .line 168
    nop

    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 162
    invoke-virtual {p0}, Lcom/android/browser/FolderListPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 163
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 164
    return-void
.end method
