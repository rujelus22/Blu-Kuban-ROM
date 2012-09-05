.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;
.super Landroid/os/Handler;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 284
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 288
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$0()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    if-nez v9, :cond_9

    .line 448
    :cond_8
    :goto_8
    :sswitch_8
    return-void

    .line 291
    :cond_9
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_1e4

    goto :goto_8

    .line 293
    :sswitch_f
    const-string v9, "before calling loading thumbs"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 294
    iget-object v9, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v9}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->setVideoThumbsCreationCompleteCallback(Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;)V

    .line 295
    sput-boolean v10, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    .line 296
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 297
    sget-object v9, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->loadVideoThumbs(Landroid/content/Context;Z)V

    .line 298
    iget-object v9, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v9}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->setImageThumbsCreationCompleteCallback(Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;)V

    .line 299
    sput-boolean v10, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageRefresh:Z

    .line 300
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 301
    sget-object v9, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->loadImageThumbs(Landroid/content/Context;Z)V

    .line 302
    sput-boolean v10, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 303
    iget-object v9, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v9}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->setAlbumDetailsFetcedCallback(Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;)V

    .line 304
    sget-object v9, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->loadMusicAlbums(Landroid/content/Context;Z)V

    goto :goto_8

    .line 308
    :sswitch_43
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadPreDefinedThemes()V

    goto :goto_8

    .line 314
    :sswitch_47
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, lRecordIntent:Landroid/content/Intent;
    const/16 v7, 0x500

    .line 316
    .local v7, x:I
    const/16 v8, 0x2d0

    .line 318
    .local v8, y:I
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 321
    iget-object v9, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v10, 0x31

    invoke-virtual {v9, v3, v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 325
    .end local v3           #lRecordIntent:Landroid/content/Intent;
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_66
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 326
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 328
    const-string v9, "Notifying Album Picker View after map clear"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;->notifyAlbumDetailsupdate()V

    goto :goto_8

    .line 334
    :sswitch_7e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 335
    .local v6, objs:[Ljava/lang/Object;
    aget-object v4, v6, v10

    check-cast v4, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 337
    .local v4, lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_b1

    .line 340
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoMusicInVisible()V

    .line 344
    :goto_98
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 346
    const-string v9, "MI!::Addmusicalbums"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;->notifyAlbumDetailsupdate()V

    .line 348
    const-string v9, "MI:::Notifying Album Picker View after map is added with album"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 342
    :cond_b1
    const-string v9, "PVG null so not doing makeNoMusicInVisible"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_98

    .line 354
    .end local v4           #lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    .end local v6           #objs:[Ljava/lang/Object;
    :sswitch_b7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 356
    const-string v9, "Notifying Album Picker View after map clear"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 357
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_dc

    .line 359
    const-string v9, "Making No Music image visible"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_dc

    .line 362
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoMusicVisible()V

    .line 364
    :cond_dc
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;->notifyAlbumDetailsupdate()V

    goto/16 :goto_8

    .line 368
    :sswitch_e5
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 369
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 371
    const-string v9, "Notifying Video Picker when Map is cleared"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;->notifyVideoThumbupdate()V

    goto/16 :goto_8

    .line 376
    :sswitch_fe
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 377
    .local v5, obj:[Ljava/lang/Object;
    aget-object v2, v5, v10

    check-cast v2, Ljava/lang/String;

    .line 378
    .local v2, lPath:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_118

    .line 381
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoVideoInVisible()V

    .line 383
    :cond_118
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 385
    const-string v9, "Notifying Video Picker when Map is added with Video thumb"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;->notifyVideoThumbupdate()V

    goto/16 :goto_8

    .line 390
    .end local v2           #lPath:Ljava/lang/String;
    .end local v5           #obj:[Ljava/lang/Object;
    :sswitch_12c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 392
    const-string v9, "Notifying Video Picker when Map is completed with Video thumb"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 393
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_151

    .line 395
    const-string v9, "Making No Videos image visible"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_151

    .line 397
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoVideoVisible()V

    .line 399
    :cond_151
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;->notifyVideoThumbupdate()V

    goto/16 :goto_8

    .line 403
    :sswitch_15a
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 406
    const-string v9, "Invalidating Image Picker Grid View when Map is cleared"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;->notifyImageThumbCleared()V

    goto/16 :goto_8

    .line 413
    :sswitch_173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 414
    .local v0, imgobj:[Ljava/lang/Object;
    aget-object v1, v0, v10

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, lImagePath:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_18d

    .line 417
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageInVisible()V

    .line 418
    :cond_18d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 420
    const-string v9, "Notifying Image Picker when Map is added with Image thumb"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;->notifyImageThumbupdate()V

    goto/16 :goto_8

    .line 426
    .end local v0           #imgobj:[Ljava/lang/Object;
    .end local v1           #lImagePath:Ljava/lang/String;
    :sswitch_1a1
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 428
    const-string v9, "Notifying Image Picker when Map is completed with Image thumb"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 429
    sget-object v9, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1c6

    .line 431
    const-string v9, "Making No Images image visible"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    if-eqz v9, :cond_1c6

    .line 433
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageVisible()V

    .line 435
    :cond_1c6
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;->notifyImageThumbupdate()V

    goto/16 :goto_8

    .line 439
    :sswitch_1cf
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 441
    const-string v9, "PEA onOrientationChanged::Refresh"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    goto/16 :goto_8

    .line 291
    nop

    :sswitch_data_1e4
    .sparse-switch
        0x11 -> :sswitch_8
        0x14 -> :sswitch_f
        0x15 -> :sswitch_43
        0x31 -> :sswitch_47
        0x58 -> :sswitch_66
        0x59 -> :sswitch_7e
        0x5a -> :sswitch_b7
        0x5b -> :sswitch_e5
        0x5c -> :sswitch_fe
        0x5d -> :sswitch_12c
        0x5e -> :sswitch_1cf
        0x5f -> :sswitch_15a
        0x60 -> :sswitch_173
        0x61 -> :sswitch_1a1
    .end sparse-switch
.end method
