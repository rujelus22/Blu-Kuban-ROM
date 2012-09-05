.class public Lcom/android/browser/BookmarkReorder;
.super Landroid/app/Activity;
.source "BookmarkReorder.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/BookmarkReorder$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFolder:I

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

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

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

    iput v0, p0, Lcom/android/browser/BookmarkReorder;->onclick:I

    .line 261
    return-void
.end method

.method private getBookmarkListItem()Z
    .registers 12

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 188
    const/4 v0, 0x0

    .line 210
    :goto_5
    return v0

    .line 190
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->getDBAll()Landroid/database/Cursor;

    move-result-object v9

    .line 191
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    .line 192
    :cond_13
    const/4 v0, 0x0

    goto :goto_5

    .line 194
    :cond_15
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItemsBackup:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    .line 198
    :goto_26
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_80

    .line 200
    iget-object v10, p0, Lcom/android/browser/BookmarkReorder;->mItemsBackup:Ljava/util/ArrayList;

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

    .line 202
    iget-object v10, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

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

    .line 204
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_26

    .line 208
    :cond_80
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BookmarkReorder;->mItemsCount:I

    .line 209
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BookmarkReorder;->mCurrentFolder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, whereClause:Ljava/lang/String;
    const-string v5, "position ASC, _id ASC"

    .line 221
    .local v5, orderBy:Ljava/lang/String;
    :try_start_18
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 229
    :goto_44
    return-object v6

    .line 225
    :catch_45
    move-exception v7

    .line 227
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_44
.end method

.method private initList()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->setContentView(I)V

    .line 169
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 170
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->getBookmarkListItem()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    .line 182
    :goto_1a
    return v0

    .line 172
    :cond_1b
    new-instance v0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000b

    iget-object v5, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;-><init>(Lcom/android/browser/BookmarkReorder;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    .line 173
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v3, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v3, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 178
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v3, 0x7f020015

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 179
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    .line 180
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    move v0, v2

    .line 182
    goto :goto_1a
.end method

.method private updatePosition()Z
    .registers 9

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/android/browser/BookmarkReorder;->mItemsCount:I

    if-ge v0, v4, :cond_45

    .line 246
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v2, position:Landroid/content/ContentValues;
    const-string v4, "position"

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/browser/BookmarkListItem;

    invoke-virtual {v4}, Lcom/android/browser/BookmarkListItem;->getId()J

    move-result-wide v4

    long-to-int v1, v4

    .line 249
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v1           #id:I
    .end local v2           #position:Landroid/content/ContentValues;
    :catch_42
    move-exception v3

    .line 255
    .local v3, se:Landroid/database/sqlite/SQLiteFullException;
    const/4 v4, 0x0

    .line 257
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
    .line 406
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 407
    .local v2, dragView:Landroid/view/View;
    if-eqz v2, :cond_21

    .line 410
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 413
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 415
    .local v1, cache:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1e

    .line 417
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 418
    .local v3, item:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    .end local v3           #item:Landroid/graphics/Bitmap;
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 425
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #cache:Landroid/graphics/Bitmap;
    :cond_21
    return-void
.end method

.method public OnDragAndDropStop()V
    .registers 1

    .prologue
    .line 444
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->finish()V

    .line 142
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 118
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->getBookmarkListItem()Z

    .line 119
    new-instance v0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    iget-object v3, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;-><init>(Lcom/android/browser/BookmarkReorder;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    .line 120
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 125
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 126
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    .line 127
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BookmarkReorder;->mMap:Landroid/os/Bundle;

    .line 84
    iget-object v1, p0, Lcom/android/browser/BookmarkReorder;->mMap:Landroid/os/Bundle;

    const-string v2, "folder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkReorder;->mCurrentFolder:I

    .line 85
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->initList()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, result:Landroid/content/Intent;
    const-string v1, "unable_to_reorder_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BookmarkReorder;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->finish()V

    .line 94
    .end local v0           #result:Landroid/content/Intent;
    :cond_2f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 133
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
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 159
    :goto_7
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->finish()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_10
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->updatePosition()Z

    goto :goto_7

    .line 152
    :pswitch_data_14
    .packed-switch 0x7f0d0106
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    return-void
.end method
