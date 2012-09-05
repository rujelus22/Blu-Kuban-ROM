.class public Lcom/android/browser/BookmarkMoveToFolder;
.super Landroid/app/Activity;
.source "BookmarkMoveToFolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# static fields
.field static selectAll:Landroid/widget/CheckBox;


# instance fields
.field private mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

.field private mParent:I

.field mSavedListArray:[J

.field private mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    new-instance v0, Lcom/android/browser/BookmarkMoveToFolder$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkMoveToFolder$1;-><init>(Lcom/android/browser/BookmarkMoveToFolder;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BookmarkMoveToFolder;)Lcom/android/browser/BrowserBookmarksPage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    return-object v0
.end method


# virtual methods
.method UpdateBookmarkDB([J)V
    .registers 19
    .parameter "mSavedListArray"

    .prologue
    .line 196
    move-object/from16 v0, p1

    array-length v7, v0

    .line 197
    .local v7, count:I
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/BookmarkMoveToFolder;->mParent:I

    int-to-long v13, v1

    .line 200
    .local v13, parent:J
    const/16 v1, 0xe

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "insert_after"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "deleted"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "sourceid"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "version"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "created"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "modified"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "dirty"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "sync1"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "sync2"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "sync3"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "sync4"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "sync5"

    aput-object v2, v3, v1

    .line 216
    .local v3, PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 217
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/BookmarkMoveToFolder;->mParent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, whereClause:Ljava/lang/String;
    :try_start_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BookmarkMoveToFolder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_80} :catch_1a9

    move-result-object v8

    .line 228
    :goto_81
    const-string v1, "parent"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/BookmarkMoveToFolder;->mParent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    if-eqz v8, :cond_15e

    .line 234
    :try_start_92
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    const-string v1, "insert_after"

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "account_name"

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "account_type"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "sourceid"

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "version"

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "created"

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v1, "modified"

    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v1, "dirty"

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "sync1"

    const/16 v2, 0x9

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "sync2"

    const/16 v2, 0xa

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "sync3"

    const/16 v2, 0xb

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "sync4"

    const/16 v2, 0xc

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "sync5"

    const/16 v2, 0xd

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_15e} :catch_1b3

    .line 259
    :cond_15e
    :goto_15e
    const/4 v10, 0x0

    .local v10, i:I
    :goto_15f
    if-ge v10, v7, :cond_1bc

    .line 261
    aget-wide v11, p1, v10

    .line 262
    .local v11, id:J
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 264
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BookmarkMoveToFolder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    const-string v1, "BookmarkMoveToFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateBookmarkDB :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v5, p1, v10

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " => moved to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/BookmarkMoveToFolder;->mParent:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    add-int/lit8 v10, v10, 0x1

    goto :goto_15f

    .line 223
    .end local v10           #i:I
    .end local v11           #id:J
    .end local v15           #uri:Landroid/net/Uri;
    :catch_1a9
    move-exception v9

    .line 225
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "BookmarkMoveToFolder"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    .line 253
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1b3
    move-exception v9

    .line 255
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "BookmarkMoveToFolder"

    const-string v2, "CursorIndexOutOfBoundsException is occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 267
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #i:I
    :cond_1bc
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 180
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1f

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1f

    .line 183
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 187
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkMoveToFolder;->mParent:I

    .line 188
    iget-object v1, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSavedListArray:[J

    invoke-virtual {p0, v1}, Lcom/android/browser/BookmarkMoveToFolder;->UpdateBookmarkDB([J)V

    .line 189
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    .line 192
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1f
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 4
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 94
    if-eqz p2, :cond_4

    .line 95
    const/4 v0, 0x0

    .line 97
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
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 114
    :goto_7
    return-void

    .line 111
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    goto :goto_7

    .line 109
    :pswitch_data_c
    .packed-switch 0x7f0d0052
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v2, 0x7f0c01a8

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkMoveToFolder;->setTitle(I)V

    .line 63
    const v2, 0x7f04004c

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkMoveToFolder;->setContentView(I)V

    .line 64
    const v2, 0x7f0d00ed

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkMoveToFolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sput-object v2, Lcom/android/browser/BookmarkMoveToFolder;->selectAll:Landroid/widget/CheckBox;

    .line 65
    sget-object v2, Lcom/android/browser/BookmarkMoveToFolder;->selectAll:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSelectAllListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksPage;

    iput-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 70
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewMode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    .local v1, viewMode:I
    const-string v2, "BookmarkMoveToFolder"

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

    .line 72
    iget-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserBookmarksPage;->setCurrentViewMode(I)V

    .line 74
    iget-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const v3, 0x7f0d0105

    iput v3, v2, Lcom/android/browser/BrowserBookmarksPage;->mMenuState:I

    .line 75
    iget-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2, p0}, Lcom/android/browser/BrowserBookmarksPage;->setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSavedListArray:[J

    .line 79
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkMoveToFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_80

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_80
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 153
    :goto_b
    return v0

    .line 122
    :sswitch_c
    iget-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->CheckedItemsList()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSavedListArray:[J

    .line 123
    iget-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mSavedListArray:[J

    if-nez v0, :cond_1d

    .line 125
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    .line 153
    :goto_1b
    const/4 v0, 0x1

    goto :goto_b

    .line 129
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/BookmarkMoveToFolder;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedItemExist()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 130
    const-string v0, "BookmarkMoveToFolder"

    const-string v1, "onOptionsItemSelected: mBookmarks.isCheckedItemExist() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/FolderListPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BookmarkMoveToFolder;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b

    .line 134
    :cond_39
    const-string v0, "BookmarkMoveToFolder"

    const-string v1, "onOptionsItemSelected: mBookmarks.isCheckedItemExist() is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    goto :goto_1b

    .line 143
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    goto :goto_1b

    .line 147
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->finish()V

    goto :goto_1b

    .line 119
    :sswitch_data_4c
    .sparse-switch
        0x102002c -> :sswitch_44
        0x7f0d0052 -> :sswitch_48
        0x7f0d0106 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 88
    invoke-virtual {p0}, Lcom/android/browser/BookmarkMoveToFolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    return-void
.end method
