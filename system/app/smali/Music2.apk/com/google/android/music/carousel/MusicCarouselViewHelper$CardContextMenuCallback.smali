.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardContextMenuCallback"
.end annotation


# instance fields
.field private final mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    .registers 3
    .parameter
    .parameter "record"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 915
    return-void
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    if-nez v1, :cond_6

    .line 963
    :goto_5
    return v0

    .line 922
    :cond_6
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v1, :pswitch_data_68

    goto :goto_5

    .line 924
    :pswitch_e
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v6, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    invoke-direct {v2, v6, v7}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 933
    .local v2, songList:Lcom/google/android/music/medialist/SongList;
    :goto_17
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    :pswitch_1e
    goto :goto_5

    .line 944
    :pswitch_1f
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 945
    .local v3, playlistId:J
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, playlistName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;Lcom/google/android/music/medialist/SongList;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 963
    .end local v3           #playlistId:J
    .end local v5           #playlistName:Ljava/lang/String;
    :goto_3e
    const/4 v0, 0x1

    goto :goto_5

    .line 927
    .end local v2           #songList:Lcom/google/android/music/medialist/SongList;
    :pswitch_40
    new-instance v2, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v6, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v8, v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    invoke-direct {v2, v6, v7, v1, v8}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 929
    .restart local v2       #songList:Lcom/google/android/music/medialist/SongList;
    goto :goto_17

    .line 936
    :pswitch_52
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    const/4 v6, -0x1

    invoke-static {v1, v2, v6, v0}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_3e

    .line 940
    :pswitch_5d
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto :goto_3e

    .line 922
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_e
        :pswitch_40
    .end packed-switch

    .line 933
    :pswitch_data_70
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_1e
        :pswitch_5d
        :pswitch_52
    .end packed-switch
.end method
