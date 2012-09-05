.class public Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;
.super Landroid/app/Activity;
.source "DeleteVideoList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteVideoList"

.field public static mContext:Landroid/content/Context;


# instance fields
.field private final localObserver:Landroid/database/ContentObserver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final observer:Landroid/os/Handler;

.field public scannerHandler:Landroid/os/Handler;

.field public scannerRunnable:Ljava/lang/Runnable;

.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 132
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$1;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->observer:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$2;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$2;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->localObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->scannerHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$3;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->scannerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->finish()V

    .line 186
    :cond_1b
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 189
    const/4 v8, 0x0

    .line 190
    .local v8, result:Z
    const/4 v6, 0x0

    .line 193
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_48

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    const-string v0, "external"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "internal"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_47
    move v8, v10

    .line 203
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 205
    const/4 v6, 0x0

    .line 215
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 198
    goto :goto_48

    .line 207
    :catch_51
    move-exception v7

    .line 209
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "DeleteVideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaScannerScanning() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v6, :cond_4e

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v6, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v0, :cond_21

    .line 36
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onCreate()1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 40
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->setContentView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 106
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 86
    const-string v1, "DeleteVideoList"

    const-string v2, "Delete : onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_22

    .line 93
    :goto_16
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 94
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->overridePendingTransition(II)V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    return-void

    .line 90
    :catch_22
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeleteVideoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 45
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-string v2, "DeleteVideoList"

    const-string v3, "Delete : onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 58
    .local v0, allChack:Landroid/widget/CheckBox;
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->checkDeleteList()V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v6, :cond_74

    .line 80
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->finish()V

    .line 83
    :cond_74
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStart()V

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 53
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 99
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 103
    return-void
.end method
