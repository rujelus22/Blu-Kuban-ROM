.class public Lcom/sec/android/app/dlna/ui/PCloudContentActivity;
.super Landroid/app/Activity;
.source "PCloudContentActivity.java"

# interfaces
.implements Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;


# instance fields
.field final ADDITEM:I

.field private final BUFFER_GONE:I

.field private final BUFFER_VISIBLE:I

.field private final CHANGE_PROGRESS:I

.field final DETAIL:I

.field private final FAILED_TO_PLAY:I

.field public final PLAYLIST_AUDIO:I

.field public final PLAYLIST_COUNT:I

.field public final PLAYLIST_IMAGE:I

.field public final PLAYLIST_VIDEO:I

.field final PLAY_IT_NOW:I

.field final PLAY_NEXT_FILE:I

.field final PLAY_NEXT_FILE_DMP:I

.field private final REFRESH:I

.field final REMOVEITEM:I

.field private final RESET_PLAYLIST_DIALOG:I

.field private final SHOW_ERROR_TOAST:I

.field private final START_ALLSHARE:I

.field private final WHEELPROGRESS:I

.field private final WIFI_ERROR:I

.field private activatingDialog:Landroid/app/ProgressDialog;

.field private bufferAnimationRunnable:Ljava/lang/Runnable;

.field private bufferingThread:Ljava/lang/Thread;

.field private changePlayer:Landroid/view/MenuItem;

.field guiHandler:Landroid/os/Handler;

.field private isPrevClicked:Z

.field private listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mAllShareReceiver:Landroid/content/BroadcastReceiver;

.field private mGuiHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private mPosition:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressHolder:Landroid/view/View;

.field mThumbnailCreateThread:Ljava/lang/Thread;

.field private mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

.field private playlist:Lcom/sec/android/app/dlna/model/Playlist;

.field private playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private progressDialog:Landroid/app/AlertDialog;

.field private progressDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 93
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->CHANGE_PROGRESS:I

    .line 94
    const/16 v0, 0x6f2

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->START_ALLSHARE:I

    .line 95
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->BUFFER_VISIBLE:I

    .line 96
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->BUFFER_GONE:I

    .line 97
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->SHOW_ERROR_TOAST:I

    .line 98
    const/16 v0, 0x7d3

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->WIFI_ERROR:I

    .line 99
    const/16 v0, 0x7d4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->FAILED_TO_PLAY:I

    .line 100
    const/16 v0, 0x470

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->RESET_PLAYLIST_DIALOG:I

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    .line 105
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->activatingDialog:Landroid/app/ProgressDialog;

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAYLIST_IMAGE:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAYLIST_AUDIO:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAYLIST_VIDEO:I

    .line 109
    iput v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAYLIST_COUNT:I

    .line 112
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->REFRESH:I

    .line 114
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->DETAIL:I

    .line 115
    const/16 v0, 0xca

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->ADDITEM:I

    .line 116
    const/16 v0, 0xcb

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->REMOVEITEM:I

    .line 117
    const/16 v0, 0xcc

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAY_NEXT_FILE:I

    .line 118
    const/16 v0, 0xcd

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAY_NEXT_FILE_DMP:I

    .line 119
    const/16 v0, 0xce

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->PLAY_IT_NOW:I

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I

    .line 130
    iput v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->WHEELPROGRESS:I

    .line 138
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferAnimationRunnable:Ljava/lang/Runnable;

    .line 588
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    .line 628
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->guiHandler:Landroid/os/Handler;

    .line 724
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$21;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    .line 738
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->handleSeek(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setMediaName()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setPlaylistControl()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setupProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->inNotifyDataSetChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->isPrevClicked:Z

    return v0
.end method

.method private getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 810
    .line 811
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnapImageUri() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6f

    .line 814
    :try_start_21
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 817
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 818
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 819
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 821
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 822
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 824
    invoke-virtual {v2}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 826
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 827
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 828
    const/4 v4, 0x1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 830
    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_56} :catch_7a

    move-result-object v1

    .line 831
    if-eqz v1, :cond_99

    .line 832
    :try_start_59
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_70

    .line 833
    const/16 v0, 0x6d

    const/16 v4, 0x52

    const/4 v5, 0x1

    invoke-static {v1, v0, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_68} :catch_94

    move-result-object v0

    .line 837
    :goto_69
    :try_start_69
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 838
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_7a

    .line 843
    :cond_6f
    :goto_6f
    return-object v0

    .line 835
    :cond_70
    const/16 v0, 0x50

    const/16 v4, 0x50

    const/4 v5, 0x1

    :try_start_75
    invoke-static {v1, v0, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_94

    move-result-object v0

    goto :goto_69

    .line 839
    :catch_7a
    move-exception v1

    .line 840
    :goto_7b
    const-string v2, "FILE WRITE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed Creating image thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 839
    :catch_94
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7b

    :cond_99
    move-object v0, v1

    goto :goto_69
.end method

.method private handleSeek(I)V
    .registers 3
    .parameter "seekTime"

    .prologue
    .line 548
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestSeek(I)Z

    .line 549
    return-void
.end method

.method private inNotifyDataSetChanged(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 847
    move v0, p1

    .line 848
    .local v0, pos:I
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$23;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$23;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 855
    return-void
.end method

.method private setMediaName()V
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getOrderOfCurrentItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setCurrentIndex(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setMediaName(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method private setPlaylistControl()V
    .registers 5

    .prologue
    .line 535
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    .line 536
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2a

    .line 537
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    .local v0, Params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x223

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlGUI(I)V

    .line 545
    return-void
.end method

.method private setupProgressBar(Z)V
    .registers 5
    .parameter "bEnable"

    .prologue
    const/4 v2, 0x0

    .line 614
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 615
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v0

    .line 617
    .local v0, duration:I
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 621
    .end local v0           #duration:I
    :goto_15
    return-void

    .line 619
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    goto :goto_15
.end method

.method private updateProgressBar()V
    .registers 3

    .prologue
    .line 624
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPosition()I

    move-result v0

    .line 625
    .local v0, pos:I
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->updateProgressBar(I)V

    .line 626
    return-void
.end method


# virtual methods
.method public CreateThumbnailThread()V
    .registers 3

    .prologue
    .line 741
    const-string v0, "DLNA"

    const-string v1, "in CreateThumbnailThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 746
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 806
    const-string v0, "DLNA"

    const-string v1, "exiting CreateThumbnailThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method protected handleNext()V
    .registers 2

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->isPrevClicked:Z

    .line 561
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestNextByController()Z

    .line 562
    return-void
.end method

.method protected handlePlayOrPause()V
    .registers 2

    .prologue
    .line 552
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 556
    :cond_20
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPlayOrPause()Z

    .line 557
    return-void
.end method

.method protected handlePrevious()V
    .registers 2

    .prologue
    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->isPrevClicked:Z

    .line 566
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPrevious()Z

    .line 567
    return-void
.end method

.method protected handleStop()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 571
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 572
    return-void
.end method

.method protected handleVolumeDown()V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeDown()V

    .line 582
    return-void
.end method

.method protected handleVolumeUp()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeUp()V

    .line 577
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 703
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 704
    .local v0, mydialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003f

    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$20;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$19;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$19;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 721
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 722
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.startAllShare"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setVolumeControlStream(I)V

    .line 215
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    packed-switch v0, :pswitch_data_13e

    .line 228
    :goto_23
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setContentView(I)V

    .line 230
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MediaControlView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPrevClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeUpClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setStopClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeDownClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isShuffle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleEnable(Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentRepeatState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatMode(I)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$9;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 310
    new-instance v0, Lcom/sec/android/app/dlna/model/Playlist;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/model/Playlist;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 311
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 314
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setAdapter(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    .line 371
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_136

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_136

    .line 374
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    :goto_11d
    return-void

    .line 218
    :pswitch_11e
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setTitle(I)V

    goto/16 :goto_23

    .line 221
    :pswitch_126
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setTitle(I)V

    goto/16 :goto_23

    .line 224
    :pswitch_12e
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setTitle(I)V

    goto/16 :goto_23

    .line 377
    :cond_136
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11d

    .line 215
    :pswitch_data_13e
    .packed-switch 0x3
        :pswitch_126
        :pswitch_12e
        :pswitch_11e
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 382
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mProgressHolder:Landroid/view/View;

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mProgressHolder:Landroid/view/View;

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 387
    sparse-switch p1, :sswitch_data_aa

    .line 441
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_22
    return-object v2

    .line 389
    :sswitch_23
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mProgressHolder:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 395
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 396
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->progressDialog:Landroid/app/AlertDialog;

    goto :goto_22

    .line 399
    :sswitch_5b
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->activatingDialog:Landroid/app/ProgressDialog;

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->activatingDialog:Landroid/app/ProgressDialog;

    const/high16 v3, 0x7f09

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->activatingDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$13;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->activatingDialog:Landroid/app/ProgressDialog;

    goto :goto_22

    .line 409
    :sswitch_7a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, dialog1:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 412
    .local v1, dialogView1:Lcom/sec/android/app/dlna/view/PopupView;
    const v2, 0x7f090047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 415
    const v2, 0x7f09003f

    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$14;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    new-instance v2, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$15;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_22

    .line 387
    :sswitch_data_aa
    .sparse-switch
        0x4 -> :sswitch_23
        0x6f2 -> :sswitch_5b
        0x7d4 -> :sswitch_7a
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 859
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->changePlayer:Landroid/view/MenuItem;

    .line 861
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    invoke-virtual {p0, p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->requestKillProcess(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    .line 507
    if-eq p1, v3, :cond_8

    if-ne p1, v4, :cond_41

    :cond_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_41

    .line 512
    if-ne p1, v3, :cond_2e

    .line 513
    :try_start_21
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeUp()V

    .line 522
    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    .line 524
    :goto_2d
    return v1

    .line 515
    :cond_2e
    if-ne p1, v4, :cond_2c

    .line 516
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeDown()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3b} :catch_3c

    goto :goto_2c

    .line 519
    :catch_3c
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    :cond_41
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 866
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 867
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 871
    :cond_2c
    const/4 v0, 0x1

    .line 874
    :goto_2d
    return v0

    :cond_2e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2d
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 586
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;

    .line 188
    :cond_7
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 189
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->removePlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 191
    return-void
.end method

.method public onPlaylistChanged()V
    .registers 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 736
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, stopIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "from"

    const-string v3, "com.sec.android.app.dlna"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setMediaName()V

    .line 161
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isCurrentMediaSeekable()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setupProgressBar(Z)V

    .line 163
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setPlaylistControl()V

    .line 165
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->isPrevClicked:Z

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.dlna.player_started"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_72

    .line 171
    const-string v2, "DLNA"

    const-string v3, "DLNAHomeScreen::onResume BUFFER_GONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    iget-object v2, v2, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 177
    :cond_72
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 178
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->addPlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 179
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item TotalCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 148
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addGuiHandler(Landroid/os/Handler;)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 150
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->guiHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->removeGuiHandler(Landroid/os/Handler;)V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 197
    return-void
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 878
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 879
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 880
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 881
    const/16 v1, 0x8

    if-ge v0, v1, :cond_27

    .line 882
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 909
    :goto_26
    return-void

    .line 886
    :cond_27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$24;-><init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Landroid/content/Context;)V

    const-string v2, "Process Killer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_26
.end method
