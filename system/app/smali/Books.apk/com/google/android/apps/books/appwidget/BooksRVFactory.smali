.class Lcom/google/android/apps/books/appwidget/BooksRVFactory;
.super Ljava/lang/Object;
.source "BooksAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mAppContext:Landroid/content/Context;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCollectionObserver:Landroid/database/ContentObserver;

.field private mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResolver:Landroid/content/ContentResolver;

.field private mVolumeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;-><init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;-><init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Landroid/appwidget/AppWidgetManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadAccountFromPreferences()V

    return-void
.end method

.method private forceEmptyToLoading()V
    .registers 5

    .prologue
    const v3, 0x7f0f0021

    .line 165
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030008

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 167
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0f0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 168
    const v1, 0x7f0f0022

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 171
    return-void
.end method

.method private forceEmptyToStatic(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "message"

    .prologue
    const v3, 0x7f0f0022

    .line 174
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030008

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0f0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 177
    const v1, 0x1020014

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0f0021

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 181
    return-void
.end method

.method private getAppWidgetIds()[I
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method private getViewAtInternal(I)Landroid/widget/RemoteViews;
    .registers 24
    .parameter "position"

    .prologue
    .line 292
    const-string v2, "BooksAppWidget"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 293
    const-string v2, "BooksAppWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getViewAtInternal() at position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_3a

    .line 299
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v18

    .line 372
    :goto_39
    return-object v18

    .line 302
    :cond_3a
    const/4 v15, 0x0

    .line 303
    .local v15, inStream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 304
    .local v21, volumeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 305
    .local v3, volumeUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 307
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6d

    .line 308
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v18

    goto :goto_39

    .line 314
    :cond_6d
    :try_start_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 315
    .local v20, volumeCoverUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    const/16 v5, 0x96

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 321
    :cond_91
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 323
    .local v11, coverState:I
    const/4 v2, 0x3

    if-eq v11, v2, :cond_a9

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_9f
    .catchall {:try_start_6d .. :try_end_9f} :catchall_16b
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_9f} :catch_122
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_9f} :catch_149

    move-result-object v18

    .line 361
    if-eqz v15, :cond_a5

    .line 362
    :try_start_a2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_175

    .line 367
    :cond_a5
    :goto_a5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 328
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 329
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 332
    .local v10, coverBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, viewability:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 334
    .local v17, openAccess:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, buyUrl:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v8

    .line 336
    .local v8, access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 339
    .local v16, isSample:Z
    new-instance v18, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f030006

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 341
    .local v18, rv:Landroid/widget/RemoteViews;
    const v4, 0x7f0f001f

    if-eqz v16, :cond_11f

    const/4 v2, 0x0

    :goto_ec
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 343
    const v2, 0x7f0f001e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 345
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v14, fillInIntent:Landroid/content/Intent;
    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 347
    const-string v2, "books:internalIntent"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const v2, 0x4004000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const v2, 0x7f0f001d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_115
    .catchall {:try_start_a9 .. :try_end_115} :catchall_16b
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_115} :catch_122
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_115} :catch_149

    .line 361
    if-eqz v15, :cond_11a

    .line 362
    :try_start_117
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_178

    .line 367
    :cond_11a
    :goto_11a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_39

    .line 341
    .end local v14           #fillInIntent:Landroid/content/Intent;
    :cond_11f
    const/16 v2, 0x8

    goto :goto_ec

    .line 355
    .end local v8           #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v9           #buyUrl:Ljava/lang/String;
    .end local v10           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v11           #coverState:I
    .end local v16           #isSample:Z
    .end local v17           #openAccess:Ljava/lang/String;
    .end local v18           #rv:Landroid/widget/RemoteViews;
    .end local v19           #viewability:Ljava/lang/String;
    .end local v20           #volumeCoverUri:Landroid/net/Uri;
    :catch_122
    move-exception v13

    .line 356
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_123
    const-string v2, "BooksAppWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem finding cover: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_123 .. :try_end_13b} :catchall_16b

    .line 361
    if-eqz v15, :cond_140

    .line 362
    :try_start_13d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_17a

    .line 367
    :cond_140
    :goto_140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 372
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :goto_143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v18

    goto/16 :goto_39

    .line 357
    :catch_149
    move-exception v13

    .line 358
    .local v13, e:Ljava/io/IOException;
    :try_start_14a
    const-string v2, "BooksAppWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem reading cover: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catchall {:try_start_14a .. :try_end_162} :catchall_16b

    .line 361
    if-eqz v15, :cond_167

    .line 362
    :try_start_164
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_17c

    .line 367
    :cond_167
    :goto_167
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_143

    .line 360
    .end local v13           #e:Ljava/io/IOException;
    :catchall_16b
    move-exception v2

    .line 361
    if-eqz v15, :cond_171

    .line 362
    :try_start_16e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_17e

    .line 367
    :cond_171
    :goto_171
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 364
    .restart local v11       #coverState:I
    .restart local v20       #volumeCoverUri:Landroid/net/Uri;
    :catch_175
    move-exception v2

    goto/16 :goto_a5

    .restart local v8       #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v9       #buyUrl:Ljava/lang/String;
    .restart local v10       #coverBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #fillInIntent:Landroid/content/Intent;
    .restart local v16       #isSample:Z
    .restart local v17       #openAccess:Ljava/lang/String;
    .restart local v18       #rv:Landroid/widget/RemoteViews;
    .restart local v19       #viewability:Ljava/lang/String;
    :catch_178
    move-exception v2

    goto :goto_11a

    .end local v8           #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v9           #buyUrl:Ljava/lang/String;
    .end local v10           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v11           #coverState:I
    .end local v14           #fillInIntent:Landroid/content/Intent;
    .end local v16           #isSample:Z
    .end local v17           #openAccess:Ljava/lang/String;
    .end local v18           #rv:Landroid/widget/RemoteViews;
    .end local v19           #viewability:Ljava/lang/String;
    .end local v20           #volumeCoverUri:Landroid/net/Uri;
    .local v13, e:Ljava/io/FileNotFoundException;
    :catch_17a
    move-exception v2

    goto :goto_140

    .local v13, e:Ljava/io/IOException;
    :catch_17c
    move-exception v2

    goto :goto_167

    .end local v13           #e:Ljava/io/IOException;
    :catch_17e
    move-exception v4

    goto :goto_171
.end method

.method private loadAccountFromPreferences()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    .line 189
    .local v2, originalAccount:Landroid/accounts/Account;
    new-instance v6, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v7, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    .line 192
    iget-object v6, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    iget-object v6, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    move v0, v4

    .line 195
    .local v0, accountChanged:Z
    :goto_21
    iget-object v6, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_61

    move v3, v4

    .line 196
    .local v3, validAccount:Z
    :goto_26
    if-eqz v0, :cond_5e

    if-eqz v3, :cond_5e

    .line 197
    const-string v5, "BooksAppWidget"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 198
    const-string v5, "BooksAppWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAccountFromPreferences() found new account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_4d
    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v6, 0x7

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, bookCollectionUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    .end local v1           #bookCollectionUri:Landroid/net/Uri;
    :cond_5e
    return-void

    .end local v0           #accountChanged:Z
    .end local v3           #validAccount:Z
    :cond_5f
    move v0, v5

    .line 194
    goto :goto_21

    .restart local v0       #accountChanged:Z
    :cond_61
    move v3, v5

    .line 195
    goto :goto_26
.end method

.method private loadVolumeList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, token:J
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeListInternal()Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    .line 215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private loadVolumeListInternal()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 220
    const-string v0, "BooksAppWidget"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 221
    const-string v0, "BooksAppWidget"

    const-string v4, "loadVolumeListInternal()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v9, 0x7

    invoke-static {v0, v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 225
    .local v1, volumesUri:Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v11

    .line 229
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "CASE WHEN %s IS NULL THEN %d ELSE %s END DESC"

    new-array v4, v13, [Ljava/lang/Object;

    const-string v9, "last_access"

    aput-object v9, v4, v11

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v12

    const/4 v9, 0x2

    const-string v10, "last_access"

    aput-object v10, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, sortingOrder:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 235
    .local v8, volumeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    :goto_4a
    :try_start_4a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_66

    .line 238
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, volumeId:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_61

    goto :goto_4a

    .line 242
    .end local v7           #volumeId:Ljava/lang/String;
    :catchall_61
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    return-object v8
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 250
    const-string v0, "BooksAppWidget"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 251
    const-string v0, "BooksAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount() found size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 273
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0f001e

    const v2, 0x7f020070

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 276
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "position"

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    .local v0, token:J
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getViewAtInternal(I)Landroid/widget/RemoteViews;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    .line 287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadAccountFromPreferences()V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_17

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualSync(Landroid/accounts/Account;)V

    .line 125
    :cond_17
    return-void
.end method

.method public onDataSetChanged()V
    .registers 3

    .prologue
    .line 138
    const-string v0, "BooksAppWidget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 139
    const-string v0, "BooksAppWidget"

    const-string v1, "onDataSetChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_32

    .line 144
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToLoading()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToStatic(Ljava/lang/CharSequence;)V

    .line 157
    :cond_31
    :goto_31
    return-void

    .line 154
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToStatic(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    return-void
.end method
