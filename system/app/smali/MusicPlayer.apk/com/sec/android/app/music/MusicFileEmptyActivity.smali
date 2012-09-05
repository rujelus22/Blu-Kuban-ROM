.class public Lcom/sec/android/app/music/MusicFileEmptyActivity;
.super Landroid/app/Activity;
.source "MusicFileEmptyActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mReceive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z

    .line 22
    const-string v0, "MpListFileEmptyActivity"

    iput-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;-><init>(Lcom/sec/android/app/music/MusicFileEmptyActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/MusicFileEmptyActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/music/MusicFileEmptyActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, text:Landroid/widget/TextView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 33
    const v2, 0x7f09013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    :goto_29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->setVolumeControlStream(I)V

    .line 48
    return-void

    .line 35
    .end local v0           #intentMediaStateFilter:Landroid/content/IntentFilter;
    :cond_45
    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_29
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : String status = Environment.getExternalStorageState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 68
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->finish()V

    .line 74
    :cond_3c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method
