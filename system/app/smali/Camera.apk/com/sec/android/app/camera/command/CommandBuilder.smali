.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandBuilder"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .registers 5
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"

    .prologue
    .line 35
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .registers 16
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "zOrder"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 41
    const/16 v1, 0x63

    if-ne p0, v1, :cond_d

    .line 42
    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 411
    :goto_c
    :sswitch_c
    return-object v0

    .line 44
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    .line 46
    .local v4, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v4, :cond_c4

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, command:Lcom/sec/android/app/camera/command/MenuCommand;
    const/16 v1, 0x28

    if-ne p0, v1, :cond_2c

    .line 49
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 50
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_c

    .line 51
    :cond_2c
    const/16 v1, 0xbd0

    if-ne p0, v1, :cond_40

    .line 52
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 53
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_c

    .line 54
    :cond_40
    const/16 v1, 0x1b

    if-eq p0, v1, :cond_48

    const/16 v1, 0xbcf

    if-ne p0, v1, :cond_54

    .line 55
    :cond_48
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 56
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_c

    .line 57
    :cond_54
    const/4 v1, 0x7

    if-eq p0, v1, :cond_5b

    const/16 v1, 0xbc1

    if-ne p0, v1, :cond_67

    .line 58
    :cond_5b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 59
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_c

    .line 60
    :cond_67
    const/16 v1, 0x12

    if-eq p0, v1, :cond_6f

    const/16 v1, 0xbc4

    if-ne p0, v1, :cond_7b

    .line 61
    :cond_6f
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_c

    .line 63
    :cond_7b
    const/16 v1, 0x27

    if-ne p0, v1, :cond_90

    .line 64
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 65
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto/16 :goto_c

    .line 66
    :cond_90
    if-ne p0, v5, :cond_9f

    .line 67
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 68
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;->setZOrder(I)V

    goto/16 :goto_c

    .line 71
    :cond_9f
    const/16 v1, 0x35

    if-ne p0, v1, :cond_b7

    .line 72
    const-string v1, "CommandBuilder"

    const-string v2, "LaunchSnSMenuCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 74
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->setZOrder(I)V

    goto/16 :goto_c

    .line 76
    :cond_b7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 77
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_c

    .line 82
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_c4
    sparse-switch p0, :sswitch_data_1ce

    goto/16 :goto_c

    .line 187
    :sswitch_c9
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_c

    .line 84
    :sswitch_d0
    new-instance v0, Lcom/sec/android/app/camera/command/EditModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/EditModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_c

    .line 89
    :sswitch_d7
    new-instance v0, Lcom/sec/android/app/camera/command/SelfModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/SelfModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_c

    .line 106
    :sswitch_de
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 122
    :sswitch_e5
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 128
    :sswitch_ec
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 134
    :sswitch_f3
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 144
    :sswitch_fa
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 169
    :sswitch_101
    new-instance v0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 202
    :sswitch_108
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 203
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_c

    .line 212
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_115
    new-instance v0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 222
    :sswitch_11c
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 239
    :sswitch_123
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 260
    :sswitch_12a
    new-instance v0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 276
    :sswitch_131
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 282
    :sswitch_138
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 287
    :sswitch_13f
    new-instance v0, Lcom/sec/android/app/camera/command/ObjecttrackingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ObjecttrackingSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 292
    :sswitch_146
    new-instance v0, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 299
    :sswitch_14d
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 304
    :sswitch_154
    new-instance v0, Lcom/sec/android/app/camera/command/BlinkdetectionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BlinkdetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 310
    :sswitch_15b
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 316
    :sswitch_162
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 323
    :sswitch_169
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 330
    :sswitch_170
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 336
    :sswitch_177
    new-instance v5, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, v4

    move v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .line 337
    .local v5, snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v0, v5

    .line 338
    goto/16 :goto_c

    .line 341
    .end local v5           #snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_187
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_c

    .line 343
    :sswitch_18e
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_c

    .line 345
    :sswitch_195
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_c

    .line 349
    :sswitch_19c
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 354
    :sswitch_1a3
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 359
    :sswitch_1aa
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 365
    :sswitch_1b1
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 383
    :sswitch_1b8
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_c

    .line 396
    :sswitch_1bf
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 404
    :sswitch_1c6
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_c

    .line 82
    nop

    :sswitch_data_1ce
    .sparse-switch
        0x0 -> :sswitch_c
        0x14 -> :sswitch_c
        0x15 -> :sswitch_c
        0x16 -> :sswitch_c
        0x17 -> :sswitch_c
        0x18 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1a -> :sswitch_c
        0x1c -> :sswitch_c
        0x1d -> :sswitch_c
        0x1e -> :sswitch_c9
        0x1f -> :sswitch_108
        0x20 -> :sswitch_108
        0x21 -> :sswitch_108
        0x22 -> :sswitch_108
        0x24 -> :sswitch_d7
        0x25 -> :sswitch_108
        0x26 -> :sswitch_108
        0x32 -> :sswitch_d0
        0x33 -> :sswitch_c
        0x36 -> :sswitch_18e
        0x37 -> :sswitch_195
        0x38 -> :sswitch_177
        0x39 -> :sswitch_187
        0x3a -> :sswitch_187
        0x3b -> :sswitch_177
        0x64 -> :sswitch_108
        0x65 -> :sswitch_108
        0xc8 -> :sswitch_d7
        0xc9 -> :sswitch_d7
        0x12c -> :sswitch_de
        0x12d -> :sswitch_de
        0x12e -> :sswitch_de
        0x12f -> :sswitch_de
        0x130 -> :sswitch_de
        0x131 -> :sswitch_de
        0x132 -> :sswitch_de
        0x133 -> :sswitch_de
        0x134 -> :sswitch_de
        0x135 -> :sswitch_de
        0x136 -> :sswitch_de
        0x137 -> :sswitch_de
        0x139 -> :sswitch_de
        0x13a -> :sswitch_de
        0x13b -> :sswitch_de
        0x190 -> :sswitch_115
        0x191 -> :sswitch_115
        0x192 -> :sswitch_115
        0x193 -> :sswitch_115
        0x194 -> :sswitch_115
        0x1f4 -> :sswitch_e5
        0x1f5 -> :sswitch_e5
        0x1f6 -> :sswitch_e5
        0x1f7 -> :sswitch_e5
        0x1f8 -> :sswitch_e5
        0x1f9 -> :sswitch_e5
        0x1fa -> :sswitch_e5
        0x1fb -> :sswitch_e5
        0x1fc -> :sswitch_e5
        0x1fd -> :sswitch_e5
        0x1fe -> :sswitch_e5
        0x1ff -> :sswitch_e5
        0x200 -> :sswitch_e5
        0x201 -> :sswitch_e5
        0x258 -> :sswitch_11c
        0x259 -> :sswitch_11c
        0x25a -> :sswitch_11c
        0x25b -> :sswitch_11c
        0x25c -> :sswitch_11c
        0x25d -> :sswitch_11c
        0x25e -> :sswitch_11c
        0x2bc -> :sswitch_f3
        0x2bd -> :sswitch_f3
        0x2be -> :sswitch_f3
        0x2bf -> :sswitch_f3
        0x320 -> :sswitch_fa
        0x321 -> :sswitch_fa
        0x322 -> :sswitch_fa
        0x323 -> :sswitch_fa
        0x324 -> :sswitch_fa
        0x325 -> :sswitch_fa
        0x326 -> :sswitch_fa
        0x327 -> :sswitch_fa
        0x384 -> :sswitch_123
        0x385 -> :sswitch_123
        0x386 -> :sswitch_123
        0x387 -> :sswitch_123
        0x388 -> :sswitch_123
        0x389 -> :sswitch_123
        0x38a -> :sswitch_123
        0x38b -> :sswitch_123
        0x38c -> :sswitch_123
        0x38d -> :sswitch_123
        0x38e -> :sswitch_123
        0x38f -> :sswitch_123
        0x390 -> :sswitch_123
        0x391 -> :sswitch_123
        0x3e8 -> :sswitch_12a
        0x3e9 -> :sswitch_12a
        0x3ea -> :sswitch_12a
        0x3eb -> :sswitch_12a
        0x3ec -> :sswitch_12a
        0x3ed -> :sswitch_12a
        0x3ee -> :sswitch_12a
        0x3ef -> :sswitch_12a
        0x3f0 -> :sswitch_12a
        0x3f1 -> :sswitch_12a
        0x3f2 -> :sswitch_12a
        0x3f3 -> :sswitch_12a
        0x3f4 -> :sswitch_12a
        0x3f5 -> :sswitch_12a
        0x3f6 -> :sswitch_12a
        0x3f7 -> :sswitch_12a
        0x3f8 -> :sswitch_12a
        0x3f9 -> :sswitch_12a
        0x44c -> :sswitch_131
        0x44d -> :sswitch_131
        0x44e -> :sswitch_131
        0x44f -> :sswitch_131
        0x450 -> :sswitch_131
        0x451 -> :sswitch_131
        0x452 -> :sswitch_131
        0x453 -> :sswitch_131
        0x454 -> :sswitch_131
        0x455 -> :sswitch_131
        0x456 -> :sswitch_131
        0x457 -> :sswitch_131
        0x458 -> :sswitch_131
        0x4b0 -> :sswitch_138
        0x4b1 -> :sswitch_138
        0x4b2 -> :sswitch_138
        0x514 -> :sswitch_13f
        0x515 -> :sswitch_13f
        0x578 -> :sswitch_146
        0x579 -> :sswitch_146
        0x5dc -> :sswitch_14d
        0x5dd -> :sswitch_14d
        0x5de -> :sswitch_14d
        0x5df -> :sswitch_14d
        0x640 -> :sswitch_154
        0x641 -> :sswitch_154
        0x6a4 -> :sswitch_15b
        0x6a5 -> :sswitch_15b
        0x6a6 -> :sswitch_15b
        0x6a7 -> :sswitch_162
        0x6a8 -> :sswitch_162
        0x6a9 -> :sswitch_162
        0x708 -> :sswitch_169
        0x709 -> :sswitch_169
        0x70a -> :sswitch_169
        0x70b -> :sswitch_169
        0x76c -> :sswitch_170
        0x76d -> :sswitch_170
        0x76f -> :sswitch_170
        0x770 -> :sswitch_170
        0x7d0 -> :sswitch_19c
        0x7d1 -> :sswitch_19c
        0x834 -> :sswitch_1a3
        0x835 -> :sswitch_1a3
        0x898 -> :sswitch_1b1
        0x899 -> :sswitch_1b1
        0x89a -> :sswitch_1b1
        0x89b -> :sswitch_1b1
        0x8fc -> :sswitch_101
        0x8fd -> :sswitch_101
        0x8fe -> :sswitch_101
        0x8ff -> :sswitch_101
        0x900 -> :sswitch_101
        0x901 -> :sswitch_101
        0x902 -> :sswitch_101
        0x903 -> :sswitch_101
        0x904 -> :sswitch_101
        0x905 -> :sswitch_101
        0x906 -> :sswitch_101
        0x907 -> :sswitch_101
        0x908 -> :sswitch_101
        0x909 -> :sswitch_101
        0x90a -> :sswitch_101
        0x90b -> :sswitch_101
        0x90c -> :sswitch_101
        0x90d -> :sswitch_101
        0x90e -> :sswitch_101
        0x90f -> :sswitch_101
        0x910 -> :sswitch_101
        0x911 -> :sswitch_101
        0x912 -> :sswitch_101
        0xbb8 -> :sswitch_c
        0xbba -> :sswitch_c
        0xbbb -> :sswitch_c
        0xbbd -> :sswitch_c
        0xbc2 -> :sswitch_c
        0xbc3 -> :sswitch_c
        0xbc5 -> :sswitch_c
        0xbc6 -> :sswitch_c
        0xbc7 -> :sswitch_c
        0xbc8 -> :sswitch_c
        0xbc9 -> :sswitch_c
        0xbca -> :sswitch_1b8
        0xbcb -> :sswitch_c
        0xbcd -> :sswitch_c
        0xbce -> :sswitch_c
        0xbcf -> :sswitch_c
        0xc1c -> :sswitch_1bf
        0xc1d -> :sswitch_1bf
        0xc1e -> :sswitch_1bf
        0xc1f -> :sswitch_1bf
        0xc80 -> :sswitch_1c6
        0xc81 -> :sswitch_1c6
        0xd48 -> :sswitch_ec
        0xd49 -> :sswitch_ec
        0xd4a -> :sswitch_ec
        0xd4b -> :sswitch_ec
        0xdac -> :sswitch_1c6
        0xdad -> :sswitch_1c6
        0xf3c -> :sswitch_1aa
        0xf3d -> :sswitch_1aa
    .end sparse-switch
.end method
