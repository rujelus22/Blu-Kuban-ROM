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

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "SharedSongsActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/SharedSongsActivity;->LOGV:Z

    .line 93
    new-instance v0, Lcom/google/android/music/SharedSongsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/SharedSongsActivity$1;-><init>(Lcom/google/android/music/SharedSongsActivity;)V

    iput-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x2

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    if-eq p1, v1, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 89
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 91
    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 314
    invoke-virtual {p0}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    .line 319
    :cond_7
    :goto_7
    return-void

    .line 315
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 316
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
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 65
    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;-><init>(Lcom/google/android/music/SharedSongsActivity;)V

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    .line 67
    const v2, 0x7f040057

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->setContentView(I)V

    .line 68
    const v2, 0x7f10003b

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 69
    const v2, 0x7f100003

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f1000eb

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    .line 71
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f1000ec

    invoke-virtual {p0, v2}, Lcom/google/android/music/SharedSongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    .line 73
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/SharedSongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, i:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_7c

    .line 78
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;

    .line 79
    iget-boolean v2, p0, Lcom/google/android/music/SharedSongsActivity;->LOGV:Z

    if-eqz v2, :cond_7c

    .line 80
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

    .line 83
    :cond_7c
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->quit()V

    .line 125
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/SharedSongsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/SharedSongsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method
