.class public Lcom/google/android/music/GPlusShareActivity;
.super Landroid/app/Activity;
.source "GPlusShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mShareWorker:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

.field private mStoreId:Ljava/lang/String;

.field private mStreamingAccount:Landroid/accounts/Account;

.field private mTextView:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "GPlusShareMusic"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/GPlusShareActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/GPlusShareActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/music/GPlusShareActivity;->transitionToError()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/GPlusShareActivity;Lcom/google/android/music/SharePreviewResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/music/GPlusShareActivity;->launchShare(Lcom/google/android/music/SharePreviewResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/GPlusShareActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/GPlusShareActivity;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mStreamingAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/GPlusShareActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mStoreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/google/android/music/GPlusShareActivity;->LOGV:Z

    return v0
.end method

.method public static isSharingSupported(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, fakeIntent:Landroid/content/Intent;
    const-string v4, "https://music.google.com/music/playpreview"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    const-string v4, "authAccount"

    const-string v5, "deadbeef@non-existent-email.com"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v4, "com.google.android.apps.plus.VERSION"

    const-string v5, "1.00"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 232
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, resolutions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    return v3
.end method

.method private launchShare(Lcom/google/android/music/SharePreviewResponse;)V
    .registers 6
    .parameter "sharePreview"

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, shareIntent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/google/android/music/SharePreviewResponse;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mStreamingAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "com.google.android.apps.plus.VERSION"

    const-string v2, "1.00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "com.google.android.apps.plus.EXTERNAL_ID"

    iget-object v2, p1, Lcom/google/android/music/SharePreviewResponse;->mExternalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "com.google.android.apps.plus.FOOTER"

    const v2, 0x7f0d014f

    invoke-virtual {p0, v2}, Lcom/google/android/music/GPlusShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    sget-boolean v1, Lcom/google/android/music/GPlusShareActivity;->LOGV:Z

    if-eqz v1, :cond_66

    .line 124
    const-string v1, "GPlusShareMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_66
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/GPlusShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/music/GPlusShareActivity;->finish()V

    .line 131
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/GPlusShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "storeId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private transitionToError()V
    .registers 6

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "failure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "actionArea"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gplusShare"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const v0, 0x7f10003b

    invoke-virtual {p0, v0}, Lcom/google/android/music/GPlusShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "share"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/music/GPlusShareActivity;->finish()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 73
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 75
    iget-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mStreamingAccount:Landroid/accounts/Account;

    .line 76
    iget-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mStreamingAccount:Landroid/accounts/Account;

    if-nez v2, :cond_27

    .line 77
    const-string v2, "GPlusShareMusic"

    const-string v3, "Asked to share a song/album, but not streaming account selected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/music/GPlusShareActivity;->finish()V

    .line 94
    :goto_26
    return-void

    .line 81
    :cond_27
    const v2, 0x7f04006a

    invoke-virtual {p0, v2}, Lcom/google/android/music/GPlusShareActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/music/GPlusShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "storeId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mStoreId:Ljava/lang/String;

    .line 87
    const v2, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/google/android/music/GPlusShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mTextView:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f0d014c

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/GPlusShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v2, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    invoke-direct {v2, p0}, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;-><init>(Lcom/google/android/music/GPlusShareActivity;)V

    iput-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mShareWorker:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    .line 93
    iget-object v2, p0, Lcom/google/android/music/GPlusShareActivity;->mShareWorker:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    invoke-virtual {v2, v7}, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->sendEmptyMessage(I)Z

    goto :goto_26
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mShareWorker:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    invoke-virtual {v0}, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->quit()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/GPlusShareActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method
