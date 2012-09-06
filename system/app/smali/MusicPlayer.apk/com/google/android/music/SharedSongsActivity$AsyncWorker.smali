.class Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
.super Lcom/google/android/music/Worker;
.source "SharedSongsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/SharedSongsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/SharedSongsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/SharedSongsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    .line 148
    const-class v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->checkAccountsMatch()V

    return-void
.end method

.method private checkAccountsMatch()V
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 298
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 299
    if-nez v0, :cond_41

    .line 300
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    const-string v1, "failure"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "activeScreen"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v3}, Lcom/google/android/music/SharedSongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "failureMsg"

    aput-object v3, v2, v7

    const-string v3, "no account selected"

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const-class v2, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1, v0, v7}, Lcom/google/android/music/SharedSongsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    :goto_40
    return-void

    .line 308
    :cond_41
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    if-nez v1, :cond_7d

    .line 310
    const-string v0, "SharedSongsActivity"

    const-string v1, "G+ did not provide account extra"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    const-string v1, "wtf"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "activeScreen"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v3}, Lcom/google/android/music/SharedSongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "failureMsg"

    aput-object v3, v2, v7

    const-string v3, "G+ did not provide extra: authAccount"

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v0}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    goto :goto_40

    .line 318
    :cond_7d
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 319
    if-nez v2, :cond_ed

    .line 320
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v2}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    const-string v3, "failure"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "activeScreen"

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v5}, Lcom/google/android/music/SharedSongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "failureMsg"

    aput-object v5, v4, v7

    const-string v5, "G+/music accounts mismatch"

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const v4, 0x7f0d0175

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/SharedSongsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$800(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d0176

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$800(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_40

    .line 330
    :cond_ed
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$800(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 334
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$000(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_40
.end method

.method private processGetShared()V
    .registers 19

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v13}, Lcom/google/android/music/SharedSongsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 203
    .local v2, appContext:Landroid/content/Context;
    const/4 v6, 0x0

    .line 205
    .local v6, response:Lcom/google/android/music/sharedpreview/JsonResponse;
    new-instance v3, Lcom/google/android/music/sharedpreview/SharedPreviewClient;

    const/4 v13, 0x0

    invoke-direct {v3, v2, v13}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;-><init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V

    .line 207
    .local v3, client:Lcom/google/android/music/sharedpreview/SharedPreviewClient;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getMetaDataResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/JsonResponse;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_62

    move-result-object v6

    .line 209
    invoke-virtual {v3}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    .line 212
    if-nez v6, :cond_67

    .line 213
    const-string v13, "SharedSongsActivity"

    const-string v14, "Failed to retrieve shared content."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v13}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v13

    const-string v14, "failure"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "activeScreen"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/SharedSongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "failureMsg"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "invalid json response"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 295
    :goto_61
    return-void

    .line 209
    :catchall_62
    move-exception v13

    invoke-virtual {v3}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    throw v13

    .line 220
    :cond_67
    const/4 v5, 0x0

    .line 221
    .local v5, list:Lcom/google/android/music/medialist/SongList;
    instance-of v13, v6, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    if-eqz v13, :cond_fb

    move-object v1, v6

    .line 222
    check-cast v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    .line 224
    .local v1, albumResponse:Lcom/google/android/music/sharedpreview/SharedAlbumResponse;
    new-instance v10, Lcom/google/android/music/medialist/SongDataList;

    invoke-direct {v10}, Lcom/google/android/music/medialist/SongDataList;-><init>()V

    .line 225
    .local v10, songs:Lcom/google/android/music/medialist/SongDataList;
    iget-object v13, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mTracks:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/sharedpreview/Track;

    .line 226
    .local v11, track:Lcom/google/android/music/sharedpreview/Track;
    new-instance v7, Lcom/google/android/music/medialist/SongData;

    invoke-direct {v7}, Lcom/google/android/music/medialist/SongData;-><init>()V

    .line 228
    .local v7, song:Lcom/google/android/music/medialist/SongData;
    iget-object v13, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtist:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    .line 229
    iget-object v13, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtist:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    .line 230
    iget-object v13, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumTitle:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    .line 232
    iget-object v13, v11, Lcom/google/android/music/sharedpreview/Track;->mTitle:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    .line 233
    iget v13, v11, Lcom/google/android/music/sharedpreview/Track;->mDurationMsecs:I

    int-to-long v13, v13

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mDuration:J

    .line 236
    const-wide/16 v13, 0x0

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    .line 237
    const-wide/16 v13, 0x0

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    .line 238
    const-string v13, ""

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    .line 239
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    .line 240
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    .line 241
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mRating:I

    .line 243
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v12, urlBuilder:Ljava/lang/StringBuilder;
    const-string v13, "&mode=streaming"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v13, "&tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v13, v11, Lcom/google/android/music/sharedpreview/Track;->mId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mDomainParam:Ljava/lang/String;

    .line 249
    iget-object v13, v10, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 251
    .end local v7           #song:Lcom/google/android/music/medialist/SongData;
    .end local v11           #track:Lcom/google/android/music/sharedpreview/Track;
    .end local v12           #urlBuilder:Ljava/lang/StringBuilder;
    :cond_e1
    new-instance v5, Lcom/google/android/music/medialist/SharedAlbumSongList;

    .end local v5           #list:Lcom/google/android/music/medialist/SongList;
    iget-object v13, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtUrl:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mStoreUrl:Ljava/lang/String;

    invoke-direct {v5, v13, v14, v10}, Lcom/google/android/music/medialist/SharedAlbumSongList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongDataList;)V

    .line 283
    .end local v1           #albumResponse:Lcom/google/android/music/sharedpreview/SharedAlbumResponse;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v10           #songs:Lcom/google/android/music/medialist/SongDataList;
    .restart local v5       #list:Lcom/google/android/music/medialist/SongList;
    :goto_ea
    move-object v8, v5

    .line 285
    .local v8, songList:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v14, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;Lcom/google/android/music/medialist/SongList;)V

    invoke-virtual {v13, v14}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_61

    .line 253
    .end local v8           #songList:Lcom/google/android/music/medialist/SongList;
    :cond_fb
    instance-of v13, v6, Lcom/google/android/music/sharedpreview/SharedSongResponse;

    if-eqz v13, :cond_157

    move-object v9, v6

    .line 254
    check-cast v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;

    .line 255
    .local v9, songResponse:Lcom/google/android/music/sharedpreview/SharedSongResponse;
    new-instance v7, Lcom/google/android/music/medialist/SongData;

    invoke-direct {v7}, Lcom/google/android/music/medialist/SongData;-><init>()V

    .line 257
    .restart local v7       #song:Lcom/google/android/music/medialist/SongData;
    iget-object v13, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mTrackArtist:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    .line 258
    iget-object v13, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mAlbumTitle:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    .line 259
    iget-object v13, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mTrackTitle:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    .line 260
    iget v13, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mDurationMsecs:I

    int-to-long v13, v13

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mDuration:J

    .line 261
    iget-object v13, v7, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    .line 264
    const-wide/16 v13, 0x0

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    .line 265
    const-wide/16 v13, 0x0

    iput-wide v13, v7, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    .line 266
    const-string v13, ""

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    .line 267
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    .line 268
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    .line 269
    const/4 v13, 0x0

    iput v13, v7, Lcom/google/android/music/medialist/SongData;->mRating:I

    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v12       #urlBuilder:Ljava/lang/StringBuilder;
    const-string v13, "&mode=streaming"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/google/android/music/medialist/SongData;->mDomainParam:Ljava/lang/String;

    .line 275
    new-instance v5, Lcom/google/android/music/medialist/SharedSingleSongList;

    .end local v5           #list:Lcom/google/android/music/medialist/SongList;
    iget-object v13, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mAlbumArtUrl:Ljava/lang/String;

    iget-object v14, v9, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mStoreUrl:Ljava/lang/String;

    invoke-direct {v5, v13, v14, v7}, Lcom/google/android/music/medialist/SharedSingleSongList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)V

    .line 277
    .restart local v5       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_ea

    .line 278
    .end local v7           #song:Lcom/google/android/music/medialist/SongData;
    .end local v9           #songResponse:Lcom/google/android/music/sharedpreview/SharedSongResponse;
    .end local v12           #urlBuilder:Ljava/lang/StringBuilder;
    :cond_157
    const-string v13, "SharedSongsActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown song list: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_61
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 153
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_74

    .line 199
    :goto_6
    return-void

    .line 155
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/SharedSongsActivity;->access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailableLastChecked()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1e

    .line 156
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v5, v2, v5}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;ZZZ)V

    goto :goto_6

    .line 160
    :cond_1e
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/SharedSongsActivity;->access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v1

    if-nez v1, :cond_55

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/SharedSongsActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    goto :goto_6

    .line 173
    .end local v0           #i:Landroid/content/Intent;
    :cond_55
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 177
    :pswitch_5a
    invoke-direct {p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->processGetShared()V

    goto :goto_6

    .line 181
    :pswitch_5e
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 189
    :pswitch_69
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 153
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5e
        :pswitch_5a
        :pswitch_69
    .end packed-switch
.end method
