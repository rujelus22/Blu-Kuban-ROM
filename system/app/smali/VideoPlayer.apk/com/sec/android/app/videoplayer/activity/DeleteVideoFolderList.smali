.class public Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;
.super Landroid/app/Activity;
.source "DeleteVideoFolderList.java"


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
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 134
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->observer:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$2;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$2;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->scannerHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$3;-><init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->scannerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->finish()V

    .line 188
    :cond_1b
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 191
    const/4 v8, 0x0

    .line 192
    .local v8, result:Z
    const/4 v6, 0x0

    .line 195
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

    .line 197
    if-eqz v6, :cond_48

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
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

    .line 205
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 207
    const/4 v6, 0x0

    .line 217
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 200
    goto :goto_48

    .line 209
    :catch_51
    move-exception v7

    .line 211
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

    .line 212
    if-eqz v6, :cond_4e

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    const/4 v6, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 32
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v0, :cond_2b

    .line 37
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onCreate()1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bucket_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 41
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 108
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 87
    const-string v1, "DeleteVideoList"

    const-string v2, "Delete : onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_22

    .line 95
    :goto_16
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 96
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->overridePendingTransition(II)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    return-void

    .line 92
    :catch_22
    move-exception v0

    .line 93
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
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 46
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    const-string v2, "DeleteVideoList"

    const-string v3, "Delete : onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 59
    .local v0, allChack:Landroid/widget/CheckBox;
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->checkDeleteList()V

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v6, :cond_74

    .line 81
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->finish()V

    .line 84
    :cond_74
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStart()V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 101
    const-string v0, "DeleteVideoList"

    const-string v1, "Delete : onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    return-void
.end method
