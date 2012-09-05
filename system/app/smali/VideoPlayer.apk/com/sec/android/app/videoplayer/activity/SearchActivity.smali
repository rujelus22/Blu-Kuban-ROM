.class public Lcom/sec/android/app/videoplayer/activity/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field public static searchString:Ljava/lang/String;


# instance fields
.field private final localObserver:Landroid/database/ContentObserver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private nextSearch:Z

.field private final observer:Landroid/os/Handler;

.field public scannerHandler:Landroid/os/Handler;

.field public scannerRunnable:Ljava/lang/Runnable;

.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->searchString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    .line 178
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;-><init>(Lcom/sec/android/app/videoplayer/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->observer:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$2;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/SearchActivity$2;-><init>(Lcom/sec/android/app/videoplayer/activity/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->localObserver:Landroid/database/ContentObserver;

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->scannerHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity$3;-><init>(Lcom/sec/android/app/videoplayer/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->scannerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/SearchActivity;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->finish()V

    .line 237
    :cond_1b
    return-void
.end method

.method private doSearchQuery(Landroid/content/Intent;)V
    .registers 3
    .parameter "queryIntent"

    .prologue
    .line 86
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->searchString:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 240
    const/4 v8, 0x0

    .line 241
    .local v8, result:Z
    const/4 v6, 0x0

    .line 244
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

    .line 245
    if-eqz v6, :cond_48

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
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

    .line 253
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 255
    const/4 v6, 0x0

    .line 265
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 248
    goto :goto_48

    .line 257
    :catch_51
    move-exception v7

    .line 259
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SearchActivity"

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

    .line 260
    if-eqz v6, :cond_4e

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    const/4 v6, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_b

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    .line 94
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 101
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x7f08007f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string v2, "SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v1, movieIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->finish()V

    .line 65
    .end local v1           #movieIntent:Landroid/content/Intent;
    :cond_4d
    :goto_4d
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->setContentView(Landroid/view/View;)V

    .line 68
    return-void

    .line 61
    :cond_60
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 62
    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->doSearchQuery(Landroid/content/Intent;)V

    goto :goto_4d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 154
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "newIntent"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, movieIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->finish()V

    .line 83
    .end local v1           #movieIntent:Landroid/content/Intent;
    :cond_43
    :goto_43
    return-void

    .line 80
    :cond_44
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 81
    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->doSearchQuery(Landroid/content/Intent;)V

    goto :goto_43
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 137
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->overridePendingTransition(II)V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 106
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStart()V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 112
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->nextSearch:Z

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->finish()V

    .line 150
    :cond_13
    return-void
.end method
