.class public Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "DLNAHomeScreen.java"

# interfaces
.implements Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# static fields
.field private static mPosition:I


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private bufferAnimationRunnable:Ljava/lang/Runnable;

.field private bufferingThread:Ljava/lang/Thread;

.field private changePlayer:Landroid/view/MenuItem;

.field private changeServer:Landroid/view/MenuItem;

.field private connection_info:Landroid/view/MenuItem;

.field private detail:Landroid/view/MenuItem;

.field guiHandler:Landroid/os/Handler;

.field private isPrevClicked:Z

.field private isSuspended:Z

.field private listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mBackKeyTimer:I

.field private mBackKeyToast:Landroid/widget/Toast;

.field private mGuiHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressHolder:Landroid/view/View;

.field private mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

.field private playlist:Lcom/sec/android/app/dlna/model/Playlist;

.field private playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private progressDialog:Landroid/app/AlertDialog;

.field private progressDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private settings:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPosition:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 68
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, "DLNAHomeScreen."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->CLASS_NAME:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    .line 120
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I

    .line 158
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;

    .line 459
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferAnimationRunnable:Ljava/lang/Runnable;

    .line 735
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    .line 831
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->guiHandler:Landroid/os/Handler;

    .line 930
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$19;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->handleSeek(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isPrevClicked:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setMediaName()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl_Landscape()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setupProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isSuspended:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isSuspended:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object p1
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPosition:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPosition:I

    return p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MultiSelectListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    return-object v0
.end method

.method private handleSeek(I)V
    .registers 3
    .parameter "seekTime"

    .prologue
    .line 696
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestSeek(I)Z

    .line 697
    return-void
.end method

.method private setMediaName()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getOrderOfCurrentItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setCurrentIndex(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_23

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setMediaName(Ljava/lang/String;)V

    .line 637
    :goto_22
    return-void

    .line 636
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setMediaName(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private setPlaylistControl()V
    .registers 4

    .prologue
    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 643
    .local v0, Params:Landroid/widget/LinearLayout$LayoutParams;
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

    if-ne v1, v2, :cond_49

    .line 645
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v1, :cond_42

    .line 646
    const/16 v1, 0x208

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 655
    :goto_2b
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlGUI(I)V

    .line 661
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_41
    return-void

    .line 648
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_42
    const/16 v1, 0x376

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2b

    .line 658
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :catch_47
    move-exception v1

    goto :goto_41

    .line 650
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_49
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v1, :cond_56

    .line 651
    const/16 v1, 0x197

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2b

    .line 653
    :cond_56
    const/16 v1, 0x306

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5a} :catch_47

    goto :goto_2b
.end method

.method private setPlaylistControl_Landscape()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 667
    .local v0, Params:Landroid/widget/LinearLayout$LayoutParams;
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

    if-ne v1, v2, :cond_57

    .line 669
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v1, :cond_43

    .line 670
    const/16 v1, 0xd8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 684
    :goto_2c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlGUI_Landscape(I)V

    .line 690
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_42
    return-void

    .line 671
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_43
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v1, v3, :cond_52

    .line 672
    const/16 v1, 0x16b

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2c

    .line 687
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :catch_50
    move-exception v1

    goto :goto_42

    .line 674
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_52
    const/16 v1, 0x1c2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2c

    .line 677
    :cond_57
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v1, :cond_64

    .line 678
    const/16 v1, 0x95

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2c

    .line 679
    :cond_64
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v1, v3, :cond_71

    .line 680
    const/16 v1, 0x10a

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2c

    .line 682
    :cond_71
    const/16 v1, 0x15c

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_75
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_75} :catch_50

    goto :goto_2c
.end method

.method private setupProgressBar(Z)V
    .registers 6
    .parameter "bEnable"

    .prologue
    const/4 v3, 0x0

    .line 817
    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    .line 818
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v0

    .line 819
    .local v0, duration:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPosition()I

    move-result v1

    .line 820
    .local v1, pos:I
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 824
    .end local v0           #duration:I
    .end local v1           #pos:I
    :goto_21
    return-void

    .line 822
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v3, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    goto :goto_21
.end method

.method private updateProgressBar()V
    .registers 3

    .prologue
    .line 827
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPosition()I

    move-result v0

    .line 828
    .local v0, pos:I
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->updateProgressBar(I)V

    .line 829
    return-void
.end method


# virtual methods
.method protected handleNext()V
    .registers 2

    .prologue
    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isPrevClicked:Z

    .line 708
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestNextByController()Z

    .line 709
    return-void
.end method

.method protected handlePlayOrPause()V
    .registers 2

    .prologue
    .line 700
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 703
    :cond_20
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPlayOrPause()Z

    .line 704
    return-void
.end method

.method protected handlePrevious()V
    .registers 2

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isPrevClicked:Z

    .line 713
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPrevious()Z

    .line 714
    return-void
.end method

.method protected handleStop()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 719
    return-void
.end method

.method protected handleVolumeDown()V
    .registers 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 728
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeDown()V

    .line 729
    return-void
.end method

.method protected handleVolumeUp()V
    .registers 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 723
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeUp()V

    .line 724
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 6
    .parameter "code"

    .prologue
    const/16 v1, 0x7d2

    .line 496
    packed-switch p1, :pswitch_data_4c

    .line 518
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 519
    return-void

    .line 498
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 499
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 502
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->finish()V

    goto :goto_5

    .line 506
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_5

    .line 510
    :pswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 514
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->finish()V

    goto :goto_5

    .line 496
    nop

    :pswitch_data_4c
    .packed-switch 0x2f2
        :pswitch_9
        :pswitch_20
        :pswitch_32
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 921
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAHomeScreen : Finish NetworkWarningActivity - Result Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->finish()V

    .line 927
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 928
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 969
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 971
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 972
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl()V

    .line 976
    :goto_b
    return-void

    .line 974
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl_Landscape()V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setVolumeControlStream(I)V

    .line 244
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    packed-switch v0, :pswitch_data_142

    .line 256
    :goto_17
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setContentView(I)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090007

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;

    .line 261
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MediaControlView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$1;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPrevClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$2;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$3;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$4;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeUpClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setStopClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$6;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeDownClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isShuffle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleEnable(Z)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$7;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentRepeatState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatMode(I)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$8;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 338
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_139

    .line 340
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    :goto_e6
    new-instance v0, Lcom/sec/android/app/dlna/model/Playlist;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/model/Playlist;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 348
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 351
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setAdapter(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 374
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;

    .line 395
    return-void

    .line 246
    :pswitch_121
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setTitle(I)V

    goto/16 :goto_17

    .line 249
    :pswitch_129
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setTitle(I)V

    goto/16 :goto_17

    .line 252
    :pswitch_131
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setTitle(I)V

    goto/16 :goto_17

    .line 343
    :cond_139
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e6

    .line 244
    nop

    :pswitch_data_142
    .packed-switch 0x3
        :pswitch_129
        :pswitch_131
        :pswitch_121
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 398
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mProgressHolder:Landroid/view/View;

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mProgressHolder:Landroid/view/View;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mProgress:Landroid/widget/ProgressBar;

    .line 402
    sparse-switch p1, :sswitch_data_ce

    .line 456
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_22
    return-object v1

    .line 404
    :sswitch_23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mProgressHolder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$12;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->progressDialog:Landroid/app/AlertDialog;

    goto :goto_22

    .line 422
    :sswitch_8a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    .local v0, dialog1:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090013

    new-instance v3, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$13;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$15;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_22

    .line 402
    nop

    :sswitch_data_ce
    .sparse-switch
        0x4 -> :sswitch_23
        0x7d4 -> :sswitch_8a
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 522
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->connection_info:Landroid/view/MenuItem;

    .line 524
    const/4 v0, 0x1

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->changeServer:Landroid/view/MenuItem;

    .line 526
    const/4 v0, 0x2

    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->changePlayer:Landroid/view/MenuItem;

    .line 528
    const/4 v0, 0x3

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->detail:Landroid/view/MenuItem;

    .line 530
    const/4 v0, 0x4

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->settings:Landroid/view/MenuItem;

    .line 532
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    :cond_9
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 233
    const-string v0, "DLNA"

    const-string v1, "Destroy DLNAHomeScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v2, 0x1

    .line 608
    if-eq p1, v5, :cond_9

    if-ne p1, v6, :cond_41

    :cond_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41

    .line 613
    if-ne p1, v5, :cond_2e

    .line 614
    :try_start_22
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeUp()V

    .line 627
    :cond_2d
    :goto_2d
    return v2

    .line 615
    :cond_2e
    if-ne p1, v6, :cond_2d

    .line 616
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeDown()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_3c

    goto :goto_2d

    .line 618
    :catch_3c
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 622
    .end local v0           #e:Ljava/lang/Exception;
    :cond_41
    const/4 v3, 0x4

    if-ne p1, v3, :cond_52

    .line 623
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 624
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    .line 627
    .end local v1           #msg:Landroid/os/Message;
    :cond_52
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x2

    const/high16 v4, 0x2

    const/4 v0, 0x1

    .line 551
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 552
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 553
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 604
    :cond_2b
    :goto_2b
    return v0

    .line 556
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_3c

    move-result v1

    if-nez v1, :cond_40

    .line 557
    const/4 v0, 0x0

    goto :goto_2b

    .line 558
    :catch_3c
    move-exception v1

    .line 559
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 561
    :cond_40
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 565
    :cond_4f
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 566
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 569
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 574
    :cond_8a
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 575
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 576
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2b

    .line 583
    :cond_c8
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 584
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 585
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 586
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2b

    .line 592
    :cond_106
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 593
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_140

    .line 595
    new-instance v2, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v2, v1}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "detail"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2b

    .line 600
    :cond_140
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->showDialog(I)V

    goto/16 :goto_2b

    .line 604
    :cond_147
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_2b
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 732
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 733
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;

    .line 214
    :cond_7
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 217
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 218
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->removePlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 219
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->enableListHilight(Z)V

    .line 221
    return-void
.end method

.method public onPlaylistChanged()V
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 964
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->changePlayer:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->changeServer:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    :cond_24
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_33

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->connection_info:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 546
    :cond_33
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 168
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 170
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-nez v2, :cond_16

    .line 171
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 174
    :cond_16
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, stopIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "from"

    const-string v3, "com.sec.android.app.dlna"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FINISH_DMC"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setMediaName()V

    .line 182
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isCurrentMediaSeekable()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setupProgressBar(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_e7

    .line 184
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl()V

    .line 188
    :goto_63
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isPrevClicked:Z

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.dlna.player_started"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a3

    .line 193
    const-string v2, "DLNA"

    const-string v3, "DLNAHomeScreen::onResume BUFFER_GONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    iget-object v2, v2, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 201
    :cond_a3
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item TotalCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 204
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->addPlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->enableListHilight(Z)V

    .line 208
    return-void

    .line 186
    .end local v0           #list:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_e7
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl_Landscape()V

    goto/16 :goto_63
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 163
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addGuiHandler(Landroid/os/Handler;)V

    .line 164
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onStart()V

    .line 165
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->guiHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->removeGuiHandler(Landroid/os/Handler;)V

    .line 226
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onStop()V

    .line 227
    return-void
.end method
