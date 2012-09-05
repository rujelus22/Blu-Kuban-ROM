.class Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;
.super Ljava/lang/Object;
.source "StreamRowView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
.implements Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkyjamInfo"
.end annotation


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

.field public mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field public mHeaderLayout:Landroid/text/StaticLayout;

.field public mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field public mListenBuyLayout:Landroid/text/StaticLayout;

.field public mMarketUrl:Ljava/lang/String;

.field public mMusicUrl:Ljava/lang/String;

.field public mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

.field public mStatus:Ljava/lang/String;

.field public mSubheader1Layout:Landroid/text/StaticLayout;

.field public mSubheader2Layout:Landroid/text/StaticLayout;

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamRowView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/StreamRowView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "title"
    .parameter "artist"
    .parameter "album"
    .parameter "marketUrl"
    .parameter "thumbnailUrl"
    .parameter "musicUrl"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mTitle:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mArtist:Ljava/lang/String;

    .line 322
    iput-object p4, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAlbum:Ljava/lang/String;

    .line 323
    iput-object p5, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMarketUrl:Ljava/lang/String;

    .line 324
    iput-object p6, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 325
    iput-object p7, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getPlaybackStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mStatus:Ljava/lang/String;

    .line 327
    return-void
.end method

.method private triggerMusicApp()V
    .registers 5

    .prologue
    .line 406
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.SHARED_PLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v2, "accountType"

    const-string v3, "com.google"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 413
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "market://details?id=com.google.android.music"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 416
    :cond_4a
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method


# virtual methods
.method public goTo1UpAndAutoPlay()V
    .registers 5

    .prologue
    .line 364
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/StreamRowView;->access$300(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 367
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "auto_play_music"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public isAlbum()Z
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_8

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->triggerMarketApp()V

    .line 358
    :cond_7
    :goto_7
    return-void

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_7

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->triggerMusicApp()V

    goto :goto_7
.end method

.method public onClickableImageButtonClick(Lcom/google/android/apps/plus/views/ClickableImageButton;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-ne p1, v0, :cond_8

    .line 342
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->goTo1UpAndAutoPlay()V

    .line 346
    :cond_7
    :goto_7
    return-void

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-ne p1, v0, :cond_7

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->setPlayback(Z)V

    goto :goto_7

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setPlayback(Z)V
    .registers 6
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 379
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    if-eqz p1, :cond_3c

    const-string v0, "com.google.android.apps.plus.service.SkyjamPlaybackService.PLAY"

    :goto_11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v0, "music_account"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    const-string v0, "music_url"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v0, "song"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v0, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/StreamRowView;->access$300(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 386
    return-void

    .line 380
    :cond_3c
    const-string v0, "com.google.android.apps.plus.service.SkyjamPlaybackService.STOP"

    goto :goto_11
.end method

.method public triggerMarketApp()V
    .registers 5

    .prologue
    .line 392
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMarketUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 395
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method
