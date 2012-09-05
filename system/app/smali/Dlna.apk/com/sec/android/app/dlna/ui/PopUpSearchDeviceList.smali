.class public Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;
    }
.end annotation


# instance fields
.field private final ANIMATION_START:I

.field private final ANIMATION_STOP:I

.field private final AUTOPLAY_DMC:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final CONTENT_DETAIL_MENU:I

.field private final REFRESH:I

.field private final SHOWTOAST_ACTION_FAILED:I

.field private final STOP_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private final WAITING_POPUP_SELECT_PLAYER:I

.field private animationThread:Ljava/lang/Thread;

.field private cancelButton:Landroid/widget/Button;

.field private deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListView:Landroid/widget/ListView;

.field private headerIcon:Landroid/widget/ProgressBar;

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field mGuiHandler:Landroid/os/Handler;

.field private mMyPlayer:Lcom/samsung/api/DeviceItem;

.field private mStopAnimation:Z

.field private mode:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private refreshButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 64
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "PopUpSearchDeviceList."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->CLASS_NAME:Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->CONTENT_DETAIL_MENU:I

    .line 75
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->REFRESH:I

    .line 77
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->WAITING_POPUP_SELECT_PLAYER:I

    .line 79
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->STOP_ANIMATION:I

    .line 81
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->ANIMATION_START:I

    .line 83
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->ANIMATION_STOP:I

    .line 85
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->AUTOPLAY_DMC:I

    .line 87
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->SHOWTOAST_ACTION_FAILED:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceListView:Landroid/widget/ListView;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->refreshButton:Landroid/widget/Button;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->cancelButton:Landroid/widget/Button;

    .line 554
    new-instance v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$6;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->clearDimState()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private clearDim(Lcom/sec/android/app/dlna/model/Playlist;)V
    .registers 5
    .parameter "list"

    .prologue
    .line 569
    if-eqz p1, :cond_16

    .line 570
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 571
    invoke-virtual {p1, v0}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 574
    .end local v0           #i:I
    :cond_16
    return-void
.end method

.method private clearDimState()V
    .registers 3

    .prologue
    .line 564
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 565
    .local v0, currentPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->clearDim(Lcom/sec/android/app/dlna/model/Playlist;)V

    .line 566
    return-void
.end method

.method private fillDeviceList()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    :cond_b
    return-void
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->fillDeviceList()V

    .line 493
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->fillDeviceList()V

    .line 497
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 577
    packed-switch p1, :pswitch_data_c

    .line 582
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 583
    return-void

    .line 579
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->finish()V

    goto :goto_3

    .line 577
    nop

    :pswitch_data_c
    .packed-switch 0x2f4
        :pswitch_7
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 531
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    if-ne p2, v1, :cond_f

    .line 533
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->setResult(I)V

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->finish()V

    .line 537
    :cond_f
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 513
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 514
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 515
    if-eqz v0, :cond_28

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2d

    .line 527
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 523
    :catch_2d
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const v12, 0x7f090033

    const/4 v11, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->requestWindowFeature(I)Z

    .line 114
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->setContentView(I)V

    .line 116
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceListView:Landroid/widget/ListView;

    .line 117
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->refreshButton:Landroid/widget/Button;

    .line 118
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->cancelButton:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->registerForContextMenu(Landroid/view/View;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    const v1, 0x7f030016

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;

    .line 126
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 129
    :try_start_67
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v7

    .line 130
    .local v7, devList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 131
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/api/DeviceItem;

    .line 132
    .local v10, localDevice:Lcom/samsung/api/DeviceItem;
    new-instance v0, Lcom/samsung/api/DeviceItem;

    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "SPH-D710"

    invoke-virtual {v10}, Lcom/samsung/api/DeviceItem;->getCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/api/DeviceItem;->getModelNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/api/DeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;
    :try_end_9c
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_67 .. :try_end_9c} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9c} :catch_102

    .line 145
    .end local v7           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    .end local v10           #localDevice:Lcom/samsung/api/DeviceItem;
    :goto_9c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/api/DeviceItem;->setDeviceType(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    new-instance v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->refreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$3;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$4;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iput-boolean v11, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    return-void

    .line 136
    .restart local v7       #devList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    :cond_cf
    :try_start_cf
    new-instance v0, Lcom/samsung/api/DeviceItem;

    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/samsung/api/DeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;
    :try_end_e7
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_cf .. :try_end_e7} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e7} :catch_102

    goto :goto_9c

    .line 138
    .end local v7           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    :catch_e8
    move-exception v9

    .line 139
    .local v9, e1:Lcom/samsung/api/DMCAPIException;
    new-instance v0, Lcom/samsung/api/DeviceItem;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/samsung/api/DeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;

    .line 140
    invoke-virtual {v9}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_9c

    .line 141
    .end local v9           #e1:Lcom/samsung/api/DMCAPIException;
    :catch_102
    move-exception v8

    .line 142
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Lcom/samsung/api/DeviceItem;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/samsung/api/DeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;

    .line 143
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9c
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 501
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 502
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 503
    .local v2, position:I
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/api/DeviceItem;

    .line 504
    .local v1, item:Lcom/samsung/api/DeviceItem;
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 505
    const v3, 0x7f090033

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 508
    :goto_1c
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    const v6, 0x7f09001b

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 509
    return-void

    .line 507
    :cond_26
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 450
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2c

    .line 451
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 455
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    .line 472
    :goto_2b
    return-object v0

    :cond_2c
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_2b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 551
    :cond_12
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 552
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->setIntent(Landroid/content/Intent;)V

    .line 444
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 477
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 478
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 481
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 482
    const-string v0, "DLNA"

    const-string v1, "PopUp SearchDeviceList onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 485
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    .line 487
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->fillDeviceList()V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.dlna.player_started"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onWindowFocusChanged(Z)V

    .line 403
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 404
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->animationThread:Ljava/lang/Thread;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    :cond_18
    return-void
.end method

.method public refreshList()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 413
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 415
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 416
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    iget v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    .line 418
    :cond_2c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 419
    :cond_33
    iget v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    .line 420
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 422
    :cond_3f
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->fillDeviceList()V

    .line 423
    return-void
.end method
