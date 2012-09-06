.class public Lcom/google/android/music/SharedSongsActivity;
.super Landroid/app/Activity;
.source "SharedSongsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

.field private mButton:Landroid/widget/Button;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "SharedSongsActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/SharedSongsActivity;->LOGV:Z

    .line 99
    new-instance v0, Lcom/google/android/music/SharedSongsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/SharedSongsActivity$1;-><init>(Lcom/google/android/music/SharedSongsActivity;)V

    iput-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/MusicEventLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "sharedSongs"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    if-eq p1, v1, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 97
    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 341
    invoke-virtual {p0}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    .line 346
    :cond_7
    :goto_7
    return-void

    .line 342
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/SharedSongsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 70
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 71
    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;-><init>(Lcom/google/android/music/SharedSongsActivity;)V

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    .line 73
    const v2, 0x7f04006a

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->setContentView(I)V

    .line 74
    const v2, 0x7f10003b

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 75
    const v2, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f100119

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    .line 77
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v2, 0x7f10011a

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/SharedSongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, i:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_82

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;

    .line 85
    iget-boolean v2, p0, Lcom/google/android/music/SharedSongsActivity;->LOGV:Z

    if-eqz v2, :cond_82

    .line 86
    const-string v2, "SharedSongsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_82
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 134
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->quit()V

    .line 136
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/SharedSongsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/SharedSongsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 122
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/SharedSongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method
