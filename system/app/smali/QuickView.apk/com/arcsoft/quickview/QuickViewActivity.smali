.class public Lcom/arcsoft/quickview/QuickViewActivity;
.super Landroid/app/Activity;
.source "QuickViewActivity.java"

# interfaces
.implements Lcom/arcsoft/widget/IBase;
.implements Lcom/arcsoft/widget/QuickView$FileListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;,
        Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;,
        Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;
    }
.end annotation


# static fields
.field private static final DISPLAY_TIME:I = 0xbb8

.field private static final FINISHED:I = 0x0

.field public static final KEY_DEFAULT_DEST_COUNT:Ljava/lang/String; = "PREFS_COUNT"

.field public static final KEY_DEFAULT_DEST_RESULT:Ljava/lang/String; = "PREFS_RESULT"

.field public static final KEY_DEFAULT_DEST_SINGLE:Ljava/lang/String; = "PREFS_SINGLE"

.field protected static final MDNIE_CAMERA_MODE:I = 0x4

.field protected static final MDNIE_UI_MODE:I = 0x0

.field public static final MMS_IMAGE_URI:Ljava/lang/String; = "mms_image_uri"

.field private static final MMS_SEND_MSG:Ljava/lang/String; = "com.android.mms.QUICKSND"

.field private static MMS_TO:Ljava/lang/String; = null

.field public static final MMS_VIDEO_URI:Ljava/lang/String; = "mms_video_uri"

.field public static final P1_ATT:Ljava/lang/String; = "SGH-I987"

.field public static final P1_BMC:Ljava/lang/String; = "GT-P1000M"

.field public static final P1_RGS:Ljava/lang/String; = "GT-P1000R"

.field public static final P1_SPR:Ljava/lang/String; = "SPH-P100"

.field public static final P1_TMO:Ljava/lang/String; = "SGH-T849"

.field public static final PREFS_NAME:Ljava/lang/String; = "PREFS_DEFAULT_DESTI"

.field private static final PREF_FILE_EXACT:Ljava/lang/String; = "FileExtracted"

.field public static final RESULT_HOME_KEY_PRESSED:I = 0x3e9

.field protected static final SCREEN_AUTOBRIGHTNESS_OFF:I = 0x0

.field protected static final SCREEN_AUTOBRIGHTNESS_ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "QuickViewActivity:"

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationLayout:Landroid/view/View;

.field protected mAutoBrigtnessFlag:Z

.field private mAutoRotateLocked:Z

.field protected mAutomatic:I

.field private mBounceView:Lcom/arcsoft/widget/BounceView;

.field private mClickPreTime:J

.field private mCurrentOrientation:I

.field private mDataChanged:Z

.field private mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDestPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIfSetTimer:Z

.field private mIsChangingOrientation:Z

.field private mIsConfirmed:Z

.field private mIsDragging:Z

.field private mIsMenuClicked:Z

.field private mIsPaused:Z

.field private mIsSNS:Z

.field private mIsUnderDeleteAnimation:Z

.field private mIsViewingImage:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

.field private mMediaList:Lcom/arcsoft/quickview/MediaList;

.field private mMenuHandler:Landroid/os/Handler;

.field private mMenuListener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

.field private mMoreDialog:Landroid/app/AlertDialog;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mQuickView:Lcom/arcsoft/widget/QuickView;

.field public mReturntoCamera:Z

.field private mSrcPath:Ljava/lang/String;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

.field private mThumbKicker:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

.field private mToastMgr:Lcom/arcsoft/widget/ToastMgr;

.field private mUriStartFile:Landroid/net/Uri;

.field private myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    const-string v0, "quickview"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 164
    const-string v0, "mms_to"

    sput-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->MMS_TO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mCurrentOrientation:I

    .line 110
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsDragging:Z

    .line 111
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsChangingOrientation:Z

    .line 113
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    .line 114
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    .line 115
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    .line 116
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    .line 117
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 118
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    .line 120
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoRotateLocked:Z

    .line 122
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    .line 123
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    .line 124
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 125
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    .line 127
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;

    .line 129
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIfSetTimer:Z

    .line 150
    iput v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutomatic:I

    .line 152
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoBrigtnessFlag:Z

    .line 154
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 168
    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    .line 170
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z

    .line 577
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$7;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$7;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mHandler:Landroid/os/Handler;

    .line 720
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDataChanged:Z

    .line 1036
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$8;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$8;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMenuHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$9;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$9;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMenuListener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    .line 1116
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    .line 1118
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$10;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$10;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J

    .line 1360
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z

    .line 1362
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$16;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$16;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2250
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mThumbKicker:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    .line 2279
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$21;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/QuickViewActivity$21;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method private CopyAssetDataFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 19
    .parameter "FileName"
    .parameter "AssetURI"
    .parameter "bReplace"

    .prologue
    .line 2165
    const/4 v8, 0x0

    .line 2166
    .local v8, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 2168
    .local v9, out:Ljava/io/FileOutputStream;
    :try_start_2
    const-string v13, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 2169
    .local v5, endIndex:I
    const/4 v13, 0x0

    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2170
    .local v12, srcFileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2171
    const-string v3, "/data/data/com.arcsoft.quickview/"

    .line 2172
    .local v3, desFileName:Ljava/lang/String;
    if-nez p3, :cond_4e

    .line 2173
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2177
    :goto_23
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_68

    .line 2180
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 2181
    .local v11, parent:Ljava/io/File;
    if-eqz v11, :cond_3d

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3d

    .line 2182
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 2183
    :cond_3d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 2190
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getAssets()Landroid/content/res/AssetManager;
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_d4

    move-result-object v1

    .line 2191
    .local v1, am:Landroid/content/res/AssetManager;
    if-nez v1, :cond_72

    .line 2192
    const/4 v13, 0x1

    .line 2214
    if-eqz v8, :cond_4a

    .line 2215
    :try_start_49
    throw v8
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4a} :catch_c3

    .line 2221
    :cond_4a
    :goto_4a
    if-eqz v9, :cond_4d

    .line 2222
    :try_start_4c
    throw v9
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4d} :catch_c5

    .line 2229
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v3           #desFileName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #file:Ljava/io/File;
    .end local v11           #parent:Ljava/io/File;
    .end local v12           #srcFileName:Ljava/lang/String;
    :cond_4d
    :goto_4d
    return v13

    .line 2175
    .restart local v3       #desFileName:Ljava/lang/String;
    .restart local v5       #endIndex:I
    .restart local v12       #srcFileName:Ljava/lang/String;
    :cond_4e
    :try_start_4e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "icon/common/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_66} :catch_d4

    move-result-object v3

    goto :goto_23

    .line 2187
    .restart local v6       #file:Ljava/io/File;
    :cond_68
    const/4 v13, 0x1

    .line 2214
    if-eqz v8, :cond_6c

    .line 2215
    :try_start_6b
    throw v8
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6c} :catch_c1

    .line 2221
    :cond_6c
    :goto_6c
    if-eqz v9, :cond_4d

    .line 2222
    :try_start_6e
    throw v9
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_70

    goto :goto_4d

    .line 2224
    :catch_70
    move-exception v14

    goto :goto_4d

    .line 2194
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v11       #parent:Ljava/io/File;
    :cond_72
    :try_start_72
    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 2196
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v10, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7c} :catch_d4

    .line 2199
    .end local v9           #out:Ljava/io/FileOutputStream;
    .local v10, out:Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    :try_start_7e
    new-array v2, v13, [B

    .line 2200
    .local v2, buffer:[B
    const/4 v7, 0x0

    .line 2201
    .local v7, i:I
    if-eqz v2, :cond_a6

    .line 2202
    :goto_83
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_a6

    .line 2203
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8e} :catch_8f

    goto :goto_83

    .line 2210
    .end local v2           #buffer:[B
    .end local v7           #i:I
    :catch_8f
    move-exception v4

    move-object v9, v10

    .line 2211
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v3           #desFileName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #file:Ljava/io/File;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #parent:Ljava/io/File;
    .end local v12           #srcFileName:Ljava/lang/String;
    .local v4, e:Ljava/lang/Exception;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_91
    :try_start_91
    const-string v13, "QuickViewActivity:"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_b5

    .line 2214
    if-eqz v8, :cond_9f

    .line 2215
    :try_start_9c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_c9

    .line 2221
    :cond_9f
    :goto_9f
    if-eqz v9, :cond_a4

    .line 2222
    :try_start_a1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_cb

    .line 2229
    .end local v4           #e:Ljava/lang/Exception;
    :cond_a4
    :goto_a4
    const/4 v13, 0x1

    goto :goto_4d

    .line 2214
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v2       #buffer:[B
    .restart local v3       #desFileName:Ljava/lang/String;
    .restart local v5       #endIndex:I
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #i:I
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v11       #parent:Ljava/io/File;
    .restart local v12       #srcFileName:Ljava/lang/String;
    :cond_a6
    if-eqz v8, :cond_ab

    .line 2215
    :try_start_a8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_c7

    .line 2221
    :cond_ab
    :goto_ab
    if-eqz v10, :cond_b0

    .line 2222
    :try_start_ad
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b2

    :cond_b0
    move-object v9, v10

    .line 2226
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 2224
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_b2
    move-exception v13

    move-object v9, v10

    .line 2227
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 2213
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v2           #buffer:[B
    .end local v3           #desFileName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #file:Ljava/io/File;
    .end local v7           #i:I
    .end local v11           #parent:Ljava/io/File;
    .end local v12           #srcFileName:Ljava/lang/String;
    :catchall_b5
    move-exception v13

    .line 2214
    :goto_b6
    if-eqz v8, :cond_bb

    .line 2215
    :try_start_b8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_cd

    .line 2221
    :cond_bb
    :goto_bb
    if-eqz v9, :cond_c0

    .line 2222
    :try_start_bd
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_cf

    .line 2226
    :cond_c0
    :goto_c0
    throw v13

    .line 2217
    .restart local v3       #desFileName:Ljava/lang/String;
    .restart local v5       #endIndex:I
    .restart local v6       #file:Ljava/io/File;
    .restart local v12       #srcFileName:Ljava/lang/String;
    :catch_c1
    move-exception v14

    goto :goto_6c

    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v11       #parent:Ljava/io/File;
    :catch_c3
    move-exception v14

    goto :goto_4a

    .line 2224
    :catch_c5
    move-exception v14

    goto :goto_4d

    .line 2217
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v7       #i:I
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_c7
    move-exception v13

    goto :goto_ab

    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v2           #buffer:[B
    .end local v3           #desFileName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #file:Ljava/io/File;
    .end local v7           #i:I
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #parent:Ljava/io/File;
    .end local v12           #srcFileName:Ljava/lang/String;
    .restart local v4       #e:Ljava/lang/Exception;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :catch_c9
    move-exception v13

    goto :goto_9f

    .line 2224
    :catch_cb
    move-exception v13

    goto :goto_a4

    .line 2217
    .end local v4           #e:Ljava/lang/Exception;
    :catch_cd
    move-exception v14

    goto :goto_bb

    .line 2224
    :catch_cf
    move-exception v14

    goto :goto_c0

    .line 2213
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v3       #desFileName:Ljava/lang/String;
    .restart local v5       #endIndex:I
    .restart local v6       #file:Ljava/io/File;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v11       #parent:Ljava/io/File;
    .restart local v12       #srcFileName:Ljava/lang/String;
    :catchall_d1
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_b6

    .line 2210
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v3           #desFileName:Ljava/lang/String;
    .end local v5           #endIndex:I
    .end local v6           #file:Ljava/io/File;
    .end local v11           #parent:Ljava/io/File;
    .end local v12           #srcFileName:Ljava/lang/String;
    :catch_d4
    move-exception v4

    goto :goto_91
.end method

.method static synthetic access$000(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/arcsoft/quickview/QuickViewActivity;Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/arcsoft/quickview/QuickViewActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/arcsoft/quickview/QuickViewActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/CustomizedMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/arcsoft/quickview/QuickViewActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/ToastMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/arcsoft/quickview/QuickViewActivity;Lcom/arcsoft/widget/ToastMgr;)Lcom/arcsoft/widget/ToastMgr;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->resetView()V

    return-void
.end method

.method static synthetic access$2800(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->showRenameDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->prepareDeleteAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->showDelDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/arcsoft/quickview/QuickViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    return v0
.end method

.method static synthetic access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMenuHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkScanning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1667
    invoke-static {p0}, Lcom/arcsoft/widget/JUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1668
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    if-nez v1, :cond_1e

    .line 1669
    new-instance v1, Lcom/arcsoft/widget/ToastMgr;

    invoke-direct {v1}, Lcom/arcsoft/widget/ToastMgr;-><init>()V

    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    .line 1672
    :goto_12
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    const v2, 0x7f040011

    invoke-virtual {v1, p0, v2, v0, v0}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;IIZ)V

    .line 1673
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    .line 1676
    :goto_1d
    return v0

    .line 1671
    :cond_1e
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    invoke-virtual {v1}, Lcom/arcsoft/widget/ToastMgr;->cancelQuickMessage()V

    goto :goto_12

    .line 1676
    :cond_24
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private initMediaList()V
    .registers 4

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-nez v0, :cond_12

    .line 1596
    new-instance v0, Lcom/arcsoft/quickview/MediaList;

    iget-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$19;

    invoke-direct {v2, p0}, Lcom/arcsoft/quickview/QuickViewActivity$19;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/arcsoft/quickview/MediaList;-><init>(Landroid/content/Context;ZLcom/arcsoft/quickview/MediaList$OnMediaListListener;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    .line 1659
    :cond_12
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v1, v0}, Lcom/arcsoft/quickview/MediaList;->create(Z)Z

    .line 1660
    return-void

    .line 1659
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private initPlayButton()V
    .registers 3

    .prologue
    .line 1723
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 1724
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mPlayIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$20;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/QuickViewActivity$20;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1760
    return-void
.end method

.method private initQuickView()V
    .registers 9

    .prologue
    .line 1690
    const v5, 0x7f060014

    invoke-virtual {p0, v5}, Lcom/arcsoft/quickview/QuickViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1691
    .local v2, mainLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1692
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1693
    .local v4, windowManager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1694
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1695
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1696
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1698
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-nez v5, :cond_45

    .line 1699
    new-instance v5, Lcom/arcsoft/widget/QuickView;

    invoke-direct {v5, p0, p0}, Lcom/arcsoft/widget/QuickView;-><init>(Lcom/arcsoft/widget/IBase;Lcom/arcsoft/widget/QuickView$FileListCallback;)V

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    .line 1700
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    iget-boolean v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    invoke-virtual {v5, v6}, Lcom/arcsoft/widget/QuickView;->setViewingType(Z)V

    .line 1702
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v5, :cond_45

    .line 1703
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v5}, Lcom/arcsoft/quickview/MediaList;->isDataReady()Z

    move-result v0

    .line 1704
    .local v0, bDataReady:Z
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v5, v0}, Lcom/arcsoft/widget/QuickView;->setDataReady(Z)V

    .line 1707
    .end local v0           #bDataReady:Z
    :cond_45
    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Lcom/arcsoft/quickview/QuickViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1708
    const v5, 0x7f060016

    invoke-virtual {p0, v5}, Lcom/arcsoft/quickview/QuickViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/widget/BounceView;

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    .line 1709
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v5, :cond_6e

    .line 1711
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v7, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v5, v6, v7}, Lcom/arcsoft/widget/QuickView;->init(Landroid/view/SurfaceView;Lcom/arcsoft/widget/BounceView;)V

    .line 1712
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1715
    :cond_6e
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v5, :cond_7c

    .line 1716
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v5}, Lcom/arcsoft/widget/BounceView;->init()V

    .line 1717
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v5}, Lcom/arcsoft/widget/BounceView;->updateScreenSize()V

    .line 1719
    :cond_7c
    return-void
.end method

.method private prepareDeleteAnimation()V
    .registers 1

    .prologue
    .line 1150
    return-void
.end method

.method private resetView()V
    .registers 2

    .prologue
    .line 2140
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->setContentView(I)V

    .line 2141
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->createOptionsMenu()V

    .line 2142
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->initPlayButton()V

    .line 2143
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->initQuickView()V

    .line 2161
    return-void
.end method

.method public static sendMmsIntent(Landroid/net/Uri;Landroid/content/Context;Z)I
    .registers 6
    .parameter "imageURL"
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 302
    const-string v1, "QuickViewActivity:"

    const-string v2, "in sendMmsIntent function"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.QUICKSND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, broadcastMmsSendIntent:Landroid/content/Intent;
    const-string v1, "mms_to"

    const-string v2, "700"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    if-nez p2, :cond_21

    .line 308
    const-string v1, "mms_image_uri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    :goto_1c
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    const/4 v1, 0x0

    return v1

    .line 310
    :cond_21
    const-string v1, "mms_video_uri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1c
.end method

.method public static sendMmsIntent(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Z)I
    .registers 7
    .parameter "toAddress"
    .parameter "imageURL"
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 286
    const-string v1, "QuickViewActivity:"

    const-string v2, "in sendMmsIntent function"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.QUICKSND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, broadcastMmsSendIntent:Landroid/content/Intent;
    sget-object v1, Lcom/arcsoft/quickview/QuickViewActivity;->MMS_TO:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    if-nez p3, :cond_1f

    .line 292
    const-string v1, "mms_image_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    :goto_1a
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    const/4 v1, 0x0

    return v1

    .line 294
    :cond_1f
    const-string v1, "mms_video_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1a
.end method

.method private showDelDialog()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x4188

    .line 1226
    iget-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-eqz v1, :cond_72

    const v0, 0x7f04000b

    .line 1228
    .local v0, hintId:I
    :goto_a
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16

    .line 1229
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1233
    :cond_16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040006

    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$13;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/QuickViewActivity$13;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040007

    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$12;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/QuickViewActivity$12;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1315
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$14;

    invoke-direct {v2, p0}, Lcom/arcsoft/quickview/QuickViewActivity$14;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1334
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$15;

    invoke-direct {v2, p0}, Lcom/arcsoft/quickview/QuickViewActivity$15;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1353
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1354
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1356
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1358
    return-void

    .line 1226
    .end local v0           #hintId:I
    :cond_72
    const v0, 0x7f04000c

    goto :goto_a
.end method

.method private showPlayIcon(Z)V
    .registers 4
    .parameter "bVisible"

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mPlayIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 2236
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mPlayIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2238
    :cond_c
    return-void

    .line 2236
    :cond_d
    const/4 v0, 0x4

    goto :goto_9
.end method

.method private showRenameDialog()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4188

    const/4 v7, 0x2

    .line 1431
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1434
    .local v2, linear:Landroid/widget/LinearLayout;
    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1436
    .local v0, editText:Landroid/widget/EditText;
    new-array v1, v7, [Landroid/text/InputFilter;

    .line 1437
    .local v1, filterArray:[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v9

    .line 1438
    const/4 v3, 0x1

    new-instance v4, Lcom/arcsoft/quickview/QuickViewActivity$17;

    invoke-direct {v4, p0}, Lcom/arcsoft/quickview/QuickViewActivity$17;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    aput-object v4, v1, v3

    .line 1456
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1457
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 1459
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    iget-object v4, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v4}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/arcsoft/quickview/MediaList;->getPath(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    .line 1460
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 1478
    :goto_42
    return-void

    .line 1463
    :cond_43
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v9, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 1465
    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$18;

    invoke-direct {v3, p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity$18;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1472
    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-direct {v3, p0, p0, v2}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    .line 1473
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->show()V

    .line 1474
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1476
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_42
.end method

.method private showToast(Ljava/lang/String;I)V
    .registers 4
    .parameter "str"
    .parameter "duration"

    .prologue
    .line 1419
    sget-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_10

    .line 1420
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->mToast:Landroid/widget/Toast;

    .line 1426
    :goto_a
    sget-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1427
    return-void

    .line 1423
    :cond_10
    sget-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    sget-object v0, Lcom/arcsoft/quickview/QuickViewActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_a
.end method

.method private unInitMediaList()V
    .registers 3

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v0, :cond_13

    .line 1682
    const-string v0, "QuickViewActivity:"

    const-string v1, "unInitMediaList"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->destroy()V

    .line 1684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    .line 1686
    :cond_13
    return-void
.end method


# virtual methods
.method public PlayVideo()V
    .registers 7

    .prologue
    const v5, 0x7f040017

    const/4 v4, 0x0

    .line 1401
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1403
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1405
    if-nez v2, :cond_1e

    .line 1406
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1416
    :goto_1d
    return-void

    .line 1410
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1d

    .line 1411
    :catch_22
    move-exception v0

    .line 1412
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1413
    const-string v3, "QuickViewActivity:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gallery play video error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public SetMinBrightness(I)V
    .registers 8
    .parameter "MinValue"

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 557
    .local v0, BrightnessValue:I
    :try_start_1
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_32

    move-result v0

    .line 563
    :goto_f
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 564
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 566
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    if-ge v0, p1, :cond_31

    .line 567
    move v0, p1

    .line 568
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    mul-int/lit8 v4, v0, 0x64

    div-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const v5, 0x3c23d70a

    mul-float/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 571
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 574
    :cond_31
    return-void

    .line 559
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #win:Landroid/view/Window;
    :catch_32
    move-exception v1

    .line 560
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "QuickViewActivity:"

    const-string v5, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public ShowSendAppListDialog()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcom/arcsoft/quickview/SendAppListDialog;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/SendAppListDialog;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, dlg:Lcom/arcsoft/quickview/SendAppListDialog;
    iget-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :goto_b
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v4}, Lcom/arcsoft/quickview/MediaList;->getCurrentMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/arcsoft/quickview/SendAppListDialog;->showSendAppListDialog(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 185
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    .line 186
    return-void

    :cond_1d
    move v1, v2

    .line 183
    goto :goto_b
.end method

.method public createOptionsMenu()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1187
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v1}, Lcom/arcsoft/widget/CustomizedMenu;->isMenuShown()Z

    move-result v1

    if-eqz v1, :cond_52

    move v0, v2

    .line 1189
    .local v0, bMenuShow:Z
    :goto_e
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 1191
    new-instance v1, Lcom/arcsoft/widget/CustomizedMenu;

    iget-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    invoke-direct {v1, p0, v3}, Lcom/arcsoft/widget/CustomizedMenu;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    .line 1192
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/arcsoft/widget/CustomizedMenu;->setMenu(Z)V

    .line 1193
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMenuListener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    invoke-virtual {v1, v3}, Lcom/arcsoft/widget/CustomizedMenu;->registerListener(Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;)V

    .line 1194
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v1}, Lcom/arcsoft/widget/CustomizedMenu;->init()I

    .line 1195
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$11;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/QuickViewActivity$11;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v3}, Lcom/arcsoft/widget/CustomizedMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1208
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1210
    if-eqz v0, :cond_51

    .line 1211
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v1, v2}, Lcom/arcsoft/widget/CustomizedMenu;->showMenu(Z)V

    .line 1212
    :cond_51
    return-void

    .line 1187
    .end local v0           #bMenuShow:Z
    :cond_52
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getMenu()Lcom/arcsoft/widget/CustomizedMenu;
    .registers 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x0

    .line 2073
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2076
    const-string v5, "QuickViewActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v5, :cond_2c

    .line 2079
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v5}, Lcom/arcsoft/widget/BounceView;->updateScreenSize()V

    .line 2080
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v5}, Lcom/arcsoft/widget/BounceView;->reset()V

    .line 2083
    :cond_2c
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    if-eqz v5, :cond_52

    .line 2084
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-virtual {v5}, Lcom/arcsoft/widget/DeleteAnimation;->clearDeleteAnimation()V

    .line 2085
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_50

    .line 2086
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2087
    .local v1, childIndex:I
    if-ltz v1, :cond_4e

    .line 2088
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2091
    :cond_4e
    iput-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    .line 2094
    .end local v1           #childIndex:I
    :cond_50
    iput-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    .line 2097
    :cond_52
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 2098
    .local v4, windowManager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2100
    .local v2, display:Landroid/view/Display;
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_d2

    .line 2101
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2102
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_af

    if-eqz v2, :cond_af

    .line 2103
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2104
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2106
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2114
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_79
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v5, :cond_82

    .line 2117
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v5}, Lcom/arcsoft/widget/QuickView;->onResume()V

    .line 2120
    :cond_82
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_98

    .line 2121
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 2122
    .local v0, bShowing:Z
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 2123
    iput-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    .line 2124
    if-eqz v0, :cond_98

    .line 2125
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->showMorePopup()V

    .line 2129
    .end local v0           #bShowing:Z
    :cond_98
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_ae

    .line 2130
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 2131
    .restart local v0       #bShowing:Z
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 2132
    iput-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 2133
    if-eqz v0, :cond_ae

    .line 2134
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->showDelDialog()V

    .line 2137
    .end local v0           #bShowing:Z
    :cond_ae
    return-void

    .line 2108
    .restart local v3       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_af
    const-string v5, "QuickViewActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged : params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " display = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 2111
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_d2
    const-string v5, "QuickViewActivity:"

    const-string v6, "onConfigurationChanged : mMainLayout is null !!!"

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 605
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 607
    :try_start_5
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/arcsoft/android/camera/utils/LogUtils;->VERSION:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_9a

    .line 611
    :goto_16
    sget-object v5, Lcom/arcsoft/android/camera/utils/LogUtils;->LOGTITLE:Ljava/lang/String;

    sput-object v5, Lcom/arcsoft/android/camera/utils/LogUtils;->TAG:Ljava/lang/String;

    .line 613
    const-string v5, "QuickViewActivity:"

    const-string v6, "onCreate<---"

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const v5, 0x7f030005

    invoke-virtual {p0, v5}, Lcom/arcsoft/quickview/QuickViewActivity;->setContentView(I)V

    .line 618
    invoke-virtual {p0, v8}, Lcom/arcsoft/quickview/QuickViewActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "FileExtracted"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 621
    .local v2, fileExtracted:Z
    const/4 v3, 0x0

    .line 623
    .local v3, i:I
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/data/com.arcsoft.quickview/icon/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, dir:Ljava/io/File;
    const-string v5, "QuickViewActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate, dir.exists() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 629
    :cond_5e
    const-string v5, "QuickViewActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate, dir.exists() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_7a
    sget-object v5, Lcom/arcsoft/widget/Constants;->CopyFileNameArray:[[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v5, v5, v8

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 632
    sget-object v5, Lcom/arcsoft/widget/Constants;->CopyFileNameArray:[[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v5, v5, v8

    sget-object v6, Lcom/arcsoft/widget/Constants;->CopyFileNameArray:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v9

    invoke-direct {p0, v5, v6, v8}, Lcom/arcsoft/quickview/QuickViewActivity;->CopyAssetDataFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 633
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 608
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #fileExtracted:Z
    .end local v3           #i:I
    :catch_9a
    move-exception v1

    .line 609
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Version name not found"

    sput-object v5, Lcom/arcsoft/android/camera/utils/LogUtils;->VERSION:Ljava/lang/String;

    goto/16 :goto_16

    .line 636
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #fileExtracted:Z
    .restart local v3       #i:I
    :cond_a1
    invoke-virtual {p0, v8}, Lcom/arcsoft/quickview/QuickViewActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "FileExtracted"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->checkScanning()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 699
    :goto_b8
    return-void

    .line 663
    :cond_b9
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 664
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    .line 666
    const-string v5, "isSNS"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    .line 667
    const-string v5, "QuickView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " intent get issns is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    if-nez v5, :cond_f3

    .line 669
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    .line 672
    :cond_f3
    const-string v5, "fromService"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIfSetTimer:Z

    .line 674
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->resetTimer()V

    .line 676
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;

    invoke-static {v5}, Lcom/arcsoft/widget/JUtils;->isVideoUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 677
    iput-boolean v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    .line 680
    :cond_108
    invoke-static {v8}, Lcom/arcsoft/widget/JUtils;->hasStorage(Z)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 682
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->initMediaList()V

    .line 692
    :goto_111
    sput-object p0, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->mContext:Landroid/content/Context;

    .line 694
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    if-nez v5, :cond_11e

    .line 695
    new-instance v5, Lcom/arcsoft/widget/SystemReceiverMgr;

    invoke-direct {v5, p0}, Lcom/arcsoft/widget/SystemReceiverMgr;-><init>(Lcom/arcsoft/widget/IBase;)V

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    .line 696
    :cond_11e
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    const/16 v6, 0x8

    invoke-virtual {v5, p0, v6}, Lcom/arcsoft/widget/SystemReceiverMgr;->registerReceiver(Landroid/content/Context;I)V

    .line 698
    const-string v5, "QuickViewActivity:"

    const-string v6, "onCreate--->"

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 684
    :cond_12d
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    if-nez v5, :cond_138

    .line 685
    new-instance v5, Lcom/arcsoft/widget/ToastMgr;

    invoke-direct {v5}, Lcom/arcsoft/widget/ToastMgr;-><init>()V

    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    .line 686
    :cond_138
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    const v6, 0x7f040012

    invoke-virtual {v5, p0, v6, v9, v9}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;IIZ)V

    .line 687
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto :goto_111
.end method

.method public onDefaultDesti()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v5, "PREFS_COUNT"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, defaultDestCount:I
    if-nez v2, :cond_2c

    .line 192
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    .end local v3           #intent:Landroid/content/Intent;
    :goto_2b
    return-void

    .line 196
    :cond_2c
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 197
    .local v4, items:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    new-instance v5, Lcom/arcsoft/quickview/QuickViewActivity$1;

    invoke-direct {v5, p0}, Lcom/arcsoft/quickview/QuickViewActivity$1;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2b
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 703
    const-string v0, "QuickViewActivity:"

    const-string v1, "onDestroy<---"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mThumbKicker:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    .line 706
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    if-eqz v0, :cond_16

    .line 707
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/arcsoft/widget/SystemReceiverMgr;->unregisterReceiver(Landroid/content/Context;I)V

    .line 708
    :cond_16
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v0, :cond_1f

    .line 709
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v0}, Lcom/arcsoft/widget/QuickView;->unInit()V

    .line 710
    :cond_1f
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-eqz v0, :cond_2b

    .line 711
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0}, Lcom/arcsoft/widget/CustomizedMenu;->unregisterListener()V

    .line 712
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->removeOptionsMenu()V

    .line 714
    :cond_2b
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->unInitMediaList()V

    .line 715
    invoke-virtual {p0, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_focus_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 717
    const-string v0, "QuickViewActivity:"

    const-string v1, "onDestroy--->"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public onGetCurretIndex(I)I
    .registers 3
    .parameter "UserData"

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v0

    return v0
.end method

.method public onGetFileCount(I)I
    .registers 3
    .parameter "UserData"

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->getCount()I

    move-result v0

    return v0
.end method

.method public onGetFileName(II[B)I
    .registers 8
    .parameter "index"
    .parameter "UserData"
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 1951
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3, p1}, Lcom/arcsoft/quickview/MediaList;->getPath(I)Ljava/lang/String;

    move-result-object v1

    .line 1953
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 1954
    const/4 v2, -0x1

    .line 1959
    :goto_a
    return v2

    .line 1956
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1957
    .local v0, bytes:[B
    array-length v3, v0

    invoke-static {v0, v2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public onGetFileType(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v0, p1}, Lcom/arcsoft/quickview/MediaList;->getType(I)I

    move-result v0

    return v0
.end method

.method public onGetThumbCallback(II)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "index"
    .parameter "UserData"

    .prologue
    .line 1964
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1965
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3, p1}, Lcom/arcsoft/quickview/MediaList;->getID(I)J

    move-result-wide v1

    .line 1967
    .local v1, origId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 1968
    const/4 v3, 0x0

    .line 1970
    :goto_11
    return-object v3

    :cond_12
    invoke-static {v0, v1, v2}, Lcom/arcsoft/widget/JUtils;->getThumbnail(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_11
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, res:Z
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsChangingOrientation:Z

    if-nez v2, :cond_11

    .line 970
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v2, p1, v3}, Lcom/arcsoft/widget/QuickView;->processKeyEvent(II)Z

    move-result v0

    .line 971
    :cond_11
    if-ne v0, v1, :cond_14

    .line 1000
    :goto_13
    return v1

    .line 974
    :cond_14
    packed-switch p1, :pswitch_data_26

    .line 1000
    :goto_17
    :pswitch_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_13

    .line 984
    :pswitch_1c
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    .line 992
    iput-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 993
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->setResult(I)V

    goto :goto_17

    .line 974
    nop

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1005
    packed-switch p1, :pswitch_data_2a

    .line 1033
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1007
    :pswitch_9
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0}, Lcom/arcsoft/widget/CustomizedMenu;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1009
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    goto :goto_4

    .line 1011
    :cond_1b
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v0, :cond_24

    .line 1012
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v0}, Lcom/arcsoft/widget/QuickView;->hideThumbnail()V

    .line 1013
    :cond_24
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/CustomizedMenu;->showMenu(Z)V

    goto :goto_4

    .line 1005
    :pswitch_data_2a
    .packed-switch 0x52
        :pswitch_9
    .end packed-switch
.end method

.method public onNotify(ILjava/lang/Object;)I
    .registers 11
    .parameter "key"
    .parameter "obj"

    .prologue
    const/16 v7, 0x87

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1764
    sparse-switch p1, :sswitch_data_160

    .line 1936
    .end local p2
    :cond_a
    :goto_a
    :sswitch_a
    return v4

    .line 1767
    .restart local p2
    :sswitch_b
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6a

    move v2, v3

    :goto_14
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsDragging:Z

    .line 1768
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v2

    if-nez v2, :cond_6c

    move v2, v3

    :goto_1f
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    .line 1769
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v2, :cond_2c

    .line 1770
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    iget-boolean v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    invoke-virtual {v2, v5}, Lcom/arcsoft/widget/QuickView;->setViewingType(Z)V

    .line 1771
    :cond_2c
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsDragging:Z

    if-nez v2, :cond_6e

    .line 1773
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsChangingOrientation:Z

    if-nez v2, :cond_62

    .line 1776
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v2, :cond_3b

    .line 1777
    invoke-direct {p0, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V

    .line 1780
    :cond_3b
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1781
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    if-eqz v2, :cond_50

    .line 1782
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-virtual {v2}, Lcom/arcsoft/widget/DeleteAnimation;->clearDeleteAnimation()V

    .line 1785
    :cond_50
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    if-eqz v2, :cond_5d

    .line 1786
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1787
    iput-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    .line 1790
    :cond_5d
    iput-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    .line 1791
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->prepareDeleteAnimation()V

    .line 1795
    :cond_62
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    :cond_6a
    move v2, v4

    .line 1767
    goto :goto_14

    :cond_6c
    move v2, v4

    .line 1768
    goto :goto_1f

    .line 1800
    :cond_6e
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v2, :cond_75

    .line 1801
    invoke-direct {p0, v4}, Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V

    .line 1803
    :cond_75
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    if-eqz v2, :cond_a

    .line 1804
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-virtual {v2}, Lcom/arcsoft/widget/DeleteAnimation;->clearDeleteAnimation()V

    .line 1805
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    if-eqz v2, :cond_8b

    .line 1806
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1807
    iput-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    .line 1810
    :cond_8b
    iput-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    goto/16 :goto_a

    .line 1817
    .restart local p2
    :sswitch_8f
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/arcsoft/quickview/MediaList;->setCurrent(I)V

    .line 1818
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v2

    if-nez v2, :cond_c8

    move v2, v3

    :goto_a3
    iput-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    .line 1819
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v2, :cond_b0

    .line 1820
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    iget-boolean v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    invoke-virtual {v2, v5}, Lcom/arcsoft/widget/QuickView;->setViewingType(Z)V

    .line 1821
    :cond_b0
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v5}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/arcsoft/widget/CustomizedMenu;->changeMenuType(Z)V

    .line 1829
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 1830
    invoke-direct {p0, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V

    goto/16 :goto_a

    :cond_c8
    move v2, v4

    .line 1818
    goto :goto_a3

    .line 1832
    :cond_ca
    invoke-direct {p0, v4}, Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V

    goto/16 :goto_a

    .line 1837
    .restart local p2
    :sswitch_cf
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v2}, Lcom/arcsoft/widget/CustomizedMenu;->isMenuShown()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1838
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v2}, Lcom/arcsoft/widget/QuickView;->hideThumbnail()V

    goto/16 :goto_a

    .line 1847
    :sswitch_e2
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoRotateLocked:Z

    if-nez v2, :cond_a

    .line 1850
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1851
    .local v1, orientation:I
    const/4 v0, -0x1

    .line 1853
    .local v0, degree:I
    if-lt v1, v5, :cond_104

    if-ge v1, v7, :cond_104

    .line 1854
    const/16 v0, 0xb4

    .line 1862
    :cond_f7
    :goto_f7
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mCurrentOrientation:I

    if-eq v0, v2, :cond_a

    goto/16 :goto_a

    .line 1855
    :cond_104
    if-lt v1, v7, :cond_10d

    const/16 v2, 0xe1

    if-ge v1, v2, :cond_10d

    .line 1856
    const/16 v0, 0x5a

    goto :goto_f7

    .line 1857
    :cond_10d
    const/16 v2, 0xe1

    if-lt v1, v2, :cond_117

    const/16 v2, 0x13b

    if-ge v1, v2, :cond_117

    .line 1858
    const/4 v0, 0x0

    goto :goto_f7

    .line 1859
    :cond_117
    const/16 v2, 0x13b

    if-ge v1, v2, :cond_11f

    if-ltz v1, :cond_f7

    if-ge v1, v5, :cond_f7

    .line 1860
    :cond_11f
    const/16 v0, 0x10e

    goto :goto_f7

    .line 1902
    .end local v0           #degree:I
    .end local v1           #orientation:I
    .restart local p2
    :sswitch_122
    const-string v2, "QuickViewActivity:"

    const-string v5, "SDcard Mounted"

    invoke-static {v2, v5}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 1904
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    .line 1905
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_a

    .line 1910
    :sswitch_133
    const-string v2, "QuickViewActivity:"

    const-string v5, "SDcard Unmounted"

    invoke-static {v2, v5}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 1912
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 1913
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto/16 :goto_a

    .line 1918
    :sswitch_144
    const-string v2, "QuickViewActivity:"

    const-string v3, "SCANNER_FINISHED"

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->initMediaList()V

    goto/16 :goto_a

    .line 1924
    :sswitch_150
    const-string v2, "QuickViewActivity:"

    const-string v5, "DATABASE_CHANGED"

    invoke-static {v2, v5}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    if-eqz v2, :cond_a

    .line 1929
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDataChanged:Z

    goto/16 :goto_a

    .line 1764
    nop

    :sswitch_data_160
    .sparse-switch
        0x11 -> :sswitch_122
        0x14 -> :sswitch_133
        0x15 -> :sswitch_144
        0x16 -> :sswitch_150
        0x22 -> :sswitch_b
        0x24 -> :sswitch_8f
        0x26 -> :sswitch_cf
        0x30 -> :sswitch_a
        0x31 -> :sswitch_e2
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 870
    const-string v1, "QuickViewActivity:"

    const-string v2, "onPause<---"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 874
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 876
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 880
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mThumbKicker:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->stopKickThumbSuspend()V

    .line 886
    iget-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoBrigtnessFlag:Z

    if-ne v1, v4, :cond_29

    .line 887
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 892
    :cond_29
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 893
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->myAlertDialog:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->dismiss()V

    .line 895
    :cond_3a
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    if-eqz v1, :cond_60

    .line 896
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-virtual {v1}, Lcom/arcsoft/widget/DeleteAnimation;->clearDeleteAnimation()V

    .line 897
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5e

    .line 898
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 899
    .local v0, childIndex:I
    if-ltz v0, :cond_5c

    .line 900
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 903
    :cond_5c
    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;

    .line 906
    .end local v0           #childIndex:I
    :cond_5e
    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;

    .line 909
    :cond_60
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6b

    .line 910
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 911
    iput-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 914
    :cond_6b
    iput-boolean v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoBrigtnessFlag:Z

    .line 918
    iget-boolean v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    if-nez v1, :cond_78

    .line 919
    const-string v1, "QuickViewActivity:"

    const-string v2, "mReturntoCamera false!"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_78
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    if-eqz v1, :cond_82

    .line 932
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/arcsoft/widget/SystemReceiverMgr;->unregisterReceiver(Landroid/content/Context;I)V

    .line 934
    :cond_82
    iput-boolean v4, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    .line 936
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v1, :cond_8d

    .line 937
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/MediaList;->pause()Z

    .line 940
    :cond_8d
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v1, :cond_96

    .line 941
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/QuickView;->onPause()V

    .line 945
    :cond_96
    invoke-virtual {p0, v3, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->overridePendingTransition(II)V

    .line 947
    const-string v1, "QuickViewActivity:"

    const-string v2, "onPause--->"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public onRemoveDesti()V
    .registers 5

    .prologue
    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, builder2:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$2;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/QuickViewActivity$2;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$4;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/QuickViewActivity$4;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/arcsoft/quickview/QuickViewActivity$3;

    invoke-direct {v3, p0}, Lcom/arcsoft/quickview/QuickViewActivity$3;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 264
    return-void
.end method

.method protected onResume()V
    .registers 15

    .prologue
    const v13, 0x3c23d70a

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 724
    const-string v8, "QuickViewActivity:"

    const-string v9, "onResume<---"

    invoke-static {v8, v9}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iput-boolean v11, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    .line 726
    iput-boolean v11, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z

    .line 727
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 729
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mThumbKicker:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    invoke-virtual {v8}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->suspendThumbWork()V

    .line 731
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v8, :cond_21

    .line 732
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v8}, Lcom/arcsoft/widget/QuickView;->onResume()V

    .line 737
    :cond_21
    iput-boolean v11, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 744
    :try_start_23
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_brightness_mode"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutomatic:I
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_23 .. :try_end_33} :catch_6f

    .line 751
    :goto_33
    iget v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutomatic:I

    if-ne v8, v12, :cond_78

    .line 752
    const-string v8, "QuickViewActivity:"

    const-string v9, "AUTOBRIGHTNESS = true"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput-boolean v12, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mAutoBrigtnessFlag:Z

    .line 822
    :goto_40
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mSystemReceiveMgr:Lcom/arcsoft/widget/SystemReceiverMgr;

    const/4 v9, 0x2

    invoke-virtual {v8, p0, v9}, Lcom/arcsoft/widget/SystemReceiverMgr;->registerReceiver(Landroid/content/Context;I)V

    .line 824
    iget-boolean v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    if-eqz v8, :cond_66

    invoke-static {v11}, Lcom/arcsoft/widget/JUtils;->hasStorage(Z)Z

    move-result v8

    if-nez v8, :cond_66

    .line 825
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    if-nez v8, :cond_5b

    .line 826
    new-instance v8, Lcom/arcsoft/widget/ToastMgr;

    invoke-direct {v8}, Lcom/arcsoft/widget/ToastMgr;-><init>()V

    iput-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    .line 827
    :cond_5b
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;

    const v9, 0x7f040012

    invoke-virtual {v8, p0, v9, v12, v12}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;IIZ)V

    .line 828
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    .line 831
    :cond_66
    iput-boolean v11, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z

    .line 836
    invoke-direct {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->checkScanning()Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 866
    :goto_6e
    return-void

    .line 747
    :catch_6f
    move-exception v2

    .line 748
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "QuickViewActivity:"

    const-string v9, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 776
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_78
    const-string v8, "QuickViewActivity:"

    const-string v9, "AUTOBRIGHTNESS = false"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v4, 0x0

    .line 779
    .local v4, mBrightnessValue:I
    const/16 v5, 0xff

    .line 780
    .local v5, mMaxBrightnessValue:I
    const/16 v6, 0x14

    .line 781
    .local v6, mSumValue:I
    const/4 v0, 0x0

    .line 784
    .local v0, bAutoBrightness:Z
    :try_start_85
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_brightness"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 787
    const-string v8, "QuickViewActivity:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VALUES = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_85 .. :try_end_ab} :catch_e6

    .line 792
    :goto_ab
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 793
    .local v7, win:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 801
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_ef

    .line 802
    const/high16 v8, -0x4080

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 813
    :goto_b9
    const-string v8, "QuickViewActivity:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bAutoBrightness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "VALUES = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit8 v10, v4, 0x64

    div-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_40

    .line 788
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #win:Landroid/view/Window;
    :catch_e6
    move-exception v2

    .line 789
    .restart local v2       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "QuickViewActivity:"

    const-string v9, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    .line 804
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v7       #win:Landroid/view/Window;
    :cond_ef
    add-int/2addr v4, v6

    .line 806
    if-lt v4, v5, :cond_f3

    .line 807
    move v4, v5

    .line 810
    :cond_f3
    mul-int/lit8 v8, v4, 0x64

    div-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, v13

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_b9

    .line 840
    .end local v0           #bAutoBrightness:Z
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #mBrightnessValue:I
    .end local v5           #mMaxBrightnessValue:I
    .end local v6           #mSumValue:I
    .end local v7           #win:Landroid/view/Window;
    :cond_fc
    iget-boolean v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDataChanged:Z

    if-eqz v8, :cond_13e

    .line 841
    const-string v8, "QuickViewActivity:"

    const-string v9, "Refresh medialist"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v8, :cond_110

    .line 843
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v8, v12}, Lcom/arcsoft/quickview/MediaList;->refresh(Z)Z

    .line 845
    :cond_110
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-eqz v8, :cond_119

    .line 846
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v8, v11}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    .line 847
    :cond_119
    iput-boolean v11, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mDataChanged:Z

    .line 854
    :cond_11b
    :goto_11b
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v8, :cond_12e

    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v8, :cond_12e

    .line 855
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v8}, Lcom/arcsoft/quickview/MediaList;->isDataReady()Z

    move-result v1

    .line 856
    .local v1, bDataReady:Z
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v8, v1}, Lcom/arcsoft/widget/QuickView;->setDataReady(Z)V

    .line 860
    .end local v1           #bDataReady:Z
    :cond_12e
    invoke-static {v12}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 863
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 865
    const-string v8, "QuickViewActivity:"

    const-string v9, "onResume--->"

    invoke-static {v8, v9}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 849
    :cond_13e
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    if-eqz v8, :cond_11b

    .line 850
    iget-object v8, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v8}, Lcom/arcsoft/quickview/MediaList;->resume()Z

    goto :goto_11b
.end method

.method public onSendTo()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "PREFS_COUNT"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, defaultDestCount:I
    if-eqz v1, :cond_22

    .line 271
    const-string v5, "PREFS_RESULT"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, defaultDestCountResult:Ljava/lang/String;
    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v5}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v5

    iget-boolean v6, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v6, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    invoke-static {v2, v5, p0, v4}, Lcom/arcsoft/quickview/QuickViewActivity;->sendMmsIntent(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Z)I

    .line 282
    .end local v2           #defaultDestCountResult:Ljava/lang/String;
    :goto_21
    return-void

    .line 273
    :cond_22
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "title"

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method public onSendToOnlineLocker()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v1

    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->sendMmsIntent(Landroid/net/Uri;Landroid/content/Context;Z)I

    .line 179
    return-void

    .line 177
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z

    if-eqz v0, :cond_6

    .line 955
    const/4 v0, 0x0

    .line 963
    :goto_5
    return v0

    .line 958
    :cond_6
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsChangingOrientation:Z

    if-nez v0, :cond_13

    .line 959
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/QuickView;->processTouchEvent(Landroid/view/MotionEvent;)Z

    .line 961
    :cond_13
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->resetTimer()V

    .line 963
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public removeOptionsMenu()V
    .registers 3

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    if-nez v0, :cond_9

    .line 1221
    :cond_8
    :goto_8
    return-void

    .line 1217
    :cond_9
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1218
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;

    goto :goto_8
.end method

.method public resetSetDefaultDestSharedPrefs(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "PREFS_COUNT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    const-string v1, "PREFS_RESULT"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    const-string v1, "PREFS_SINGLE"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    return-void
.end method

.method public resetTimer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 597
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIfSetTimer:Z

    if-eqz v0, :cond_11

    .line 598
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 601
    :cond_11
    return-void
.end method

.method public showMorePopup()V
    .registers 8

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 495
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 496
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 497
    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 499
    const v0, 0x7f020025

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 500
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 502
    new-instance v6, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;

    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z

    invoke-direct {v6, p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;-><init>(Landroid/content/Context;Z)V

    .line 503
    .local v6, adpater:Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3b

    .line 506
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    .line 510
    :cond_3b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    .line 511
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$5;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$5;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 536
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$6;

    invoke-direct {v2, p0}, Lcom/arcsoft/quickview/QuickViewActivity$6;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 546
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 548
    return-void
.end method

.method public showSetAsDialog()V
    .registers 5

    .prologue
    .line 1388
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v2, "mimeType"

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1393
    const v2, 0x7f04000d

    :try_start_24
    invoke-virtual {p0, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 1397
    :goto_2f
    return-void

    .line 1394
    :catch_30
    move-exception v0

    .line 1395
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2f
.end method
