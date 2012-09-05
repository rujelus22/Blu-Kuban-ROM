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

.method static synthetic access$500(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/Button;
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
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/CreateInstantMixActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    const-string v1, "songId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 348
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    .line 85
    const v0, 0x7f100003

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;

    .line 87
    iput-object p0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 90
    new-instance v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-direct {v0, p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;-><init>(Lcom/google/android/music/CreateInstantMixActivity;)V

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    .line 92
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 96
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->quit()V

    .line 104
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 105
    return-void
.end method
