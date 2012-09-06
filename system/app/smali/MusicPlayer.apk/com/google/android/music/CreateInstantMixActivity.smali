.class public Lcom/google/android/music/CreateInstantMixActivity;
.super Landroid/app/Activity;
.source "CreateInstantMixActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/CreateInstantMixActivity$1;,
        Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;
    }
.end annotation


# instance fields
.field private mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLoadingProgressBar:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mText:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/MusicEventLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static createInstantPlaylistOnTrack(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/CreateInstantMixActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v1, "songId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "createInstantMix"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 372
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 85
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f100042

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f10000d

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    .line 89
    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;

    .line 91
    iput-object p0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 94
    new-instance v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-direct {v0, p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;-><init>(Lcom/google/android/music/CreateInstantMixActivity;)V

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    .line 96
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 100
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->quit()V

    .line 118
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method
