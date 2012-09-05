.class Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread$1;
.super Landroid/os/Handler;
.source "AlbumArtLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread$1;->this$0:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    .line 75
    .local v0, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 89
    :goto_9
    invoke-static {}, Lcom/sec/android/app/music/AlbumArtLoader;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/music/AlbumArtLoader;->access$100()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void

    .line 77
    :pswitch_1d
    iget-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    iget-wide v2, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getGridArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 80
    :pswitch_28
    iget-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    iget-wide v2, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 83
    :pswitch_33
    iget-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    iget-wide v2, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getFolderArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    .line 84
    const/4 v1, 0x3

    iput v1, p1, Landroid/os/Message;->arg1:I

    goto :goto_9

    .line 75
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_28
        :pswitch_33
    .end packed-switch
.end method
