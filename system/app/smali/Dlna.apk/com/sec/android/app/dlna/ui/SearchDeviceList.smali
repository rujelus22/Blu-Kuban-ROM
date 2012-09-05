.class public Lcom/sec/android/app/dlna/ui/SearchDeviceList;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "SearchDeviceList.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;
    }
.end annotation


# instance fields
.field private final ANIMATION_START:I

.field private final ANIMATION_STOP:I

.field private final CONTENT_DETAIL_MENU:I

.field private final FINISH_ALLSHARE:I

.field private final REFRESH:I

.field private final STOP_ANIMATION:I

.field private animationThread:Ljava/lang/Thread;

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

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field mGuiHandler:Landroid/os/Handler;

.field private mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mStopAnimation:Z

.field private mode:I

.field private scanning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x3eb

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->CONTENT_DETAIL_MENU:I

    .line 68
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->REFRESH:I

    .line 70
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->STOP_ANIMATION:I

    .line 72
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->ANIMATION_START:I

    .line 74
    iput v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->ANIMATION_STOP:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I

    .line 78
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 80
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceListView:Landroid/widget/ListView;

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    .line 90
    iput v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->FINISH_ALLSHARE:I

    .line 417
    new-instance v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$6;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dlna/ui/SearchDeviceList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->scanning:Landroid/view/View;

    return-object v0
.end method

.method private fillDeviceList()V
    .registers 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    :cond_d
    return-void
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->fillDeviceList()V

    .line 363
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->fillDeviceList()V

    .line 367
    return-void
.end method

.method public initView()V
    .registers 10

    .prologue
    const/16 v8, 0x11a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 107
    .local v3, emptyview:Landroid/widget/ImageView;
    const v4, 0x7f070013

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, emptytext:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .local v0, P1:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .local v1, P2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_60

    .line 112
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v6, :cond_46

    .line 113
    const/16 v4, 0x39

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    :cond_3f
    :goto_3f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void

    .line 115
    :cond_46
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v7, :cond_57

    .line 116
    const/16 v4, 0x4d

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3f

    .line 119
    :cond_57
    const/16 v4, 0x16

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3f

    .line 122
    :cond_60
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_3f

    .line 123
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v6, :cond_7b

    .line 124
    invoke-virtual {v0, v5, v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3f

    .line 126
    :cond_7b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v7, :cond_8a

    .line 127
    invoke-virtual {v0, v5, v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3f

    .line 130
    :cond_8a
    const/16 v4, 0xb6

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3f
.end method

.method public notifyActivityEvent(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_c

    .line 442
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 443
    return-void

    .line 439
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->finish()V

    goto :goto_3

    .line 437
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

    .line 400
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 401
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    if-ne p2, v1, :cond_f

    .line 402
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->setResult(I)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->finish()V

    .line 405
    :cond_f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->saveConnection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->SaveConnection(Ljava/lang/String;)V

    .line 429
    const-string v0, "DLNA"

    const-string v1, "SearchDevice onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 431
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->showDialog(I)V

    .line 434
    :goto_18
    return-void

    .line 433
    :cond_19
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onBackPressed()V

    goto :goto_18
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->initView()V

    .line 103
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 383
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 384
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 385
    if-eqz v0, :cond_28

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2d

    .line 396
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 393
    :catch_2d
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->requestWindowFeature(I)Z

    .line 142
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->setContentView(I)V

    .line 143
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->scanning:Landroid/view/View;

    .line 144
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceListView:Landroid/widget/ListView;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->registerForContextMenu(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    const v1, 0x7f030006

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 155
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    new-instance v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$3;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->scanning:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->animationThread:Ljava/lang/Thread;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 371
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 372
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 373
    .local v2, position:I
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/api/DeviceItem;

    .line 374
    .local v1, item:Lcom/samsung/api/DeviceItem;
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 375
    const v3, 0x7f090033

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 378
    :goto_1c
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    const v6, 0x7f09001b

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 379
    return-void

    .line 377
    :cond_26
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 320
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_33

    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003f

    new-instance v3, Lcom/sec/android/app/dlna/ui/SearchDeviceList$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$5;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/app/dlna/ui/SearchDeviceList$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$4;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 337
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :goto_32
    return-object v1

    :cond_33
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_32
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 414
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 415
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->setIntent(Landroid/content/Intent;)V

    .line 315
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 342
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 343
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 346
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    const-string v0, "DLNA"

    const-string v1, "SearchDeviceList onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 351
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->LoadConnection()V

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->fillDeviceList()V

    .line 359
    return-void
.end method

.method public refreshList()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->scanning:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 282
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    iget v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 284
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 286
    :cond_22
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->fillDeviceList()V

    .line 287
    return-void
.end method

.method public saveConnection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-nez v0, :cond_29

    .line 447
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->CHECK:Ljava/lang/String;

    .line 451
    :goto_26
    sget-object v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->CHECK:Ljava/lang/String;

    return-object v0

    .line 449
    :cond_29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->CHECK:Ljava/lang/String;

    goto :goto_26
.end method

.method public start_activity()V
    .registers 4

    .prologue
    .line 455
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto connect to recent device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->Remembered_Device_UDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->Remembered_Device_UDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDevice(Ljava/lang/String;)Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/DLNAManager;->Remembered_Device:Z

    .line 461
    return-void
.end method
