.class public Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;
.super Landroid/app/Activity;
.source "VideoListNoSdActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final NO_FILE_TYPE:I = 0x2

.field private static final NO_SD_CARD_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoListNoSdActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f020181

    .line 34
    const-string v4, "VideoListNoSdActivity"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, i:Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 40
    .local v3, type:I
    const v4, 0x7f030011

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->setContentView(I)V

    .line 42
    const v4, 0x7f0a0036

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, tv:Landroid/widget/TextView;
    const v4, 0x7f0a0035

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "shared"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 46
    const v4, 0x7f0800a7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :goto_44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void

    .line 49
    :cond_48
    const v4, 0x7f0800a8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_44
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, status:Ljava/lang/String;
    const-string v2, "VideoListNoSdActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume : Environment.getExternalStorageState() : status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 68
    :cond_2c
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->finish()V

    .line 72
    :cond_3b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, intent:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    return-void
.end method
