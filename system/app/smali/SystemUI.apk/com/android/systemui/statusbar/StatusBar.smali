.class public abstract Lcom/android/systemui/statusbar/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field public static canStatusBarHide:Z

.field public static isGPSProviderSupported:Z

.field public static isNetworkSupported:Z

.field public static supportSigNull:Z

.field public static useTouchWizGUI:Z


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private updateStatusBarGlobalSettings()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 209
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_11} :catch_57

    .line 217
    :goto_11
    :try_start_11
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 219
    .local v4, wm:Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_5b

    .line 228
    .end local v4           #wm:Landroid/view/IWindowManager;
    :goto_21
    :try_start_21
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->supportSigNull:Z
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_30} :catch_66

    .line 236
    :goto_30
    :try_start_30
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 238
    .local v0, cm:Landroid/net/IConnectivityManager;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_41} :catch_6a

    .line 247
    .end local v0           #cm:Landroid/net/IConnectivityManager;
    :goto_41
    :try_start_41
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 249
    .local v3, lm:Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 250
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_56} :catch_79

    .line 259
    .end local v3           #lm:Landroid/location/LocationManager;
    :goto_56
    return-void

    .line 210
    :catch_57
    move-exception v2

    .line 211
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    goto :goto_11

    .line 220
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_5b
    move-exception v1

    .line 221
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    goto :goto_21

    .line 229
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_66
    move-exception v2

    .line 230
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->supportSigNull:Z

    goto :goto_30

    .line 239
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_6a
    move-exception v1

    .line 240
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether network support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    goto :goto_41

    .line 252
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #lm:Landroid/location/LocationManager;
    :cond_75
    const/4 v5, 0x0

    :try_start_76
    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_78} :catch_79

    goto :goto_56

    .line 254
    .end local v3           #lm:Landroid/location/LocationManager;
    :catch_79
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether GPS provider support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z

    goto :goto_56
.end method


# virtual methods
.method public abstract animateCollapse()V
.end method

.method protected abstract getStatusBarGravity()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public hideCallOnGoingView()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method protected abstract makeStatusBarView()Landroid/view/View;
.end method

.method public setMaxBrightness(I)V
    .registers 2
    .parameter "maxLevel"

    .prologue
    .line 267
    return-void
.end method

.method public showCallOnGoingView()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method public start()V
    .registers 24

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->updateStatusBarGlobalSettings()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v21

    .line 95
    .local v21, sb:Landroid/view/View;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v6}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 96
    .local v6, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v7, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v8, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v4, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 99
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 101
    const/4 v4, 0x7

    new-array v9, v4, [I

    .line 102
    .local v9, switches:[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v10, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_158

    .line 110
    :goto_42
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->disable(I)V

    .line 111
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->setSystemUiVisibility(I)V

    .line 112
    const/4 v4, 0x2

    aget v4, v9, v4

    if-eqz v4, :cond_ac

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->topAppWindowChanged(Z)V

    .line 114
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v5, 0x3

    aget v5, v9, v5

    const/4 v12, 0x4

    aget v12, v9, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/android/systemui/statusbar/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 115
    const/4 v4, 0x5

    aget v4, v9, v4

    if-eqz v4, :cond_ae

    const/4 v4, 0x1

    :goto_75
    const/4 v5, 0x6

    aget v5, v9, v5

    if-eqz v5, :cond_b0

    const/4 v5, 0x1

    :goto_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->setHardKeyboardStatus(ZZ)V

    .line 118
    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v17

    .line 119
    .local v17, N:I
    const/16 v22, 0x0

    .line 120
    .local v22, viewIndex:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_88
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_b2

    .line 121
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v20

    .line 122
    .local v20, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v20, :cond_a9

    .line 123
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 124
    add-int/lit8 v22, v22, 0x1

    .line 120
    :cond_a9
    add-int/lit8 v19, v19, 0x1

    goto :goto_88

    .line 112
    .end local v17           #N:I
    .end local v19           #i:I
    .end local v20           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v22           #viewIndex:I
    :cond_ac
    const/4 v4, 0x0

    goto :goto_58

    .line 115
    :cond_ae
    const/4 v4, 0x0

    goto :goto_75

    :cond_b0
    const/4 v5, 0x0

    goto :goto_7b

    .line 129
    .restart local v17       #N:I
    .restart local v19       #i:I
    .restart local v22       #viewIndex:I
    :cond_b2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 130
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_de

    .line 131
    const/16 v19, 0x0

    :goto_c0
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_106

    .line 132
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 131
    add-int/lit8 v19, v19, 0x1

    goto :goto_c0

    .line 135
    :cond_de
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notification list length mismatch: keys="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " notifications="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarHeight()I

    move-result v13

    .line 142
    .local v13, height:I
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/16 v14, 0x7d0

    const v15, 0x800048

    const/16 v16, -0x3

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 155
    .local v11, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 164
    .local v18, defaultDisplay:Landroid/view/Display;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarGravity()I

    move-result v4

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 165
    const-string v4, "StatusBar"

    invoke-virtual {v11, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 167
    const v4, 0x7f0c0009

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 168
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v4, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 181
    return-void

    .line 106
    .end local v11           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #height:I
    .end local v17           #N:I
    .end local v18           #defaultDisplay:Landroid/view/Display;
    .end local v19           #i:I
    .end local v22           #viewIndex:I
    :catch_158
    move-exception v4

    goto/16 :goto_42
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .registers 8
    .parameter "row"
    .parameter "n"

    .prologue
    .line 184
    const v4, 0x7f0f007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 186
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 187
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 188
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 189
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/StatusBar$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/StatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_1f
    return-object v3

    .line 200
    :cond_20
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method
