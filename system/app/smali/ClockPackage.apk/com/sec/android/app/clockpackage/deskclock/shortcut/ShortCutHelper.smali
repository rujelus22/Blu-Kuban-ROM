.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;
.super Ljava/lang/Object;
.source "ShortCutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;
    }
.end annotation


# static fields
.field private static volatile mShortcutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrayList:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private mLastId:I

.field private mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

.field private mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

.field private mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

.field private mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 5
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    .line 68
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    .line 70
    invoke-static {}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->getInstance()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    .line 71
    return-void
.end method

.method private elseExecute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "className"

    .prologue
    .line 420
    if-eqz p1, :cond_a

    .line 421
    const-string v0, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 426
    :cond_a
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    if-nez v0, :cond_13

    .line 56
    const-class v1, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    if-nez v0, :cond_12

    .line 58
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 62
    :cond_13
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private showToastMessage(I)V
    .registers 5
    .parameter "messageType"

    .prologue
    const/4 v2, 0x0

    .line 295
    packed-switch p1, :pswitch_data_20

    .line 307
    :goto_4
    :pswitch_4
    return-void

    .line 297
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00ea

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 301
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00eb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 295
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public delShortCutDB(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 311
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->deleteShortCut(J)Z

    .line 312
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 314
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 315
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 316
    .local v1, hashMap:Ljava/util/HashMap;
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    .local v0, exId:I
    if-ne v0, p1, :cond_3b

    .line 318
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;->saveDBresult(Ljava/lang/Object;I)V

    .line 323
    .end local v0           #exId:I
    .end local v1           #hashMap:Ljava/util/HashMap;
    :cond_3a
    return-void

    .line 314
    .restart local v0       #exId:I
    .restart local v1       #hashMap:Ljava/util/HashMap;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public readShortCut()Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 383
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, arrayList:Ljava/util/ArrayList;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->fetchAllShortCut()Landroid/database/Cursor;

    move-result-object v1

    .line 390
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_24

    .line 391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 392
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 416
    :goto_23
    return-object v0

    .line 396
    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_76

    .line 399
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v2, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Comparable;>;"
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v3, "packagename"

    const-string v4, "packagename"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "shortcut_afford"

    const-string v4, "shortcut_afford"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mLastId:I

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_27

    .line 412
    .end local v2           #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Comparable;>;"
    :cond_76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 414
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    goto :goto_23
.end method

.method public resetShortCutDB()V
    .registers 5

    .prologue
    .line 327
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->deleteAll()Z

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.sec.android.app.clockpackage"

    const-string v3, "com.sec.android.app.clockpackage.alarm.Alarm"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.sec.android.app.music"

    const-string v3, "com.sec.android.app.music.MusicBrowserTabActivity"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 351
    const-string v1, "SPH-D710"

    const-string v2, "GT-N7000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "SPH-D710"

    const-string v2, "GT-I9220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "SPH-D710"

    const-string v2, "GT-N7000B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 374
    :goto_56
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, hashMap:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;->saveDBresult(Ljava/lang/Object;I)V

    .line 378
    return-void

    .line 355
    .end local v0           #hashMap:Ljava/util/HashMap;
    :cond_63
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.sec.android.app.readershub"

    const-string v3, "com.sec.android.app.readershub.ReadersHub"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const-string v3, "com.sec.android.widgetapp.q1_penmemo.MemoListActivity"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_56
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method public setShortCutHelperCallBack(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

    .line 80
    return-void
.end method

.method public setView(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getDragLayerChildView()Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    .line 88
    return-void
.end method

.method public shortCutCreateDB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->createShortCut(Ljava/lang/String;Ljava/lang/String;)J

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->fetchRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 267
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1f

    .line 268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 292
    :goto_1e
    return-void

    .line 274
    :cond_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 275
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_38

    .line 276
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mLastId:I

    .line 278
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_22

    .line 281
    :cond_38
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Comparable;>;"
    const-string v2, "_id"

    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mLastId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v2, "shortcut_afford"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;->saveDBresult(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method public shortCutExcute(I)V
    .registers 11
    .parameter "id"

    .prologue
    const/high16 v8, 0x1400

    .line 187
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    .line 188
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->fetchText(J)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1d

    .line 191
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 192
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_1c
    :goto_1c
    return-void

    .line 196
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 198
    .local v3, manager:Landroid/content/pm/PackageManager;
    const-string v5, "packagename"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, packageName:Ljava/lang/String;
    const-string v5, "shortcut_afford"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, className:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->elseExecute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutAdpater:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->close()V

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 209
    if-eqz v1, :cond_4c

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_4c
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_68

    .line 214
    :cond_55
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 215
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    if-eqz v2, :cond_1c

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1c

    .line 218
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 221
    .end local v2           #intent:Landroid/content/Intent;
    :cond_68
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 222
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    if-eqz v2, :cond_1c

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1c

    .line 228
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public shortCutHelperResult(IILandroid/content/Intent;)V
    .registers 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 114
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    if-ne p1, v12, :cond_d

    .line 115
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    .line 118
    :cond_d
    const/4 v12, 0x1

    if-ne p1, v12, :cond_12

    if-nez p3, :cond_13

    .line 171
    :cond_12
    :goto_12
    return-void

    .line 122
    :cond_13
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    if-nez v12, :cond_1f

    .line 123
    const-string v12, "mView  null"

    const-string v13, "mView null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 127
    :cond_1f
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getViewId()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_31

    .line 128
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getViewId()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->delShortCutDB(I)V

    .line 131
    :cond_31
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 132
    .local v9, manager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, packageName:Ljava/lang/String;
    const/16 v12, 0x80

    :try_start_41
    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 137
    .local v1, applicationinfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 140
    .local v0, af:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, lableName:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, className:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 147
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_68
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_a3

    .line 148
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 149
    .local v6, hashMap:Ljava/util/HashMap;
    const-string v12, "packagename"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 151
    .local v10, packName:Ljava/lang/String;
    const-string v12, "shortcut_afford"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, clsName:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    .line 154
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->showToastMessage(I)V
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_98} :catch_9a

    goto/16 :goto_12

    .line 164
    .end local v0           #af:Landroid/content/pm/ActivityInfo;
    .end local v1           #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #clsName:Ljava/lang/String;
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #hashMap:Ljava/util/HashMap;
    .end local v7           #i:I
    .end local v8           #lableName:Ljava/lang/String;
    .end local v10           #packName:Ljava/lang/String;
    :catch_9a
    move-exception v5

    .line 165
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_12

    .line 147
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #af:Landroid/content/pm/ActivityInfo;
    .restart local v1       #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #clsName:Ljava/lang/String;
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v6       #hashMap:Ljava/util/HashMap;
    .restart local v7       #i:I
    .restart local v8       #lableName:Ljava/lang/String;
    .restart local v10       #packName:Ljava/lang/String;
    :cond_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 159
    .end local v3           #clsName:Ljava/lang/String;
    .end local v6           #hashMap:Ljava/util/HashMap;
    .end local v10           #packName:Ljava/lang/String;
    :cond_a3
    :try_start_a3
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v12, v8, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {p0, v11, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->shortCutCreateDB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_ab} :catch_9a

    goto/16 :goto_12
.end method

.method public showShortcutDaialog(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 102
    .end local p1
    :goto_4
    return-void

    .line 94
    .restart local p1
    :cond_5
    check-cast p1, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortCutHelperCallBack:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;

    if-eqz v0, :cond_d

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->getApplicationInfor()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4
.end method
