.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1023
    iget-object v7, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v7, Lcom/google/android/music/albumwall/MusicItem;

    .line 1024
    .local v7, myItem:Lcom/google/android/music/albumwall/MusicItem;
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_b8

    .line 1065
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForArtist(JLjava/lang/String;)V
    invoke-static {v0, v3, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V

    .line 1067
    :goto_20
    return-void

    .line 1029
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForGenre(JLjava/lang/String;)V
    invoke-static {v0, v3, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V

    goto :goto_20

    .line 1032
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v3

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAlbum(J)V
    invoke-static {v0, v3, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V

    goto :goto_20

    .line 1035
    :pswitch_39
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v8

    .line 1036
    .local v8, playlistId:J
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v10

    .line 1037
    .local v10, playlistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1038
    new-instance v13, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v13, shortcutIntent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v0, "playlistId"

    invoke-virtual {v13, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1042
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1043
    .local v12, returnIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1044
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 1047
    .local v2, size:I
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1049
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1050
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v12}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_20

    .line 1053
    .end local v2           #size:I
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #returnIntent:Landroid/content/Intent;
    .end local v13           #shortcutIntent:Landroid/content/Intent;
    :cond_98
    invoke-static {v8, v9}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1054
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAutoPlaylist(J)V
    invoke-static {v0, v8, v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V

    goto/16 :goto_20

    .line 1056
    :cond_a5
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getPlaylistType()I

    move-result v11

    .line 1057
    .local v11, playlistType:I
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    invoke-static {v0, v8, v9, v10, v11}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;I)V

    goto/16 :goto_20

    .line 1062
    .end local v8           #playlistId:J
    .end local v10           #playlistName:Ljava/lang/String;
    .end local v11           #playlistType:I
    :pswitch_b0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForShuffleAll()V
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    goto/16 :goto_20

    .line 1024
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_13
        :pswitch_21
        :pswitch_39
        :pswitch_b0
    .end packed-switch
.end method
