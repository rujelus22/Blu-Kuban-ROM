.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddMusicAlbumSongsPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicFileAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "c"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    .line 386
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 389
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 394
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$5()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 403
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, imgVw:Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 410
    .local v6, lVideoItem:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 411
    .local v3, lMusicFileView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 414
    .local v4, lMusicFileView1:Landroid/widget/TextView;
    :try_start_4
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030020

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v6, v0

    .line 415
    const v7, 0x7f0b0065

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 416
    const v7, 0x7f0b0068

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 417
    const v7, 0x7f0b0067

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 418
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$5()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/ve/data/VEAlbumSong;

    .line 419
    .local v5, lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    invoke-virtual {v5}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 422
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_72
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$6(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, p1, :cond_d8

    .line 431
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Landroid/media/MediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_d2

    .line 433
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 435
    const-string v7, "Show icon to stop music"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 436
    const v7, 0x7f0200c0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    :goto_9b
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    .end local v5           #lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    :goto_9f
    return-object v6

    .line 427
    .restart local v5       #lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    :cond_a0
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c0} :catch_c1

    goto :goto_72

    .line 452
    .end local v5           #lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    :catch_c1
    move-exception v1

    .line 454
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9f

    .line 440
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v5       #lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    :cond_c6
    :try_start_c6
    const-string v7, "show icon to play music"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 441
    const v7, 0x7f0200be

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9b

    .line 445
    :cond_d2
    const-string v7, "Media Player is null"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_9b

    .line 450
    :cond_d8
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_dd} :catch_c1

    goto :goto_9f
.end method
