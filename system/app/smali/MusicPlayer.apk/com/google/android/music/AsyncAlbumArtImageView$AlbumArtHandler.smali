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
    .line 687
    const-string v0, "AsyncAlbumArtDrawable"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 684
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    .line 688
    return-void
.end method


# virtual methods
.method albumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 13
    .parameter "imageView"

    .prologue
    const/4 v7, 0x1

    .line 744
    monitor-enter p1

    .line 745
    :try_start_2
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_c

    monitor-exit p1

    .line 769
    :goto_b
    return-void

    .line 746
    :cond_c
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 747
    .local v10, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v1, v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 748
    .local v1, id:J
    iget-object v5, v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 749
    .local v5, albumName:Ljava/lang/String;
    iget-object v6, v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 750
    .local v6, artistName:Ljava/lang/String;
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_38

    .line 752
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v3

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v4

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 756
    .local v9, d:Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 757
    :try_start_2b
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_3b

    monitor-exit p1

    goto :goto_b

    .line 768
    .end local v10           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v0

    .line 750
    .end local v1           #id:J
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    .line 758
    .restart local v1       #id:J
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artistName:Ljava/lang/String;
    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    .restart local v10       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_3b
    :try_start_3b
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v10

    .end local v10           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    check-cast v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 759
    .restart local v10       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v3, v10, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_53

    if-eqz v9, :cond_53

    .line 760
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;

    invoke-direct {v3, p0, p1, v9}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :cond_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_35

    goto :goto_b
.end method

.method externalAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 11
    .parameter "imageView"

    .prologue
    const/4 v4, 0x1

    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, url:Ljava/lang/String;
    monitor-enter p1

    .line 711
    :try_start_3
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-nez v0, :cond_d

    monitor-exit p1

    .line 738
    :goto_c
    return-void

    .line 712
    :cond_d
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    .line 713
    .local v8, mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    iget-object v1, v8, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    .line 714
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_31

    .line 716
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v2

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 719
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_34

    .line 720
    const-string v0, "AsyncAlbumArtImageView"

    const-string v2, "Failed to set album art."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 714
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 723
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_34
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 725
    .local v7, d:Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 726
    :try_start_3a
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-nez v0, :cond_47

    monitor-exit p1

    goto :goto_c

    .line 737
    .end local v8           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :catchall_44
    move-exception v0

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw v0

    .line 727
    .restart local v8       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_47
    :try_start_47
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v8

    .end local v8           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    .line 728
    .restart local v8       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    iget-object v0, v8, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    if-ne v0, v1, :cond_5d

    if-eqz v7, :cond_5d

    .line 729
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;

    invoke-direct {v2, p0, p1, v7}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 737
    :cond_5d
    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_44

    goto :goto_c
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 706
    :goto_5
    return-void

    .line 694
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->albumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 697
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->externalAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 700
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->serviceAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 703
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->playlistImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    goto :goto_5

    .line 692
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_e
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method playlistImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 14
    .parameter "imageView"

    .prologue
    .line 814
    monitor-enter p1

    .line 815
    :try_start_1
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-nez v0, :cond_b

    monitor-exit p1

    .line 841
    :goto_a
    return-void

    .line 816
    :cond_b
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    .line 817
    .local v11, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    iget v1, v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    .line 818
    .local v1, style:I
    iget-wide v3, v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    .line 819
    .local v3, id:J
    iget-object v7, v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    .line 820
    .local v7, mainLabel:Ljava/lang/String;
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3d

    .line 822
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v5

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 826
    .local v9, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 828
    .local v10, drawable:Landroid/graphics/drawable/BitmapDrawable;
    monitor-enter p1

    .line 829
    :try_start_30
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-nez v0, :cond_40

    monitor-exit p1

    goto :goto_a

    .line 840
    .end local v11           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :catchall_3a
    move-exception v0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v0

    .line 820
    .end local v1           #style:I
    .end local v3           #id:J
    .end local v7           #mainLabel:Ljava/lang/String;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 830
    .restart local v1       #style:I
    .restart local v3       #id:J
    .restart local v7       #mainLabel:Ljava/lang/String;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_40
    :try_start_40
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v11

    .end local v11           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    check-cast v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    .line 831
    .restart local v11       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    iget-wide v5, v11, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_58

    if-eqz v10, :cond_58

    .line 832
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$4;

    invoke-direct {v2, p0, p1, v10}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$4;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    :cond_58
    monitor-exit p1
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_3a

    goto :goto_a
.end method

.method serviceAlbumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 16
    .parameter "imageView"

    .prologue
    .line 773
    monitor-enter p1

    .line 774
    :try_start_1
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-nez v0, :cond_b

    monitor-exit p1

    .line 808
    :goto_a
    return-void

    .line 775
    :cond_b
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    .line 776
    .local v13, mode:Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_63

    .line 779
    :try_start_12
    iget-object v0, v13, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->service:Lcom/google/android/music/IMusicPlaybackService;

    iget-wide v2, v13, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->albumId:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v2

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 783
    .local v12, image:Landroid/graphics/Bitmap;
    if-nez v12, :cond_47

    .line 784
    invoke-virtual {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J
    invoke-static {v13}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$800(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J

    move-result-wide v4

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v6

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v7

    iget-object v8, v13, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->artist:Ljava/lang/String;

    iget-object v9, v13, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->album:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 788
    :cond_47
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 789
    .local v10, drawable:Landroid/graphics/drawable/BitmapDrawable;
    monitor-enter p1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_4d} :catch_58
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4d} :catch_72

    .line 790
    :try_start_4d
    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    if-eq v0, v13, :cond_66

    monitor-exit p1

    goto :goto_a

    .line 799
    :catchall_55
    move-exception v0

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    :try_start_57
    throw v0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_58} :catch_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_72

    .line 800
    .end local v1           #url:Ljava/lang/String;
    .end local v10           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v12           #image:Landroid/graphics/Bitmap;
    :catch_58
    move-exception v11

    .line 801
    .local v11, e:Landroid/os/RemoteException;
    const-string v0, "AsyncAlbumArtImageView"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 776
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v13           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 792
    .restart local v1       #url:Ljava/lang/String;
    .restart local v10       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12       #image:Landroid/graphics/Bitmap;
    .restart local v13       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;
    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$3;

    invoke-direct {v2, p0, p1, v10}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$3;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_55

    goto :goto_a

    .line 802
    .end local v1           #url:Ljava/lang/String;
    .end local v10           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v12           #image:Landroid/graphics/Bitmap;
    :catch_72
    move-exception v11

    .line 805
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "AsyncAlbumArtImageView"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
