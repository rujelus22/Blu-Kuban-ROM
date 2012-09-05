.class public Lcom/android/browser/BookmarkGridReorder;
.super Landroid/app/Activity;
.source "BookmarkGridReorder.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFolder:I

.field private mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCount:I

.field private mMap:Landroid/os/Bundle;

.field private onclick:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BookmarkGridReorder;->onclick:I

    .line 244
    return-void
.end method

.method private getBookmarkListItem()Z
    .registers 12

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 173
    const/4 v0, 0x0

    .line 193
    :goto_5
    return v0

    .line 175
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/BookmarkGridReorder;->getDBAll()Landroid/database/Cursor;

    move-result-object v9

    .line 176
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    .line 177
    :cond_13
    const/4 v0, 0x0

    goto :goto_5

    .line 179
    :cond_15
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mItemsBackup:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    .line 183
    :goto_26
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_80

    .line 185
    iget-object v10, p0, Lcom/android/browser/BookmarkGridReorder;->mItemsBackup:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/browser/BookmarkListItem;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/android/browser/BookmarkListItem;-><init>(JLjava/lang/String;Ljava/lang/String;[B[BJ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v10, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/browser/BookmarkListItem;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/android/browser/BookmarkListItem;-><init>(JLjava/lang/String;Ljava/lang/String;[B[BJ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_26

    .line 191
    :cond_80
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BookmarkGridReorder;->mItemsCount:I

    .line 192
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BookmarkGridReorder;->mCurrentFolder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, whereClause:Ljava/lang/String;
    const-string v5, "position ASC, _id ASC"

    .line 205
    .local v5, orderBy:Ljava/lang/String;
    :try_start_18
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v4

    const/4 v4, 0x1

    const-string v8, "title"

    aput-object v8, v2, v4

    const/4 v4, 0x2

    const-string v8, "url"

    aput-object v8, v2, v4

    const/4 v4, 0x3

    const-string v8, "favicon"

    aput-object v8, v2, v4

    const/4 v4, 0x4

    const-string v8, "thumbnail"

    aput-object v8, v2, v4

    const/4 v4, 0x5

    const-string v8, "folder"

    aput-object v8, v2, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_43} :catch_45

    move-result-object v6

    .line 214
    :goto_44
    return-object v6

    .line 209
    :catch_45
    move-exception v7

    .line 212
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_44
.end method

.method private initList()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkGridReorder;->setContentView(I)V

    .line 154
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkGridReorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    .line 155
    invoke-direct {p0}, Lcom/android/browser/BookmarkGridReorder;->getBookmarkListItem()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    .line 167
    :goto_1a
    return v0

    .line 157
    :cond_1b
    new-instance v0, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040009

    iget-object v5, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;-><init>(Lcom/android/browser/BookmarkGridReorder;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mAdapter:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

    .line 158
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v3, p0, Lcom/android/browser/BookmarkGridReorder;->mAdapter:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v3, p0, Lcom/android/browser/BookmarkGridReorder;->mAdapter:Lcom/android/browser/BookmarkGridReorder$ReOrderListAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 164
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setCacheColorHint(I)V

    .line 165
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndMode(Z)V

    move v0, v2

    .line 167
    goto :goto_1a
.end method

.method private updatePosition()Z
    .registers 9

    .prologue
    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/android/browser/BookmarkGridReorder;->mItemsCount:I

    if-ge v0, v4, :cond_45

    .line 228
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v2, position:Landroid/content/ContentValues;
    const-string v4, "position"

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget-object v4, p0, Lcom/android/browser/BookmarkGridReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/browser/BookmarkListItem;

    invoke-virtual {v4}, Lcom/android/browser/BookmarkListItem;->getId()J

    move-result-wide v4

    long-to-int v1, v4

    .line 231
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_3f} :catch_42

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v1           #id:I
    .end local v2           #position:Landroid/content/ContentValues;
    :catch_42
    move-exception v3

    .line 237
    .local v3, se:Landroid/database/sqlite/SQLiteFullException;
    const/4 v4, 0x0

    .line 239
    .end local v3           #se:Landroid/database/sqlite/SQLiteFullException;
    :goto_44
    return v4

    :cond_45
    const/4 v4, 0x1

    goto :goto_44
.end method


# virtual methods
.method public OnDragAndDropStart()V
    .registers 6

    .prologue
    .line 364
    iget-object v4, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, dragView:Landroid/view/View;
    if-eqz v2, :cond_21

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 371
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 373
    .local v1, cache:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1e

    .line 375
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 376
    .local v3, item:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/browser/BookmarkGridReorder;->mGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    .end local v3           #item:Landroid/graphics/Bitmap;
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 383
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #cache:Landroid/graphics/Bitmap;
    :cond_21
    return-void
.end method

.method public OnDragAndDropStop()V
    .registers 1

    .prologue
    .line 402
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkGridReorder;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->finish()V

    .line 129
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BookmarkGridReorder;->mMap:Landroid/os/Bundle;

    .line 83
    iget-object v1, p0, Lcom/android/browser/BookmarkGridReorder;->mMap:Landroid/os/Bundle;

    const-string v2, "folder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkGridReorder;->mCurrentFolder:I

    .line 84
    invoke-direct {p0}, Lcom/android/browser/BookmarkGridReorder;->initList()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, result:Landroid/content/Intent;
    const-string v1, "unable_to_reorder_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BookmarkGridReorder;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->finish()V

    .line 92
    .end local v0           #result:Landroid/content/Intent;
    :cond_2f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 120
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 146
    :goto_7
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkGridReorder;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->finish()V

    .line 148
    const/4 v0, 0x1

    return v0

    .line 142
    :pswitch_10
    invoke-direct {p0}, Lcom/android/browser/BookmarkGridReorder;->updatePosition()Z

    goto :goto_7

    .line 139
    :pswitch_data_14
    .packed-switch 0x7f0d0106
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/browser/BookmarkGridReorder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 99
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    return-void
.end method
