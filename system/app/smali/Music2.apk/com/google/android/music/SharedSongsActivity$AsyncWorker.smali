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
    .line 136
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    .line 137
    const-class v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->checkAccountsMatch()V

    return-void
.end method

.method private checkAccountsMatch()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 281
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 282
    if-nez v0, :cond_1f

    .line 283
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const-class v2, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1, v0, v5}, Lcom/google/android/music/SharedSongsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    :goto_1e
    return-void

    .line 288
    :cond_1f
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    if-nez v1, :cond_3a

    .line 290
    const-string v0, "SharedSongsActivity"

    const-string v1, "G+ did not provide account extra"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v0}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    goto :goto_1e

    .line 294
    :cond_3a
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 295
    if-nez v2, :cond_87

    .line 296
    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const v4, 0x7f0d0134

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/SharedSongsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1e

    .line 303
    :cond_87
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mSecondaryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$700(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$000(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1e
.end method

.method private processGetShared()V
    .registers 16

    .prologue
    .line 188
    iget-object v12, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v12}, Lcom/google/android/music/SharedSongsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 189
    .local v1, appContext:Landroid/content/Context;
    const/4 v5, 0x0

    .line 191
    .local v5, response:Lcom/google/android/music/sharedpreview/JsonResponse;
    new-instance v2, Lcom/google/android/music/sharedpreview/SharedPreviewClient;

    const/4 v12, 0x0

    invoke-direct {v2, v1, v12}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;-><init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V

    .line 193
    .local v2, client:Lcom/google/android/music/sharedpreview/SharedPreviewClient;
    :try_start_d
    iget-object v12, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getMetaDataResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/JsonResponse;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_2c

    move-result-object v5

    .line 195
    invoke-virtual {v2}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    .line 198
    if-nez v5, :cond_31

    .line 199
    const-string v12, "SharedSongsActivity"

    const-string v13, "Failed to retrieve shared content."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 278
    :goto_2b
    return-void

    .line 195
    :catchall_2c
    move-exception v12

    invoke-virtual {v2}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    throw v12

    .line 203
    :cond_31
    const/4 v4, 0x0

    .line 204
    .local v4, list:Lcom/google/android/music/medialist/SongList;
    instance-of v12, v5, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    if-eqz v12, :cond_bf

    move-object v0, v5

    .line 205
    check-cast v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    .line 207
    .local v0, albumResponse:Lcom/google/android/music/sharedpreview/SharedAlbumResponse;
    new-instance v9, Lcom/google/android/music/medialist/SongDataList;

    invoke-direct {v9}, Lcom/google/android/music/medialist/SongDataList;-><init>()V

    .line 208
    .local v9, songs:Lcom/google/android/music/medialist/SongDataList;
    iget-object v12, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mTracks:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/sharedpreview/Track;

    .line 209
    .local v10, track:Lcom/google/android/music/sharedpreview/Track;
    new-instance v6, Lcom/google/android/music/medialist/SongData;

    invoke-direct {v6}, Lcom/google/android/music/medialist/SongData;-><init>()V

    .line 211
    .local v6, song:Lcom/google/android/music/medialist/SongData;
    iget-object v12, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtist:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    .line 212
    iget-object v12, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtist:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    .line 213
    iget-object v12, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    .line 215
    iget-object v12, v10, Lcom/google/android/music/sharedpreview/Track;->mTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    .line 216
    iget v12, v10, Lcom/google/android/music/sharedpreview/Track;->mDurationMsecs:I

    int-to-long v12, v12

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mDuration:J

    .line 219
    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    .line 220
    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    .line 221
    const-string v12, ""

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    .line 222
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    .line 223
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    .line 224
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mRating:I

    .line 226
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v11, urlBuilder:Ljava/lang/StringBuilder;
    const-string v12, "&mode=streaming"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v12, "&tid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v12, v10, Lcom/google/android/music/sharedpreview/Track;->mId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mRemoteUrl:Ljava/lang/String;

    .line 232
    iget-object v12, v9, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 234
    .end local v6           #song:Lcom/google/android/music/medialist/SongData;
    .end local v10           #track:Lcom/google/android/music/sharedpreview/Track;
    .end local v11           #urlBuilder:Ljava/lang/StringBuilder;
    :cond_a9
    new-instance v4, Lcom/google/android/music/medialist/SharedAlbumSongList;

    .end local v4           #list:Lcom/google/android/music/medialist/SongList;
    iget-object v12, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mStoreUrl:Ljava/lang/String;

    invoke-direct {v4, v12, v13, v9}, Lcom/google/android/music/medialist/SharedAlbumSongList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongDataList;)V

    .line 266
    .end local v0           #albumResponse:Lcom/google/android/music/sharedpreview/SharedAlbumResponse;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #songs:Lcom/google/android/music/medialist/SongDataList;
    .restart local v4       #list:Lcom/google/android/music/medialist/SongList;
    :goto_b2
    move-object v7, v4

    .line 268
    .local v7, songList:Lcom/google/android/music/medialist/SongList;
    iget-object v12, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v13, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;

    invoke-direct {v13, p0, v7}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;Lcom/google/android/music/medialist/SongList;)V

    invoke-virtual {v12, v13}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2b

    .line 236
    .end local v7           #songList:Lcom/google/android/music/medialist/SongList;
    :cond_bf
    instance-of v12, v5, Lcom/google/android/music/sharedpreview/SharedSongResponse;

    if-eqz v12, :cond_119

    move-object v8, v5

    .line 237
    check-cast v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;

    .line 238
    .local v8, songResponse:Lcom/google/android/music/sharedpreview/SharedSongResponse;
    new-instance v6, Lcom/google/android/music/medialist/SongData;

    invoke-direct {v6}, Lcom/google/android/music/medialist/SongData;-><init>()V

    .line 240
    .restart local v6       #song:Lcom/google/android/music/medialist/SongData;
    iget-object v12, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mTrackArtist:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    .line 241
    iget-object v12, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mAlbumTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    .line 242
    iget-object v12, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mTrackTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    .line 243
    iget v12, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mDurationMsecs:I

    int-to-long v12, v12

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mDuration:J

    .line 244
    iget-object v12, v6, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    .line 247
    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    .line 248
    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    .line 249
    const-string v12, ""

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    .line 250
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    .line 251
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    .line 252
    const/4 v12, 0x0

    iput v12, v6, Lcom/google/android/music/medialist/SongData;->mRating:I

    .line 254
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v11       #urlBuilder:Ljava/lang/StringBuilder;
    const-string v12, "&mode=streaming"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/google/android/music/medialist/SongData;->mRemoteUrl:Ljava/lang/String;

    .line 258
    new-instance v4, Lcom/google/android/music/medialist/SharedSingleSongList;

    .end local v4           #list:Lcom/google/android/music/medialist/SongList;
    iget-object v12, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mAlbumArtUrl:Ljava/lang/String;

    iget-object v13, v8, Lcom/google/android/music/sharedpreview/SharedSongResponse;->mStoreUrl:Ljava/lang/String;

    invoke-direct {v4, v12, v13, v6}, Lcom/google/android/music/medialist/SharedSingleSongList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)V

    .line 260
    .restart local v4       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_b2

    .line 261
    .end local v6           #song:Lcom/google/android/music/medialist/SongData;
    .end local v8           #songResponse:Lcom/google/android/music/sharedpreview/SharedSongResponse;
    .end local v11           #urlBuilder:Ljava/lang/StringBuilder;
    :cond_119
    const-string v12, "SharedSongsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown song list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_2b
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_64

    .line 185
    :goto_6
    return-void

    .line 144
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

    .line 145
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v5, v2, v5}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;ZZZ)V

    goto :goto_6

    .line 149
    :cond_1e
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/SharedSongsActivity;->access$100(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v1

    if-nez v1, :cond_45

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/music/SharedSongsActivity;->access$200(Lcom/google/android/music/SharedSongsActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/SharedSongsActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    goto :goto_6

    .line 159
    .end local v0           #i:Landroid/content/Intent;
    :cond_45
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 163
    :pswitch_4a
    invoke-direct {p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->processGetShared()V

    goto :goto_6

    .line 167
    :pswitch_4e
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 175
    :pswitch_59
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    new-instance v2, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;-><init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/SharedSongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 142
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4e
        :pswitch_4a
        :pswitch_59
    .end packed-switch
.end method
