.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;
.super Lcom/google/android/music/Worker;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 435
    const-string v0, "AsyncAlbumArtDrawable"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    .line 436
    return-void
.end method


# virtual methods
.method albumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 11
    .parameter "imageView"

    .prologue
    .line 485
    monitor-enter p1

    .line 486
    :try_start_1
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_b

    monitor-exit p1

    .line 510
    :goto_a
    return-void

    .line 487
    :cond_b
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 488
    .local v8, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v1, v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 489
    .local v1, id:J
    iget-object v5, v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 490
    .local v5, albumName:Ljava/lang/String;
    iget-object v6, v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 491
    .local v6, artistName:Ljava/lang/String;
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_36

    .line 493
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1000(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v3

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1100(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 497
    .local v7, d:Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 498
    :try_start_29
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_39

    monitor-exit p1

    goto :goto_a

    .line 509
    .end local v8           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :catchall_33
    move-exception v0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v0

    .line 491
    .end local v1           #id:J
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 499
    .restart local v1       #id:J
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artistName:Ljava/lang/String;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_39
    :try_start_39
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v8

    .end local v8           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 500
    .restart local v8       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v3, v8, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_51

    if-eqz v7, :cond_51

    .line 501
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;

    invoke-direct {v3, p0, p1, v7}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    :cond_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_33

    goto :goto_a
.end method

.method externalAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 9
    .parameter "imageView"

    .prologue
    .line 451
    const/4 v3, 0x0

    .line 452
    .local v3, url:Ljava/lang/String;
    monitor-enter p1

    .line 453
    :try_start_2
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-nez v4, :cond_c

    monitor-exit p1

    .line 480
    :goto_b
    return-void

    .line 454
    :cond_c
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    .line 455
    .local v2, mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    iget-object v3, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    .line 456
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_2f

    .line 458
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1000(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v5

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1100(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v6

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_32

    .line 462
    const-string v4, "AsyncAlbumArtImageView"

    const-string v5, "Failed to set album art."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 456
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v4

    .line 465
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_32
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    .local v1, d:Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 468
    :try_start_38
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-nez v4, :cond_45

    monitor-exit p1

    goto :goto_b

    .line 479
    .end local v2           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :catchall_42
    move-exception v4

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v4

    .line 469
    .restart local v2       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_45
    :try_start_45
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v2

    .end local v2           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    .line 470
    .restart local v2       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    iget-object v4, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    if-ne v4, v3, :cond_5b

    if-eqz v1, :cond_5b

    .line 471
    iget-object v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_42

    goto :goto_b
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 448
    :goto_5
    return-void

    .line 442
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->albumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 445
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->externalAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 440
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
