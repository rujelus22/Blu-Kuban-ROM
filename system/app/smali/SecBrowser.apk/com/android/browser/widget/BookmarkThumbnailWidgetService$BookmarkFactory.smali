.class Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/widget/BookmarkThumbnailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookmarkFactory"
.end annotation


# instance fields
.field private mBookmarks:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootFolder:J

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const-wide/16 v0, -0x1

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 167
    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    .line 172
    iput p2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    .line 173
    return-void
.end method

.method private resetBookmarks()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 345
    :cond_c
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 209
    const/4 v0, 0x0

    .line 210
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 215
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 220
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040018

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 21
    .parameter "position"

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 227
    const/4 v1, 0x0

    .line 300
    :goto_d
    return-object v1

    .line 230
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 231
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 232
    .local v17, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 233
    .local v18, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v14, 0x1

    .line 237
    .local v14, isFolder:Z
    :goto_35
    if-eqz v14, :cond_aa

    .line 238
    new-instance v1, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040019

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 245
    .local v1, views:Landroid/widget/RemoteViews;
    :goto_47
    move-object/from16 v9, v17

    .line 246
    .local v9, displayTitle:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 248
    move-object/from16 v9, v18

    .line 250
    :cond_51
    const v2, 0x7f0d001f

    invoke-virtual {v1, v2, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 251
    if-eqz v14, :cond_c5

    .line 252
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v12, v2

    if-nez v2, :cond_bb

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 254
    const v2, 0x7f0d0021

    const v3, 0x7f0200b0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 258
    :goto_73
    const v2, 0x7f0d0004

    const v3, 0x7f020042

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 259
    const v2, 0x7f0d0021

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 286
    :goto_87
    if-eqz v14, :cond_12a

    .line 287
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.browser.widget.CHANGE_FOLDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "appWidgetId"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v11

    .line 299
    .local v11, fillin:Landroid/content/Intent;
    :goto_a0
    const v2, 0x7f0d001e

    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_d

    .line 233
    .end local v1           #views:Landroid/widget/RemoteViews;
    .end local v9           #displayTitle:Ljava/lang/String;
    .end local v11           #fillin:Landroid/content/Intent;
    .end local v14           #isFolder:Z
    :cond_a8
    const/4 v14, 0x0

    goto :goto_35

    .line 241
    .restart local v14       #isFolder:Z
    :cond_aa
    new-instance v1, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040018

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v1       #views:Landroid/widget/RemoteViews;
    goto :goto_47

    .line 256
    .restart local v9       #displayTitle:Ljava/lang/String;
    :cond_bb
    const v2, 0x7f0d0021

    const v3, 0x7f0200b1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_73

    .line 262
    :cond_c5
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 264
    const/16 v16, 0x0

    .local v16, thumbnail:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 265
    .local v10, favicon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 266
    .local v8, blob:[B
    const v2, 0x7f0d0021

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 267
    if-eqz v8, :cond_115

    array-length v2, v8

    if-lez v2, :cond_115

    .line 268
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 270
    const v2, 0x7f0d0021

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 275
    :goto_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 276
    if-eqz v8, :cond_11f

    array-length v2, v8

    if-lez v2, :cond_11f

    .line 277
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 279
    const v2, 0x7f0d0004

    invoke-virtual {v1, v2, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_87

    .line 272
    :cond_115
    const v2, 0x7f0d0021

    const v3, 0x7f020019

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_f9

    .line 281
    :cond_11f
    const v2, 0x7f0d0004

    const v3, 0x7f020002

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_87

    .line 291
    .end local v8           #blob:[B
    .end local v10           #favicon:Landroid/graphics/Bitmap;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #thumbnail:Landroid/graphics/Bitmap;
    :cond_12a
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_147

    .line 292
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    .restart local v11       #fillin:Landroid/content/Intent;
    goto/16 :goto_a0

    .line 296
    .end local v11           #fillin:Landroid/content/Intent;
    :cond_147
    new-instance v11, Landroid/content/Intent;

    const-string v2, "show_browser"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11       #fillin:Landroid/content/Intent;
    goto/16 :goto_a0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method loadBookmarks()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-direct {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->resetBookmarks()V

    .line 350
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 353
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 355
    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_50

    .line 356
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 363
    .end local v6           #c:Landroid/database/Cursor;
    :cond_50
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 315
    return-void
.end method

.method public onDataSetChanged()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 329
    .local v0, token:J
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->syncState()V

    .line 330
    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_15

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    .line 332
    :cond_15
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 333
    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 334
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->saveState()V

    .line 336
    :cond_20
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->loadBookmarks()V

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 320
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 324
    return-void
.end method

.method saveState()V
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_e

    .line 198
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 200
    :cond_e
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_folder"

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "root_folder"

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    return-void
.end method

.method syncState()V
    .registers 14

    .prologue
    const-wide/16 v9, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_12

    .line 177
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 179
    :cond_12
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_folder"

    invoke-interface {v0, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 180
    .local v7, currentFolder:J
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "root_folder"

    invoke-interface {v0, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 182
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    .line 183
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "_id = ? and deleted =  ?"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const-string v0, "%s"

    new-array v1, v12, [Ljava/lang/Object;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    .line 185
    .local v4, selectionArg:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6c

    .line 187
    const-wide/16 v7, -0x1

    .line 188
    :cond_6c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    iget-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_7a

    .line 191
    invoke-direct {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->resetBookmarks()V

    .line 192
    iput-wide v7, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 194
    :cond_7a
    return-void
.end method
