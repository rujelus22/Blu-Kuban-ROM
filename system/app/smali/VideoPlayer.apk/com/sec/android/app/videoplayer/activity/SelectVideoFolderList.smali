.class public Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;
.super Landroid/app/Activity;
.source "SelectVideoFolderList.java"


# static fields
.field private static final ALLSHARE:Ljava/lang/String; = "com.sec.android.app.dlna.ui.AddinActivity"

.field private static final BLUETOOTH:Ljava/lang/String; = "com.broadcom.bt.app.opp.OppLauncherActivity"

.field private static final EMAIL:Ljava/lang/String; = "com.android.email.activity.MessageCompose"

.field private static final GMAIL:Ljava/lang/String; = "com.google.android.gm.ComposeActivityGmail"

.field private static final MMS:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final PACK_ALLSHARE:Ljava/lang/String; = "com.sec.android.app.dlna"

.field private static final PACK_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field private static final PACK_EMAIL:Ljava/lang/String; = "com.android.email"

.field private static final PACK_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field private static final PACK_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final PACK_YOUTUBE:Ljava/lang/String; = "com.google.android.apps.uploader"

.field private static final TAG:Ljava/lang/String; = "SelectVideoList"

.field private static final YOUTUBE:Ljava/lang/String; = "com.google.android.apps.uploader.clients.youtube.YouTubeSettingsActivity"

.field public static mContext:Landroid/content/Context;


# instance fields
.field private from:Ljava/lang/String;

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
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->observer:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$3;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$3;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->scannerHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->scannerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->makeSelecedItemUri()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->checkAbleToSendMultiple(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method private checkAbleToSendMultiple(Ljava/lang/String;)Z
    .registers 9
    .parameter "className"

    .prologue
    .line 143
    const-string v4, "SelectVideoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAbleToSendMultiple - className = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 147
    .local v3, mPackageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const v4, 0x10060

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_5f

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_43

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 159
    :cond_43
    const/4 v1, 0x0

    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5f

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 161
    const/4 v4, 0x1

    .line 166
    .end local v1           #i:I
    :goto_5b
    return v4

    .line 159
    .restart local v1       #i:I
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 166
    .end local v1           #i:I
    :cond_5f
    const/4 v4, 0x0

    goto :goto_5b
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    .line 333
    :cond_1b
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 336
    const/4 v8, 0x0

    .line 337
    .local v8, result:Z
    const/4 v6, 0x0

    .line 340
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

    .line 341
    if-eqz v6, :cond_48

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
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

    .line 349
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 351
    const/4 v6, 0x0

    .line 361
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 344
    goto :goto_48

    .line 353
    :catch_51
    move-exception v7

    .line 355
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

    .line 356
    if-eqz v6, :cond_4e

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method private makeSelecedItemUri()V
    .registers 7

    .prologue
    .line 171
    const-wide/16 v2, 0x0

    .line 172
    .local v2, video_ID:J
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_36

    .line 175
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 177
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, video_uri:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, Video_URI:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 182
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
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mContext:Landroid/content/Context;

    .line 63
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v3, :cond_1c

    .line 64
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "bucket_id"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 67
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, className:Ljava/lang/String;
    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;

    .line 74
    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    .local v0, bt_done:Landroid/widget/Button;
    new-instance v3, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;-><init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 228
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->overridePendingTransition(II)V

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 214
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->overridePendingTransition(II)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v5, :cond_5f

    .line 218
    :cond_5c
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    .line 220
    :cond_5f
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStart()V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 195
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 237
    return-void
.end method
