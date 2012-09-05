.class public Lcom/sec/android/app/dlna/ui/AddinPlayActivity;
.super Landroid/app/Activity;
.source "AddinPlayActivity.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;
    }
.end annotation


# static fields
.field public static PlayList_Action:Ljava/lang/String;

.field public static SELECTED_NO_FILES:I

.field public static createDLNA:Z

.field public static currIndex:I

.field private static deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

.field public static mAutoPlay:Z

.field public static mRefreshList:Z

.field private static uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ADDIN_HANDLE_STOP:I

.field private final BACK_KEY:I

.field private final BUFFER_GONE:I

.field private final BUFFER_VISIBLE:I

.field private final CHANGE_PLAYER:Ljava/lang/String;

.field private final CHANGE_PROGRESS:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final CONNECT_WIFI:I

.field private final CONTENT_DETAIL_MENU:I

.field private final COUNT_LIMIT:I

.field private final DELAY:I

.field protected final FILL_LIST:I

.field private final FINISH_ALLSHARE:I

.field private GETTHUMBNAILTIME:I

.field protected final INIT_MEDIA:I

.field private final INVALID_ACTION:I

.field private final NEXT_ITEM_ERROR:I

.field private final NEXT_ITEM_RETURN:I

.field private final NEXT_ITEM_SUCCESS:I

.field private final PLAY_AGAIN:I

.field private final REFRESH_HEADER:I

.field protected final REFRESH_LIST:I

.field private final SELECTED_DEVICE:Ljava/lang/String;

.field private final SHOW_ERROR_TOAST:I

.field private final SHOW_NEXT_IMAGE:I

.field private final STOP_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN_FILE_TYPE:I

.field private final WHEELPROGRESS:I

.field final WIFI_SETTING_START_CODE:I

.field private bItemPlayTry:Z

.field private bOnCreated:Z

.field private c:Landroid/database/Cursor;

.field private changePlayer:Landroid/view/MenuItem;

.field private connection_info:Landroid/view/MenuItem;

.field private detail:Landroid/view/MenuItem;

.field private deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

.field private durationOfMultiSelectedFiles:[J

.field private initDialog:Landroid/app/ProgressDialog;

.field private isWifiSettingsLaunched:Z

.field private listView:Landroid/widget/ListView;

.field private mAllShareReceiver:Landroid/content/BroadcastReceiver;

.field private mBrowsedItemCnt:I

.field private mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIsBuffering:Z

.field private mMediaType:Ljava/lang/String;

.field private mMimeType:I

.field private mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressHolder:Landroid/view/View;

.field private mStopAnimation:Z

.field private mThumbnailCreateThread:Ljava/lang/Thread;

.field private mThumbnailHandler:Landroid/os/Handler;

.field private mWaitNetworkConnecting:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

.field private mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

.field private noOfFilesSelected:I

.field private progressDialog:Landroid/app/AlertDialog;

.field private progressDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private requestDialog:Landroid/app/ProgressDialog;

.field private selectedUris:[Ljava/lang/String;

.field private shuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private sizeOfMultiselectedFiles:[Ljava/lang/String;

.field private storingUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private titleOfMultiSlectedFiles:[Ljava/lang/String;

.field private waitNetworkConnectingCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const-string v0, "Playlist.start"

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->PlayList_Action:Ljava/lang/String;

    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createDLNA:Z

    .line 182
    sput-boolean v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    .line 183
    sput-boolean v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mRefreshList:Z

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    .line 199
    sput v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->currIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const-string v0, "DLNA_Addin"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->TAG:Ljava/lang/String;

    .line 98
    const-string v0, "AddinPlayActivity."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CLASS_NAME:Ljava/lang/String;

    .line 100
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->FILL_LIST:I

    .line 101
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->INIT_MEDIA:I

    .line 102
    const/16 v0, 0x1f6

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->REFRESH_LIST:I

    .line 104
    const/16 v0, 0x1f7

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->SHOW_NEXT_IMAGE:I

    .line 105
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CHANGE_PROGRESS:I

    .line 106
    const/16 v0, 0x6f1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CONNECT_WIFI:I

    .line 107
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->REFRESH_HEADER:I

    .line 108
    const/16 v0, 0x44d

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->STOP_ANIMATION:I

    .line 109
    const/16 v0, 0x708

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->INVALID_ACTION:I

    .line 110
    const/16 v0, 0x709

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->UNKNOWN_FILE_TYPE:I

    .line 111
    const/16 v0, 0x70a

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->WHEELPROGRESS:I

    .line 112
    const/16 v0, 0x76c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->PLAY_AGAIN:I

    .line 114
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->NEXT_ITEM_SUCCESS:I

    .line 115
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->NEXT_ITEM_ERROR:I

    .line 116
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->NEXT_ITEM_RETURN:I

    .line 118
    const/16 v0, 0x834

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->ADDIN_HANDLE_STOP:I

    .line 120
    const/16 v0, 0x898

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->BUFFER_VISIBLE:I

    .line 121
    const/16 v0, 0x899

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->SHOW_ERROR_TOAST:I

    .line 122
    const/16 v0, 0x89a

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->BUFFER_GONE:I

    .line 124
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CONTENT_DETAIL_MENU:I

    .line 125
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->DELAY:I

    .line 126
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->COUNT_LIMIT:I

    .line 127
    const/16 v0, 0x6f3

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->FINISH_ALLSHARE:I

    .line 128
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->BACK_KEY:I

    .line 129
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->WIFI_SETTING_START_CODE:I

    .line 136
    const-string v0, "Selected.Device"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->SELECTED_DEVICE:Ljava/lang/String;

    .line 137
    const-string v0, "Change_Player"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CHANGE_PLAYER:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    .line 148
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 150
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailHandler:Landroid/os/Handler;

    .line 154
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 158
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->changePlayer:Landroid/view/MenuItem;

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    .line 171
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    .line 175
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 181
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWaitNetworkConnecting:Z

    .line 184
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z

    .line 192
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 194
    iput v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    .line 195
    iput v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I

    .line 211
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    .line 213
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z

    .line 1645
    new-instance v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$26;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    .line 1991
    iput v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    .line 1992
    const v0, 0xe4e1c0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->GETTHUMBNAILTIME:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setMediaName()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Landroid/widget/ListView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createAdapter(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissRequestDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setPlaylistControl()V

    return-void
.end method

.method static synthetic access$1900()Lcom/samsung/api/DeviceItem;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setupProgressBar()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissInitDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showInitDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sizeOfMultiselectedFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;J)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->get_Thumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->inNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->doShuffle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->noOfFilesSelected:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setCurrentIndex(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->tryToNextItem(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleSeek(I)V

    return-void
.end method

.method private createAdapter(Landroid/widget/ListView;)V
    .registers 4
    .parameter

    .prologue
    .line 1006
    new-instance v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    const v1, 0x7f030011

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_23

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 1013
    const-wide/16 v0, 0x3e8

    :try_start_20
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_34

    .line 1019
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CreateThumbnailThread()V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1022
    new-instance v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1030
    return-void

    .line 1014
    :catch_34
    move-exception v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23
.end method

.method private createImageThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2044
    .line 2045
    const/4 v6, 0x0

    .line 2047
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2048
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2050
    if-eqz v3, :cond_95

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_95

    .line 2051
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2054
    :try_start_19
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_22} :catch_32

    move-result v1

    .line 2058
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2062
    :goto_26
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2064
    :try_start_2d
    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_30} :catch_59
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_77

    move-result-object v2

    .line 2071
    :goto_31
    return-object v2

    .line 2055
    :catch_32
    move-exception v1

    .line 2056
    :try_start_33
    const-string v4, "DLNA_Addin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException occured content : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_54

    .line 2058
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 2059
    goto :goto_26

    .line 2058
    :catchall_54
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2065
    :catch_59
    move-exception v0

    .line 2066
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException occured content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 2067
    :catch_77
    move-exception v0

    .line 2068
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_95
    move v1, v6

    goto :goto_26
.end method

.method private createVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2115
    .line 2118
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2120
    if-eqz v1, :cond_11b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_11b

    .line 2121
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2124
    :try_start_18
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_21} :catch_3a

    move-result-object v0

    .line 2128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2133
    :goto_25
    if-eqz p1, :cond_39

    .line 2134
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2137
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2138
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->GETTHUMBNAILTIME:I

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_35} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_35} :catch_a0

    move-result-object v2

    .line 2145
    :try_start_36
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_39} :catch_100

    .line 2152
    :cond_39
    :goto_39
    return-object v2

    .line 2125
    :catch_3a
    move-exception v0

    .line 2126
    :try_start_3b
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException occured content :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_5c

    .line 2128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 2129
    goto :goto_25

    .line 2128
    :catchall_5c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2139
    :catch_61
    move-exception v0

    .line 2140
    :try_start_62
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException occured content :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_dd

    .line 2145
    :try_start_7e
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_39

    .line 2146
    :catch_82
    move-exception v0

    .line 2147
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9c
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2141
    :catch_a0
    move-exception v0

    .line 2142
    :try_start_a1
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException occured content :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a1 .. :try_end_bd} :catchall_dd

    .line 2145
    :try_start_bd
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_39

    .line 2146
    :catch_c2
    move-exception v0

    .line 2147
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    .line 2144
    :catchall_dd
    move-exception v0

    .line 2145
    :try_start_de
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_e1
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_e1} :catch_e2

    .line 2144
    :goto_e1
    throw v0

    .line 2146
    :catch_e2
    move-exception v1

    .line 2147
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 2146
    :catch_100
    move-exception v0

    .line 2147
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    :cond_11b
    move-object v0, v2

    goto/16 :goto_25
.end method

.method private dismissInitDialog()V
    .registers 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1614
    :cond_12
    return-void
.end method

.method private dismissRequestDialog()V
    .registers 3

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1635
    :cond_12
    return-void
.end method

.method private doShuffle()V
    .registers 4

    .prologue
    .line 1749
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShuffle,, before,, shuffleList \t\t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 1752
    const-string v0, "DLNA_Addin"

    const-string v1, "doShuffle,, shuffleList != null, removelist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1756
    :cond_2a
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1758
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShuffle,, after,, uris \t\t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShuffle,, after,, shuffleList \t\t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->tryToNextItem(I)V

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x898

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1763
    return-void
.end method

.method private fillDeviceList()V
    .registers 5

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1588
    :cond_d
    return-void
.end method

.method private getAudioAlbumArt(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2075
    .line 2076
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2077
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2079
    if-eqz v3, :cond_117

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_117

    .line 2080
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2083
    :try_start_18
    const-string v1, "album_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_21} :catch_68

    move-result-object v1

    .line 2087
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2094
    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/audio/albumart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2095
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** I receive the albumArtURI content "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :try_start_58
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_8f

    move-result-object v1

    .line 2099
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_5e
    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_112
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_114

    move-result-object v2

    .line 2104
    if-eqz v1, :cond_67

    .line 2105
    :try_start_64
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_f7

    .line 2111
    :cond_67
    :goto_67
    return-object v2

    .line 2084
    :catch_68
    move-exception v1

    .line 2085
    :try_start_69
    const-string v4, "DLNA_Addin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException occured content :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_69 .. :try_end_85} :catchall_8a

    .line 2087
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    .line 2088
    goto :goto_25

    .line 2087
    :catchall_8a
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2100
    :catch_8f
    move-exception v0

    move-object v1, v2

    .line 2101
    :goto_91
    :try_start_91
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException occured content :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_91 .. :try_end_ad} :catchall_112

    .line 2104
    if-eqz v1, :cond_67

    .line 2105
    :try_start_af
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_67

    .line 2106
    :catch_b3
    move-exception v0

    .line 2107
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cd
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 2103
    :catchall_d1
    move-exception v0

    move-object v1, v2

    .line 2104
    :goto_d3
    if-eqz v1, :cond_d8

    .line 2105
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 2103
    :cond_d8
    :goto_d8
    throw v0

    .line 2106
    :catch_d9
    move-exception v1

    .line 2107
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 2106
    :catch_f7
    move-exception v0

    .line 2107
    const-string v1, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured content :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 2103
    :catchall_112
    move-exception v0

    goto :goto_d3

    .line 2100
    :catch_114
    move-exception v0

    goto/16 :goto_91

    :cond_117
    move-object v1, v2

    goto/16 :goto_25
.end method

.method public static getCurrentIndex()I
    .registers 1

    .prologue
    .line 1733
    sget v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->currIndex:I

    return v0
.end method

.method private getMimeType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1995
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 1996
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 1997
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    .line 2001
    :goto_1c
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    .line 2005
    :goto_1e
    return v0

    .line 1999
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    goto :goto_1c

    .line 2003
    :cond_2a
    iput v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    .line 2005
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I

    goto :goto_1e
.end method

.method private get_Thumbnail(I)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "position"

    .prologue
    const/16 v6, 0x68

    const/4 v5, 0x1

    const/16 v4, 0x4c

    .line 2010
    const/4 v0, 0x0

    .line 2011
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2012
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2014
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getMimeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 2015
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2017
    if-eqz v0, :cond_32

    .line 2018
    const/16 v2, 0x65

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2040
    :goto_31
    return-object v2

    .line 2021
    :cond_32
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_31

    .line 2022
    :cond_3f
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getMimeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_64

    .line 2023
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getAudioAlbumArt(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2025
    if-eqz v0, :cond_7e

    .line 2026
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_5f

    .line 2027
    invoke-static {v0, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_31

    .line 2029
    :cond_5f
    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_31

    .line 2032
    :cond_64
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getMimeType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7e

    .line 2033
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createImageThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2035
    if-eqz v0, :cond_7e

    .line 2036
    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_31

    .line 2040
    :cond_7e
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private handleSeek(I)V
    .registers 3
    .parameter "seekTime"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestSeek(I)V

    .line 1432
    return-void
.end method

.method private inNotifyDataSetChanged()V
    .registers 3

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$28;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$28;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2242
    return-void
.end method

.method private isMimeType(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2245
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_b

    .line 2246
    const/4 v0, 0x5

    .line 2252
    :goto_a
    return v0

    .line 2247
    :cond_b
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_15

    .line 2248
    const/4 v0, 0x3

    goto :goto_a

    .line 2249
    :cond_15
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 2250
    const/4 v0, 0x4

    goto :goto_a

    .line 2252
    :cond_1f
    const/4 v0, 0x6

    goto :goto_a
.end method

.method private isMutiFiles()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1045
    sget v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->SELECTED_NO_FILES:I

    if-le v1, v0, :cond_6

    .line 1048
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setCurrentIndex(I)V
    .registers 5
    .parameter

    .prologue
    .line 1737
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinPlayActivity,, setIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    if-gez p1, :cond_1e

    .line 1740
    const/4 p1, 0x0

    .line 1745
    :cond_1b
    :goto_1b
    sput p1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->currIndex:I

    .line 1746
    return-void

    .line 1741
    :cond_1e
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1b

    .line 1742
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1b
.end method

.method private setMediaName()V
    .registers 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setMediaName(Ljava/lang/String;)V

    .line 1390
    :cond_17
    return-void
.end method

.method private setPlaylistControl()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1393
    const/4 v2, 0x0

    .line 1395
    .local v2, mMimeType:I
    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3d

    .line 1396
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v2

    .line 1402
    :goto_1b
    :try_start_1b
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1404
    .local v0, Params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x5

    if-ne v2, v3, :cond_50

    .line 1405
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v3, :cond_46

    .line 1406
    const/16 v3, 0x208

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1420
    :goto_32
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlGUI(I)V
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_3c} :catch_4b

    .line 1425
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_3c
    return-void

    .line 1398
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_1b

    .line 1408
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_46
    const/16 v3, 0x376

    :try_start_48
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_4a
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_4a} :catch_4b

    goto :goto_32

    .line 1422
    .end local v0           #Params:Landroid/widget/LinearLayout$LayoutParams;
    :catch_4b
    move-exception v1

    .line 1423
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3c

    .line 1410
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #Params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_50
    :try_start_50
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v3, :cond_69

    .line 1411
    const/16 v3, 0x197

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1416
    :goto_5c
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->showRepeat(Z)V

    .line 1417
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->showShuffle(Z)V

    goto :goto_32

    .line 1413
    :cond_69
    const/16 v3, 0x306

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_6d} :catch_4b

    goto :goto_5c
.end method

.method private setupProgressBar()V
    .registers 6

    .prologue
    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, duration:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J

    sget v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->currIndex:I

    aget-wide v3, v3, v4

    long-to-int v3, v3

    div-int/lit16 v0, v3, 0x3e8

    .line 1554
    if-lez v0, :cond_13

    .line 1555
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 1565
    :goto_12
    return-void

    .line 1557
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getTotalDuration()I

    move-result v0

    .line 1558
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    goto :goto_12

    .line 1560
    :catch_20
    move-exception v2

    .line 1561
    .local v2, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_12

    .line 1562
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :catch_25
    move-exception v1

    .line 1563
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private showInitDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1596
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissInitDialog()V

    .line 1597
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1601
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$24;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$24;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1609
    return-void
.end method

.method private showRequestDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1617
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissRequestDialog()V

    .line 1618
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$25;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$25;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1630
    return-void
.end method

.method private stringForTime(J)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v6, 0x3c

    .line 2257
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 2258
    rem-long v2, v0, v6

    .line 2259
    div-long v4, v0, v6

    rem-long/2addr v4, v6

    .line 2260
    const-wide/16 v6, 0xe10

    div-long/2addr v0, v6

    .line 2262
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryToNextItem(I)V
    .registers 5
    .parameter "nextItemIndex"

    .prologue
    .line 1504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z

    .line 1506
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setMediaName()V

    .line 1508
    sget-object v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/dlna/dlnaservice/ContentsHelper;->getContentInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1512
    .local v0, map:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->setContents(Ljava/util/HashMap;)V

    .line 1513
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1514
    return-void
.end method

.method private updateProgressBar()V
    .registers 4

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getCurrentPosition()I

    move-result v0

    .line 1569
    .local v0, pos:I
    if-lez v0, :cond_14

    iget-boolean v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1570
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x89a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1572
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->updateProgressBar(I)V

    .line 1573
    return-void
.end method

.method private urisStore(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1038
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    .line 1039
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urisStore,, storingUris = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urisStore,, pushUri     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void
.end method


# virtual methods
.method public CreateThumbnailThread()V
    .registers 3

    .prologue
    .line 2156
    const-string v0, "DLNA_Addin"

    const-string v1, "in CreateThumbnailThread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 2160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2233
    const-string v0, "DLNA_Addin"

    const-string v1, "exiting CreateThumbnailThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    return-void
.end method

.method protected autoPlayStateToggle(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1053
    if-ne p1, v0, :cond_21

    .line 1054
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    .line 1058
    :goto_6
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinPlayActivity, autoPlayStateToggle,, mAutoPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void

    .line 1056
    :cond_21
    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    goto :goto_6
.end method

.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 4
    .parameter

    .prologue
    .line 1576
    const-string v0, "DLNA_Addin"

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->fillDeviceList()V

    .line 1578
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 4
    .parameter

    .prologue
    .line 1581
    const-string v0, "DLNA_Addin"

    const-string v1, "removed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->fillDeviceList()V

    .line 1583
    return-void
.end method

.method public getCurrentPlaylistUri(I)Landroid/net/Uri;
    .registers 3
    .parameter "mcurrIndex"

    .prologue
    .line 1707
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method protected handleNext()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x834

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1452
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 1453
    const-string v0, "DLNA_Addin"

    const-string v1, "handleNext, uris == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :goto_10
    return-void

    .line 1455
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWaitNetworkConnecting:Z

    if-nez v0, :cond_1c

    .line 1456
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->moveToNext()I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 1477
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v0

    if-eq v0, v4, :cond_98

    .line 1478
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWaitNetworkConnecting:Z

    .line 1479
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinPlayActivity, NETWORK not connected!!,, dlna.getStateType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8d

    .line 1482
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWaitNetworkConnecting:Z

    .line 1483
    iput v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v0

    if-eq v0, v4, :cond_85

    .line 1486
    const/16 v0, 0x76c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto :goto_10

    .line 1458
    :pswitch_5c
    const-string v0, "DLNA_Addin"

    const-string v1, "NEXT_ITEM_RETURN!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    .line 1463
    :pswitch_6b
    const-string v0, "DLNA_Addin"

    const-string v1, "NEXT_ITEM_ERROR!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1465
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->setLastFileInUriListFlag(Z)V

    goto :goto_10

    .line 1469
    :pswitch_7d
    const-string v0, "DLNA_Addin"

    const-string v1, "NEXT_ITEM_SUCCESS!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1488
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10

    .line 1491
    :cond_8d
    iget v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    .line 1492
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->wait_network_connecting()V

    goto/16 :goto_10

    .line 1498
    :cond_98
    iput v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    .line 1499
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWaitNetworkConnecting:Z

    goto/16 :goto_10

    .line 1456
    :pswitch_data_9e
    .packed-switch 0x7d0
        :pswitch_7d
        :pswitch_6b
        :pswitch_5c
    .end packed-switch
.end method

.method protected handlePlayOrPause()V
    .registers 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestPlayorPause()V

    .line 1436
    return-void
.end method

.method protected handleStop()V
    .registers 2

    .prologue
    .line 1439
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestStop()V

    .line 1441
    return-void
.end method

.method protected handleVolumeDown()V
    .registers 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestVolumeDown()V

    .line 1449
    return-void
.end method

.method protected handleVolumeUp()V
    .registers 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestVolumeUp()V

    .line 1445
    return-void
.end method

.method protected isConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 283
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 285
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 295
    :cond_f
    :goto_f
    return v3

    .line 288
    :cond_10
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 289
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 291
    .local v0, ipAddress:I
    if-eqz v0, :cond_f

    .line 295
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public isWifiSettingsLaunched()Z
    .registers 2

    .prologue
    .line 1268
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isWifiSettingsLaunched:Z

    return v0
.end method

.method public moveToNext()I
    .registers 7

    .prologue
    const/16 v1, 0x7d1

    .line 1654
    const-string v0, "DLNA_Addin"

    const-string v2, "AddinPlayActivity,, moveToNext()!! "

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    move v0, v1

    .line 1703
    :goto_e
    return v0

    .line 1660
    :cond_f
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1661
    const-string v0, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "urisSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    if-nez v2, :cond_31

    move v0, v1

    .line 1664
    goto :goto_e

    .line 1667
    :cond_31
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v0

    .line 1668
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcurrIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    if-gez v0, :cond_70

    .line 1672
    const-string v0, "DLNA_Addin"

    const-string v2, "mcurrIndex < 0 error!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1673
    goto :goto_e

    .line 1676
    :cond_70
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->getRepeatState()I

    move-result v3

    packed-switch v3, :pswitch_data_c4

    .line 1696
    :goto_79
    :pswitch_79
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentPlaylistUri(I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c0

    .line 1697
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setCurrentIndex(I)V

    .line 1698
    sget v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->currIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->tryToNextItem(I)V

    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x898

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1700
    const/16 v0, 0x7d0

    goto/16 :goto_e

    .line 1678
    :pswitch_92
    add-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_a1

    .line 1679
    const-string v0, "DLNA_Addin"

    const-string v1, "Can not go nextitem,,  because \'mcurrIndex == list.size()\' ,,,  return false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/16 v0, 0x7d2

    goto/16 :goto_e

    .line 1683
    :cond_a1
    add-int/lit8 v0, v0, 0x1

    .line 1684
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    rem-int/2addr v0, v2

    goto :goto_79

    .line 1692
    :pswitch_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_c0
    move v0, v1

    .line 1703
    goto/16 :goto_e

    .line 1676
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_79
        :pswitch_bd
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 1354
    const-string v0, "DLNA_Addin"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1357
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 1532
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1534
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 1536
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 1541
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x0

    const/16 v9, 0x708

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 400
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setContentView(I)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.startAddin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    :try_start_16
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_11f

    .line 409
    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.startAllShare"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.startAddinPlay"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showRequestDialog()V

    .line 413
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->listView:Landroid/widget/ListView;

    .line 414
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "wakelock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 416
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MediaControlView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setPrevClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setStopClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeUpClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVolumeDownClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/app/dlna/view/MediaControlView;->initProgressBar(II)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    if-nez v0, :cond_d7

    .line 539
    new-instance v0, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-static {v0}, Lcom/samsung/util/Debugs;->addDebugOutputHandler(Lcom/samsung/util/DebugOutputHandler;)V

    .line 541
    invoke-static {}, Lcom/samsung/util/Debugs;->on()V

    .line 544
    :cond_d7
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_f0

    .line 545
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 546
    const-string v1, "mlock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 550
    :cond_f0
    new-instance v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    .line 790
    iput-boolean v6, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mStopAnimation:Z

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Selected.Device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 794
    instance-of v1, v0, Lcom/samsung/api/DeviceItem;

    if-eqz v1, :cond_10b

    .line 795
    check-cast v0, Lcom/samsung/api/DeviceItem;

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    .line 798
    :cond_10b
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 799
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 802
    if-nez v2, :cond_129

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    .line 1001
    :cond_11c
    iput-boolean v8, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z

    .line 1002
    return-void

    .line 405
    :catch_11f
    move-exception v0

    .line 406
    const-string v0, "DLNA_Addin"

    const-string v1, "Fail to broadcast \'startAddin\'"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 805
    :cond_129
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_312

    .line 806
    const-string v0, "DLNA_Addin"

    const-string v3, "AddinPlayActivity, onCreate(), In ACTION_SEND"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 809
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 811
    if-nez v0, :cond_1cd

    .line 812
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    .line 950
    :cond_14d
    :goto_14d
    :try_start_14d
    new-instance v0, Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addGuiHandler(Landroid/os/Handler;)V
    :try_end_160
    .catch Ljava/lang/NullPointerException; {:try_start_14d .. :try_end_160} :catch_357

    .line 957
    :goto_160
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->selectedUris:[Ljava/lang/String;

    if-nez v0, :cond_11c

    .line 958
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v0, :cond_16c

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    .line 962
    :cond_16c
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAYLIST ONCLICK : uris = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storinguris = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uris.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_11c

    .line 967
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->selectedUris:[Ljava/lang/String;

    move v1, v6

    .line 969
    :goto_1b1
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_35d

    .line 970
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->selectedUris:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 969
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b1

    .line 814
    :cond_1cd
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v2, :cond_1dd

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    .line 816
    sget-object v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_1dd
    iput v8, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->noOfFilesSelected:I

    .line 820
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 822
    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 823
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_1fc

    .line 826
    const/16 v0, 0x709

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 828
    :cond_1fc
    const/4 v2, 0x5

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 831
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 832
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    .line 834
    const-string v0, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 835
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "_data = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 842
    if-nez v0, :cond_235

    .line 843
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 846
    :cond_235
    :try_start_235
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 847
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 848
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 856
    const-string v0, "DLNA_Addin"

    const-string v1, "===addin :can not find contents uri==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_25e} :catch_260

    goto/16 :goto_14d

    .line 859
    :catch_260
    move-exception v0

    .line 860
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 863
    :cond_266
    const-string v0, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "_data = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 871
    if-nez v0, :cond_28b

    .line 872
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 875
    :cond_28b
    :try_start_28b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 876
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 877
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 878
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 884
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 885
    const-string v0, "DLNA_Addin"

    const-string v1, "===addin :can not find contents uri==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_2b4} :catch_2b6

    goto/16 :goto_14d

    .line 888
    :catch_2b6
    move-exception v0

    .line 889
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 892
    :cond_2bc
    const-string v0, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "_data = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 900
    if-nez v0, :cond_2e1

    .line 901
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 904
    :cond_2e1
    :try_start_2e1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 905
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 906
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 907
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 913
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 914
    const-string v0, "DLNA_Addin"

    const-string v1, "===addin :can not find contents uri==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_30a} :catch_30c

    goto/16 :goto_14d

    .line 917
    :catch_30c
    move-exception v0

    .line 918
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_14d

    .line 926
    :cond_312
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 927
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, onCreate(), In ACTION_SEND_MULTIPLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_346

    .line 931
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    .line 933
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->urisStore(Ljava/util/ArrayList;)V

    .line 935
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 936
    sput v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->SELECTED_NO_FILES:I

    .line 937
    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->noOfFilesSelected:I

    .line 939
    invoke-direct {p0, v6}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setCurrentIndex(I)V

    .line 940
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    .line 943
    :cond_346
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z

    move-result v0

    if-ne v0, v8, :cond_14d

    .line 944
    const-string v0, "DLNA_Addin"

    const-string v1, "mAutoPlay == true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sput-boolean v8, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    goto/16 :goto_14d

    .line 953
    :catch_357
    move-exception v0

    .line 954
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_160

    .line 973
    :cond_35d
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;

    .line 974
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sizeOfMultiselectedFiles:[Ljava/lang/String;

    .line 975
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    .line 976
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J

    .line 978
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 979
    :goto_389
    sget-object v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_11c

    .line 981
    :try_start_391
    sget-object v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    .line 982
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    const-string v4, "title"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 985
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sizeOfMultiselectedFiles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    const-string v4, "_size"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 986
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    const-string v4, "mime_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 988
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_3f3

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_405

    .line 991
    :cond_3f3
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->c:Landroid/database/Cursor;

    const-string v4, "duration"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v6
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_405} :catch_408

    .line 979
    :cond_405
    :goto_405
    add-int/lit8 v6, v6, 0x1

    goto :goto_389

    .line 993
    :catch_408
    move-exception v1

    .line 994
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    goto :goto_405
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1517
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1519
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1520
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1521
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 1523
    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1524
    const v0, 0x7f090033

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1528
    :goto_1b
    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const v3, 0x7f09001b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1529
    return-void

    .line 1526
    :cond_26
    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const v2, 0x7f090004

    const v5, 0x1080027

    const/4 v4, 0x1

    const v3, 0x7f09003f

    .line 1097
    sparse-switch p1, :sswitch_data_1ac

    .line 1260
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_11
    return-object v0

    .line 1099
    :sswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$14;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$13;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 1141
    :sswitch_49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1143
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 1144
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1147
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$16;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1153
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$17;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 1161
    :sswitch_75
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1163
    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1165
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$18;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    .line 1197
    :sswitch_9f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1198
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 1199
    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1202
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$20;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$20;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$21;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$21;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    .line 1217
    :sswitch_cc
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mProgressHolder:Landroid/view/View;

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mProgressHolder:Landroid/view/View;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 1219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1222
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_152

    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_152

    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 1228
    :goto_102
    sget-object v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v1, :cond_158

    sget-object v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_158

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1236
    :goto_132
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mProgressHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialog:Landroid/app/AlertDialog;

    goto/16 :goto_11

    .line 1225
    :cond_152
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_102

    .line 1232
    :cond_158
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_132

    .line 1243
    :sswitch_17d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1245
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$23;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$23;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$22;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$22;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    .line 1097
    nop

    :sswitch_data_1ac
    .sparse-switch
        0x6f1 -> :sswitch_12
        0x6f3 -> :sswitch_17d
        0x708 -> :sswitch_49
        0x709 -> :sswitch_9f
        0x70a -> :sswitch_cc
        0x76c -> :sswitch_75
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1277
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->connection_info:Landroid/view/MenuItem;

    .line 1278
    const/4 v0, 0x1

    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->changePlayer:Landroid/view/MenuItem;

    .line 1279
    const/4 v0, 0x2

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->detail:Landroid/view/MenuItem;

    .line 1281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v2, :cond_a

    .line 364
    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 367
    :cond_a
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddin OnDestroy Called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.finishAddin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, intent:Landroid/content/Intent;
    :try_start_18
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2b

    .line 380
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v2, :cond_26

    .line 381
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 382
    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 385
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    if-nez v2, :cond_34

    .line 394
    :goto_2a
    return-void

    .line 376
    :catch_2b
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "Fail to broadcast \'finishAddin\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 388
    .end local v0           #e:Ljava/lang/Exception;
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleStop()V

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopManager()V

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeGuiHandler(Landroid/os/Handler;)V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->terminateManager()V

    goto :goto_2a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v2, 0x1

    .line 1360
    const/4 v1, 0x0

    .line 1362
    .local v1, mMimeType:I
    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2b

    .line 1363
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v1

    .line 1368
    :goto_1e
    if-eq p1, v5, :cond_22

    if-ne p1, v6, :cond_40

    :cond_22
    const/4 v3, 0x5

    if-eq v1, v3, :cond_40

    .line 1371
    if-ne p1, v5, :cond_35

    .line 1372
    :try_start_27
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleVolumeUp()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_3b

    .line 1383
    :cond_2a
    :goto_2a
    return v2

    .line 1365
    :cond_2b
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_1e

    .line 1373
    :cond_35
    if-ne p1, v6, :cond_2a

    .line 1374
    :try_start_37
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleVolumeDown()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2a

    .line 1376
    :catch_3b
    move-exception v0

    .line 1377
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 1383
    .end local v0           #e:Ljava/lang/Exception;
    :cond_40
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2a
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setIntent(Landroid/content/Intent;)V

    .line 309
    const-string v4, "DLNA_Addin"

    const-string v5, "AddInPlayActivity, onNewIntent()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 313
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 316
    .local v1, b:Landroid/os/Bundle;
    if-nez v1, :cond_26

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    .line 352
    :goto_25
    return-void

    .line 319
    :cond_26
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 320
    const-string v4, "DLNA_Addin"

    const-string v5, "AddInPlayActivity, onNewIntent(), In ACTION_SEND"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 323
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 325
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_5e

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    .line 348
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4a
    :goto_4a
    new-instance v4, Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 350
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addGuiHandler(Landroid/os/Handler;)V

    goto :goto_25

    .line 328
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_5e
    sget-object v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v4, :cond_4a

    .line 329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    .line 330
    sget-object v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 334
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6f
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 335
    const-string v4, "DLNA_Addin"

    const-string v5, "AddInPlayActivity, onNewIntent(), In ACTION_SEND_MULTIPLE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 338
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    .line 340
    sget-object v4, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-nez v4, :cond_4a

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finish()V

    goto :goto_4a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/high16 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1295
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f09004e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->refreshPlayerList()V

    .line 1297
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->fillDeviceList()V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44c

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 1350
    :goto_27
    return v0

    .line 1300
    :cond_28
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7a

    .line 1302
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1304
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 1305
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_7c

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    .line 1307
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v3, "android.intent.extra.STREAM"

    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1315
    :goto_6d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v0, "Change_Player"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1319
    :cond_77
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivity(Landroid/content/Intent;)V

    :cond_7a
    move v0, v1

    .line 1321
    goto :goto_27

    .line 1310
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;

    .line 1311
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    const-string v0, "android.intent.extra.STREAM"

    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_6d

    .line 1322
    :cond_93
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    .line 1325
    if-eqz v0, :cond_c8

    .line 1326
    new-instance v2, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v2, v0}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 1327
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "detail"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivity(Landroid/content/Intent;)V

    :goto_c5
    move v0, v1

    .line 1335
    goto/16 :goto_27

    .line 1332
    :cond_c8
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto :goto_c5

    .line 1336
    :cond_ce
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1337
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_e6

    :goto_e3
    move v0, v1

    .line 1347
    goto/16 :goto_27

    .line 1340
    :cond_e6
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Selected.Device"

    sget-object v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e3

    .line 1350
    :cond_103
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_27
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleStop()V

    .line 250
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x89a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.finishAddin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, intent:Landroid/content/Intent;
    :try_start_3b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_65

    .line 260
    :goto_3e
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v2, :cond_44

    .line 261
    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 269
    :cond_44
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v2, :cond_4f

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 271
    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 274
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    if-eqz v2, :cond_64

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeGuiHandler(Landroid/os/Handler;)V

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->terminateManager()V

    .line 280
    .end local v1           #intent:Landroid/content/Intent;
    :cond_64
    return-void

    .line 256
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_65
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "Fail to broadcast \'finishAddin\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1285
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_a

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->connection_info:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1289
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->changePlayer:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1291
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0x6f1

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 222
    const/16 v1, 0x6f1

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->removeDialog(I)V

    .line 223
    const/16 v1, 0x6f1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_28

    .line 231
    :goto_15
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 235
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 236
    return-void

    .line 224
    :catch_28
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->removeDialog(I)V

    goto :goto_15
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 301
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 302
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 357
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 358
    return-void
.end method

.method public play()V
    .registers 5

    .prologue
    .line 1063
    .line 1065
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2d

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1071
    :goto_19
    const/4 v1, 0x5

    if-ne v0, v1, :cond_37

    .line 1072
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, SHOW_NEXT_IMAGE,, mimetype image!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1080
    :goto_2c
    return-void

    .line 1068
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    .line 1075
    :cond_37
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, SHOW_NEXT_IMAGE,, mimetype is not image!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_2c

    .line 1077
    :catch_3f
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method protected setWifiSettingsLaunched(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isWifiSettingsLaunched:Z

    .line 1265
    return-void
.end method

.method public wait_network_connecting()V
    .registers 4

    .prologue
    .line 1084
    :try_start_0
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinPlayActivity, wait_network_connecting()!!,, waitNetworkConnectingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->waitNetworkConnectingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$12;-><init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 1094
    :goto_27
    return-void

    .line 1091
    :catch_28
    move-exception v0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
