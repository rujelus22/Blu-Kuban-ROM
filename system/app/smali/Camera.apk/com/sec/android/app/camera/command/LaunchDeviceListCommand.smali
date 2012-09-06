.class public Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchDeviceListCommand.java"


# static fields
.field public static sAnchor:Lcom/sec/android/glview/TwGLImage;


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .registers 6
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 50
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 51
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 52
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 53
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 11

    .prologue
    const/16 v2, 0x36

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v9

    .line 67
    .local v9, wifidirectON:Z
    if-nez v9, :cond_d

    .line 105
    :goto_c
    return-void

    .line 70
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 71
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_38

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 73
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v1, :cond_5b

    .line 77
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4294

    const/high16 v4, 0x4305

    const v5, 0x7f020176

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    sput-object v1, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 82
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 86
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 87
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 88
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    move-object v1, v0

    .line 89
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v1

    if-nez v1, :cond_a4

    .line 92
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 95
    :cond_8b
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 100
    .end local v8           #text:Ljava/lang/String;
    :cond_a4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_af

    .line 101
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_c

    .line 103
    :cond_af
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_c
.end method

.method public setSliderDirection(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    .line 61
    return-void
.end method

.method public setZOrder(I)V
    .registers 2
    .parameter "zOrder"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->mZOrder:I

    .line 57
    return-void
.end method
