.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/AbstractCameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

.field private mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

.field private mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

.field private mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

.field private mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

.field private mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mEmptyView:Lcom/sec/android/app/camera/EmptyView;

.field private mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field private mPostView:Lcom/sec/android/app/camera/PostView;

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

.field private mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

.field private mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 3
    .parameter "activityContext"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 86
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 88
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 89
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 91
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    .line 93
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 94
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    .line 96
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 101
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    .line 105
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 107
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method

.method private clearAllMenus()V
    .registers 6

    .prologue
    .line 443
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 448
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 449
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 450
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 452
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_38
    return-void
.end method


# virtual methods
.method public clearInvisibleListViews()V
    .registers 7

    .prologue
    .line 141
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 145
    .local v3, menusClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    .local v0, id:I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 150
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_17

    .line 151
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->isGLShootingModeMenu(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 153
    :cond_4b
    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    if-eqz v4, :cond_17

    .line 154
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 156
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 157
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_17

    .line 161
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_6a
    return-void
.end method

.method public clearInvisibleViews()V
    .registers 7

    .prologue
    .line 118
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 122
    .local v3, menusClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, id:I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 127
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_17

    .line 128
    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v4, :cond_17

    .line 130
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->isGLShootingModeMenu(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 132
    :cond_4f
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 134
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 135
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_17

    .line 138
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_6a
    return-void
.end method

.method public closeVisibleViews()V
    .registers 6

    .prologue
    .line 177
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 184
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_11

    .line 188
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_4d
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .registers 12
    .parameter "layoutId"
    .parameter "baseLayout"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_9

    .line 438
    :goto_8
    return-object v0

    .line 354
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 356
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_102

    :pswitch_14
    goto :goto_8

    .line 431
    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-nez v0, :cond_27

    .line 432
    new-instance v0, Lcom/sec/android/app/camera/BlackScreen;

    const v3, 0x7f08000e

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/BlackScreen;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    .line 436
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    goto :goto_8

    .line 359
    :pswitch_2a
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-nez v0, :cond_3b

    .line 360
    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    const v3, 0x7f08001e

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CameraBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 363
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    goto :goto_8

    .line 365
    :pswitch_3e
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-nez v0, :cond_4f

    .line 366
    new-instance v0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    const v3, 0x7f080010

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 369
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    goto :goto_8

    .line 371
    :pswitch_52
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-nez v0, :cond_64

    .line 372
    new-instance v0, Lcom/sec/android/app/camera/CameraIndicators;

    const v3, 0x7f080028

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CameraIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 375
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    goto :goto_8

    .line 377
    :pswitch_67
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    if-nez v0, :cond_79

    .line 378
    new-instance v0, Lcom/sec/android/app/camera/CamcorderIndicators;

    const v3, 0x7f080019

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 381
    :cond_79
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    goto :goto_8

    .line 383
    :pswitch_7c
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    if-nez v0, :cond_8e

    .line 384
    new-instance v0, Lcom/sec/android/app/camera/TimerCounting;

    const v3, 0x7f08004b

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/TimerCounting;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    .line 387
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    goto/16 :goto_8

    .line 397
    :pswitch_92
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    if-nez v0, :cond_a5

    .line 398
    new-instance v0, Lcom/sec/android/app/camera/PostView;

    const v3, 0x7f080048

    const/16 v6, 0x12

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PostView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    .line 402
    :cond_a5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    goto/16 :goto_8

    .line 404
    :pswitch_a9
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-nez v0, :cond_bb

    .line 405
    new-instance v0, Lcom/sec/android/app/camera/EmptyView;

    const v3, 0x7f080035

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/EmptyView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 409
    :cond_bb
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    goto/16 :goto_8

    .line 411
    :pswitch_bf
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    if-nez v0, :cond_d1

    .line 412
    new-instance v0, Lcom/sec/android/app/camera/HelptextForShootingMode;

    const v3, 0x7f080036

    const/4 v6, 0x6

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/HelptextForShootingMode;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 416
    :cond_d1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    goto/16 :goto_8

    .line 418
    :pswitch_d5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    if-nez v0, :cond_e7

    .line 419
    new-instance v0, Lcom/sec/android/app/camera/SelfShotView;

    const v3, 0x7f08004a

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/SelfShotView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    .line 423
    :cond_e7
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    goto/16 :goto_8

    .line 425
    :pswitch_eb
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    if-nez v0, :cond_fd

    .line 426
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    const v3, 0x7f08004f

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 429
    :cond_fd
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    goto/16 :goto_8

    .line 356
    nop

    :pswitch_data_102
    .packed-switch 0x7f030002
        :pswitch_15
        :pswitch_3e
        :pswitch_67
        :pswitch_2a
        :pswitch_52
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_a9
        :pswitch_bf
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_92
        :pswitch_d5
        :pswitch_7c
        :pswitch_eb
    .end packed-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .registers 6
    .parameter "id"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 192
    .local v0, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 346
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_f
    return-object v1

    .line 195
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_10
    sparse-switch p1, :sswitch_data_2e6

    .line 343
    :goto_13
    if-eqz v0, :cond_2a

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    move-object v1, v0

    .line 346
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_f

    .line 197
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 198
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 200
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 201
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 203
    :sswitch_48
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShootingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 204
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 206
    :sswitch_56
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 207
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 209
    :sswitch_64
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 210
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 212
    :sswitch_72
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 213
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 215
    :sswitch_80
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 216
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_13

    .line 218
    :sswitch_8e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 219
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 221
    :sswitch_9d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 222
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 224
    :sswitch_ac
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 225
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 227
    :sswitch_bb
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 228
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 230
    :sswitch_ca
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 231
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 233
    :sswitch_d9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 234
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 236
    :sswitch_e8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ObjectTrackingResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ObjectTrackingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 237
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 239
    :sswitch_f7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 240
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 242
    :sswitch_106
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 243
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 245
    :sswitch_115
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 246
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 248
    :sswitch_124
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 249
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 251
    :sswitch_133
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 252
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 254
    :sswitch_142
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 255
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 257
    :sswitch_151
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 258
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 260
    :sswitch_160
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 261
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 263
    :sswitch_16f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 264
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 266
    :sswitch_17e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 267
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 269
    :sswitch_18d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 270
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 272
    :sswitch_19c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 273
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 275
    :sswitch_1ab
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 276
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 278
    :sswitch_1ba
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 279
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 281
    :sswitch_1c9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 282
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 284
    :sswitch_1d8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 285
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 287
    :sswitch_1e7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 288
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 290
    :sswitch_1f6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 291
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 293
    :sswitch_205
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 294
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 296
    :sswitch_214
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 297
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 299
    :sswitch_223
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 300
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 302
    :sswitch_232
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 303
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 305
    :sswitch_241
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 306
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 308
    :sswitch_250
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 309
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 311
    :sswitch_25f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 312
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 314
    :sswitch_26e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 315
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 317
    :sswitch_27d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 318
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 320
    :sswitch_28c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 321
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 323
    :sswitch_29b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 324
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 326
    :sswitch_2aa
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 327
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 329
    :sswitch_2b9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 330
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 332
    :sswitch_2c8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 333
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 336
    :sswitch_2d7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 337
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_13

    .line 195
    :sswitch_data_2e6
    .sparse-switch
        0x1 -> :sswitch_48
        0x2 -> :sswitch_56
        0x3 -> :sswitch_64
        0x4 -> :sswitch_72
        0x5 -> :sswitch_80
        0x6 -> :sswitch_8e
        0x7 -> :sswitch_d9
        0x8 -> :sswitch_9d
        0x9 -> :sswitch_ac
        0xa -> :sswitch_bb
        0xb -> :sswitch_ca
        0xc -> :sswitch_e8
        0xd -> :sswitch_f7
        0xe -> :sswitch_106
        0xf -> :sswitch_115
        0x10 -> :sswitch_124
        0x11 -> :sswitch_133
        0x12 -> :sswitch_2d7
        0x13 -> :sswitch_16f
        0x14 -> :sswitch_151
        0x15 -> :sswitch_17e
        0x16 -> :sswitch_18d
        0x1b -> :sswitch_19c
        0x1f -> :sswitch_1ba
        0x23 -> :sswitch_1c9
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_1ab
        0x29 -> :sswitch_3a
        0x33 -> :sswitch_160
        0x35 -> :sswitch_142
        0xbb9 -> :sswitch_1d8
        0xbbb -> :sswitch_1f6
        0xbbc -> :sswitch_1e7
        0xbbe -> :sswitch_223
        0xbbf -> :sswitch_205
        0xbc0 -> :sswitch_214
        0xbc1 -> :sswitch_2b9
        0xbc2 -> :sswitch_250
        0xbc3 -> :sswitch_232
        0xbc4 -> :sswitch_2d7
        0xbc9 -> :sswitch_2c8
        0xbcb -> :sswitch_241
        0xbcc -> :sswitch_25f
        0xbcd -> :sswitch_26e
        0xbce -> :sswitch_27d
        0xbcf -> :sswitch_28c
        0xbd0 -> :sswitch_29b
        0xbd1 -> :sswitch_2aa
    .end sparse-switch
.end method

.method public isGLShootingModeMenu(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_8

    .line 172
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 170
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 164
    nop

    :pswitch_data_8
    .packed-switch 0x2a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 455
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    if-eqz v2, :cond_11

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;->cleanUpResources()V

    .line 460
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    if-eqz v2, :cond_1a

    .line 461
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AdjustMenu;->clear()V

    .line 463
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    if-eqz v2, :cond_23

    .line 464
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/TimerCounting;->clear()V

    .line 466
    :cond_23
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 467
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 469
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 470
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 472
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    .line 474
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 476
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    .line 478
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-eqz v2, :cond_3e

    .line 481
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/EmptyView;->clear()V

    .line 482
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 485
    :cond_3e
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 487
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    .line 489
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    if-eqz v2, :cond_4f

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->clear()V

    .line 493
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 496
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v2, :cond_5a

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/BlackScreen;->clear()V

    .line 498
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    .line 501
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_68

    .line 502
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 504
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 506
    :cond_68
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_8d

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 508
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_76

    .line 510
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_86
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 511
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 513
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_8d
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_98

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    .line 515
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 517
    :cond_98
    return-void
.end method
