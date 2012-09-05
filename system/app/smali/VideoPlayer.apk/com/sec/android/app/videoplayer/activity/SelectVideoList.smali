.class public Lcom/sec/android/app/videoplayer/activity/SelectVideoList;
.super Landroid/app/Activity;
.source "SelectVideoList.java"


# static fields
.field private static final ALLSHARE:Ljava/lang/String; = "com.sec.android.app.dlna.ui.AddinActivity"

.field private static final FACEBOOK:Ljava/lang/String; = "com.facebook.katana.activity.media.UploadVideoActivity"

.field private static final TAG:Ljava/lang/String; = "SelectVideoList"

.field public static mContext:Landroid/content/Context;


# instance fields
.field private final localObserver:Landroid/database/ContentObserver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final observer:Landroid/os/Handler;

.field public scannerHandler:Landroid/os/Handler;

.field public scannerRunnable:Ljava/lang/Runnable;

.field private selectedItemUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$2;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->observer:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$3;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$3;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->localObserver:Landroid/database/ContentObserver;

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->scannerHandler:Landroid/os/Handler;

    .line 281
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$4;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->scannerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->makeSelecedItemUri()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->checkAbleToSendMultiple(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method private checkAbleToSendMultiple(Ljava/lang/String;)Z
    .registers 9
    .parameter "className"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 114
    .local v3, mPackageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const v4, 0x10060

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_73

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_57

    .line 124
    const-string v5, "SelectVideoList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appList["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 126
    :cond_57
    const/4 v1, 0x0

    :goto_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 128
    const/4 v4, 0x1

    .line 133
    .end local v1           #i:I
    :goto_6f
    return v4

    .line 126
    .restart local v1       #i:I
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 133
    .end local v1           #i:I
    :cond_73
    const/4 v4, 0x0

    goto :goto_6f
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->finish()V

    .line 297
    :cond_1b
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 300
    const/4 v8, 0x0

    .line 301
    .local v8, result:Z
    const/4 v6, 0x0

    .line 304
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

    .line 305
    if-eqz v6, :cond_48

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
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

    .line 313
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 315
    const/4 v6, 0x0

    .line 325
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 308
    goto :goto_48

    .line 317
    :catch_51
    move-exception v7

    .line 319
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SelectVideoList"

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

    .line 320
    if-eqz v6, :cond_4e

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method private makeSelecedItemUri()V
    .registers 7

    .prologue
    .line 138
    const-wide/16 v2, 0x0

    .line 139
    .local v2, video_ID:J
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_36

    .line 143
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 145
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, video_uri:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, Video_URI:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 150
    .end local v0           #Video_URI:Landroid/net/Uri;
    .end local v4           #video_uri:Ljava/lang/String;
    :cond_36
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mContext:Landroid/content/Context;

    .line 50
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v4, :cond_12

    .line 51
    new-instance v4, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 54
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, className:Ljava/lang/String;
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, packageName:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;

    .line 61
    const v4, 0x7f0a0020

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, bt_done:Landroid/widget/Button;
    new-instance v4, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 212
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 197
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->overridePendingTransition(II)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 182
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->overridePendingTransition(II)V

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v5, :cond_5f

    .line 186
    :cond_5c
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->finish()V

    .line 188
    :cond_5f
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStart()V

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 163
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 206
    return-void
.end method
